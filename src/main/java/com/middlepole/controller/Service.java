package com.middlepole.controller;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.http.HttpOutputMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.supercsv.io.CsvBeanWriter;
import org.supercsv.io.ICsvBeanWriter;
import org.supercsv.prefs.CsvPreference;

import com.middlepole.model.CsvClass;
import com.middlepole.model.ResponseObject;
import com.opencsv.CSVParser;
import com.opencsv.CSVWriter;


@Controller
@RequestMapping("/service")
public class Service {

	 private static final long serialVersionUID = 2857847752169838915L;
	 int BUFFER_LENGTH = 4096;
	/*
	@RequestMapping(value = "/getFullData2.html", method = RequestMethod.GET, consumes = "text/csv")
	@ResponseBody // indicate to use a compatible HttpMessageConverter
	public CsvResponse getFullData(HttpSession session) throws IOException {
      List<CompositeRequirement> allRecords = compReqServ.getFullDataSet((String) session.getAttribute("currentProject"));
      return new CsvResponse(allRecords, "yourData.csv");
}
	 * */
	
	 @RequestMapping(method = RequestMethod.POST, value="/doGet")
	 @ResponseBody
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	        String filePath = request.getRequestURI();

	        File file = new File(System.getenv("OPENSHIFT_DATA_DIR") + filePath.replace("/uploads/",""));
	        InputStream input = new FileInputStream(file);

	        response.setContentLength((int) file.length());
	        response.setContentType(new MimetypesFileTypeMap().getContentType(file));

	        OutputStream output = response.getOutputStream();
	        byte[] bytes = new byte[BUFFER_LENGTH];
	        int read = 0;
	        while ((read = input.read(bytes, 0, BUFFER_LENGTH)) != -1) {
	            output.write(bytes, 0, read);
	            output.flush();
	        }

	        input.close();
	        output.close();
	    }



	/**
	 * G is working good but could not find a way to save file on openshift server
	 * 
	 * */
	@RequestMapping(method = RequestMethod.POST, value="/convertTextToCsvFileG", produces = "application/json" )
	@ResponseBody
	public ResponseObject convertTextToCsvFileG(@RequestParam("textfile") MultipartFile file, HttpServletResponse response, HttpServletRequest request ) {
		
		 ResponseObject responseObject = new ResponseObject();
		 String fileName = "";
		try {
			
			file.transferTo(new File(file.getOriginalFilename()));
			
			byte[] bytes = file.getBytes();
            String completeData = new String(bytes);
            
            //f
            String uploadsDir = "/uploads/";
            String realPathtoUploads = System.getenv("OPENSHIFT_DATA_DIR");
            System.out.println("dddddddeeeee");
            System.out.println("System.getenv(\"OPENSHIFT_DATA_DIR\")" + System.getenv("OPENSHIFT_DATA_DIR"));
           // String realPathtoUploads =  request.getServletContext().getRealPath(uploadsDir);
            if(! new File(realPathtoUploads).exists())
            {
                new File(realPathtoUploads).mkdir();
            }
			  //f
            
            List<String[]> result = new ArrayList<>();
			String[] rows = completeData.split("\n");
			
			
			for(int i = 0; i < rows.length; i++) {
				CsvClass model = new CsvClass();
				String[] columns = rows[i].replaceAll("[\\r\\n|\\r|\\n|\\t]", ",").split(",");
				columns[2] = columns[2].replace("$", "");
				result.add(columns);
			}
			
			       Date today = new Date();
			        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			        SimpleDateFormat csvDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		
                    String filePath = realPathtoUploads  + "report.csv";
                    File dest = new File(filePath);
                    
                    CSVWriter writer = new CSVWriter(new FileWriter(dest), ',', CSVWriter.NO_QUOTE_CHARACTER);
                   
                    writer.writeAll(result, true);
                    writer.close();
                    responseObject.setDescription(filePath);
                    
			        } catch (IOException e) {
			            System.out.println("failed to generate CSV file : " + e.getMessage());
			        }
		
		
		
		return responseObject;
	}
	
	
	
	//consumes="multipart/form-data", consumes="text/plain", HttpOutputMessage output ,  produces = "multipart/form-data" 
		@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST }, value="/download" )
		@ResponseBody
		public ResponseObject download(HttpServletResponse response, HttpServletRequest request ) {
			
			 ResponseObject responseObject = new ResponseObject();
			 String fileName = "";
			try {
				
				String uploadsDir = "/uploads/";
	            String realPathtoUploads =  request.getServletContext().getRealPath(uploadsDir);
	           
				            
				            //text/csv
				            response.setContentType("application/download");
				   //         response.setHeader("Content-Disposition", attch);
				             
				        //start to write CSV File as response
				            ServletOutputStream os = null;
				            OutputStream buffOs = null;
				            OutputStreamWriter osWriter = null;
				            CSVWriter csvWriter = null;
				            try { 
				            	 os = response.getOutputStream();
				                 buffOs = new BufferedOutputStream(os); 
				                 osWriter = new OutputStreamWriter(buffOs);
				                 csvWriter = new CSVWriter(osWriter,'\t');
				             //   csvWriter.writeAll(csvDatas, false);
				                
				                
				             
				        } catch (IOException e) {
				            System.out.println("failed to generate CSV file : " + e.getMessage());
				        }finally {
				        	
				        	
				        	    os.flush();
				                os.close();
				               
				                /*  buffOs.flush();
				                buffOs.close();
				                csvWriter.close(); 
				                osWriter.flush();  
				                osWriter.close();*/
				              
				        }
				       
				       
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			responseObject.setDescription(fileName);
			
			return responseObject;
		}
		
	

	//consumes="multipart/form-data", consumes="text/plain", HttpOutputMessage output ,  produces = "multipart/form-data" 
	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST }, value="/downloadd" )
	@ResponseBody
	public ResponseObject downloadd(HttpServletResponse response, HttpServletRequest request ) {
		
		 ResponseObject responseObject = new ResponseObject();
			            
			            //text/csv
			            response.setContentType("application/download");
			   //         response.setHeader("Content-Disposition", attch);
			             
			        //start to write CSV File as response
			            ServletOutputStream os = null;
			            	os = (ServletOutputStream) request.getSession().getAttribute("report"); 
			            
		
		responseObject.setDescription("");
		
		return responseObject;
	}
	
	
	
	
	
	//consumes="multipart/form-data", consumes="text/plain", HttpOutputMessage output ,  produces = "multipart/form-data" 
	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST }, value="/convertTextToCsvFile", produces = "application/json" )
	@ResponseBody
	public ResponseObject convertTextToCsvFile(@RequestParam("textfile") MultipartFile file, HttpServletResponse response ) {
		
		 ResponseObject responseObject = new ResponseObject();
		 String fileName = "";
		try {
			
			file.transferTo(new File(file.getOriginalFilename()));
			
			byte[] bytes = file.getBytes();
            String completeData = new String(bytes);

			       
			String[] rows = completeData.split("\t");
			       
			       Date today = new Date();
			        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			        SimpleDateFormat csvDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			         
			        
			            List<String[]> csvDatas = new ArrayList();
			             
			            csvDatas.add(rows);
			            //sdf.format(today) +
			            String attch = "attachment; filename=\"" + "report"+  ".csv\"";
			            
			            fileName = "report"+ sdf.format(today) + ".csv";
			            
			            //text/csv
			            response.setContentType("application/download");
			            response.setHeader("Content-Disposition", attch);
			             
			        //start to write CSV File as response
			            ServletOutputStream os = null;
			            OutputStream buffOs = null;
			            OutputStreamWriter osWriter = null;
			            CSVWriter csvWriter = null;
			            try { 
			            	 os = response.getOutputStream();
			                 buffOs = new BufferedOutputStream(os); 
			                 osWriter = new OutputStreamWriter(buffOs);
			                 csvWriter = new CSVWriter(osWriter,'\t');
			                csvWriter.writeAll(csvDatas, false);
			                
			                
			             
			        } catch (IOException e) {
			            System.out.println("failed to generate CSV file : " + e.getMessage());
			        }finally {
			        	
			        	
			        	    os.flush();
			                os.close();
			               
			                /*  buffOs.flush();
			                buffOs.close();
			                csvWriter.close(); 
			                osWriter.flush();  
			                osWriter.close();*/
			              
			        }
			       
			       
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		responseObject.setDescription(fileName);
		
		return responseObject;
	    
		
		
        
        
        
        /*
		CsvWriter csvWriter = new CsvWriter(new FileWriter("yourfile.csv"), '\t');
		
		csvWriter.write(completeData);
		
		csvWriter.close();
		*/
        
        //String[] rows = completeData.split("#");
        //String[] columns = rows[0].split(",");
        //ServletOutputStream out = null;
        //out = response.getOutputStream();
		//response.setContentType("text/csv");
		//response.setHeader("Content-Disposition", "attachment; filename=yourfile.csv");
		//ServletOutputStream out = response.getOutputStream();
        
		 //     out.getHeaders().set("Content-Disposition", "attachment; filename=\"" + file.getName() + "\"");
		  //     OutputStream out = output.getBody();
		      // CSVWriter writer = new CSVWriter(new OutputStreamWriter(response), '\u0009');
		/*	CSVWriter writer = new CSVWriter(new FileWriter("yourfile.csv"), '\t');
		       String[] rows = completeData.split("\t");
		       writer.writeNext(rows);
		       writer.close();
		       response.getOutputStream().print(completeData); */
		     //  OutputStream outputStream = null;
			//new ObjectOutputStream(outputStream).writeObject(writer);
		
		       /*
			ByteArrayOutputStream buffer = new ByteArrayOutputStream();

			ObjectOutputStream oos = new ObjectOutputStream(buffer);

			oos.writeObject(writer);

			oos.close();

			byte[] rawData = buffer.toByteArray();
		    */
			//response.getOutputStream().write(rawData);
		
		//out.write(b);
		       
		       
	    
	}
	
	
	
}//end of class

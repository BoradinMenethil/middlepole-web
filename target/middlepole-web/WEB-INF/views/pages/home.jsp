<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<header>
<h1>Text to CSV without $ sign</h1>
</header>
<!-- action='middlepole-web/service/doGet' 

<form:form action="${pageContext.request.contextPath}/middlepole-web/service/doGet"  method='POST' id='formid'>
                <form:input type='hidden' value='' name='name' id='id' path="username"/>
                <form:input type='hidden' value=' ' name='name'  id='id' path="username" />
            </form:form>  -->

<section class="content">
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">
				Upload text file
			</h3>
			<div class="box-tools pull-right">
				<button type="button" data-widget="collapse">
					<i class="fa fa-minus"></i>
				</button>
			</div>
		</div>
		<div class="box-body">
			<div class="col-md-12"> 
				<div class="col-md-2">
					<label class="input-group-btn">
						<span class="btn btn-success"><input id="txtUpload" class="input" type="file" multiple="" />
						</span>
					</label>
				
				</div>
				<div class="col-md-6 text-left">
					<button id="uploadd" type="button" class="btn btn-primary start">
						Convert
					</button>
				
				
				</div>
				
				
				
			</div>
		
		
		</div>
		
		
	</div>
</section>

<script type="text/javascript">

$(function(){
	
	$('#upload').on('click', function(e){
	//e.preventDefault();
	var $this = $(this);
	$this.button('loading');
	var file_data = $("#txtUpload").prop("files")[0];
	var form_data = new FormData();
	form_data.append("textfile", file_data);
	window.location;
	$.ajax({
		url: "${pageContext.request.contextPath}/service/convertTextToCsvFile",
		dataType: 'script',
		cache: false,
		contentType: false,
		processData: false,
		data: form_data,
		type: 'post',
		dataType: 'json',
		error: function(data){
			alert(data);
			window.location;
			console.table(data);
			$("#upload").button("reset");
			
		},
		success: function(data){
			recordCount = jsonData.recordsTotal;
			$("#upload").button("reset");
			console.table(data);
			
			window.location;
		}
		
	});
	
	});
	
	
	$('#uploadd').on('click', function(e){
		//e.preventDefault();
		var $this = $(this);
		$this.button('loading');
		var file_data = $("#txtUpload").prop("files")[0];
		var form_data = new FormData();
		form_data.append("textfile", file_data);
		window.location;
		$.ajax({
			url: "${pageContext.request.contextPath}/service/convertTextToCsvFileG",
			dataType: 'script',
			cache: false,
			contentType: false,
			processData: false,
			data: form_data,
			type: 'post',
			dataType: 'json',
			error: function(data){
				console.table(data);
				$("#upload").button("reset");
				
			},
			success: function(data){
				$("#upload").button("reset");
					
				console.table(data);
				
				$('#formid').submit();
				
				/*
				$.ajax({
					url: "${pageContext.request.contextPath}/service/doGet",
					dataType: 'text/csv',
					cache: false,
					contentType: false,
					processData: false,
					type: 'get'
				});
				*/
				
				//doGet("${pageContext.request.contextPath}/service/doGet");
				//download(data.description);
				//window.location.href = data.description;
				//window.open(data.description);
				/*
				var a = document.createElement('a');
	            var binaryData = [];
	            binaryData.push(data.description);
	           // var url = window.URL.createObjectURL(new Blob(binaryData, {type: "text/csv"}));
	            a.href = window.URL.createObjectURL(new Blob(binaryData, {type: "text/csv"}));;
	            a.download = 'report.csv';
	            a.click();
	            */
	            
	           // window.URL.revokeObjectURL(url);
			}
			
		});
		
		});
	
	function doGet(data) {
		

		// Construct the <a> element
		var link = document.createElement("a");
		//link.download = 'report.csv';
		link.href = data;

		document.body.appendChild(link);
		link.click();

		// Cleanup the DOM
		document.body.removeChild(link);
		delete link;
		
	}
	
	function download(data) {
		

		// Construct the <a> element
		var link = document.createElement("a");
		link.download = 'report.csv';
		link.href = data;

		document.body.appendChild(link);
		link.click();

		// Cleanup the DOM
		document.body.removeChild(link);
		delete link;
		
	}
	
	
	
});



</script>
</body>
</html>
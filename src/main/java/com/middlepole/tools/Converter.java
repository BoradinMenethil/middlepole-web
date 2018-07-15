package com.middlepole.tools;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;

public class Converter {
	
	
	
	public  byte[] convertSerializableObjectToByteArray(Object obj) throws Exception {
	
	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    ObjectOutput oust = null;
    try {
    	oust = new ObjectOutputStream(bos);   
    	oust.writeObject(obj);
    	oust.flush();
      byte[] yourBytes  = bos.toByteArray();
      
      return yourBytes;
      
    } finally {
      try {
        bos.close();
      } catch (IOException ex) {
        // ignore close exception
      }
    }
	
	}
	

}

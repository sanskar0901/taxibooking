package com.formTest.SubmitForm.dao;

import java.io.FileInputStream;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Service;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

@Service  
public class FBInitialize 
{  
	@PostConstruct  
	public void initialize() 
	{  
		try 
		{  
			FileInputStream serviceAccount =  new FileInputStream("C:\\Users\\Dell\\Documents\\workspace-spring-tool-suite-4-4.8.0.RELEASE\\SubmitForm\\src\\main\\java\\com\\formTest\\SubmitForm\\dao\\serviceaccount.json"); 
			
			FirebaseOptions options = new FirebaseOptions.Builder()  
			.setCredentials(GoogleCredentials.fromStream(serviceAccount))  
			.setDatabaseUrl("https://fir-8a65a.firebaseio.com")  
			.build();  
			FirebaseApp.initializeApp(options);  
			
			
		} 
		catch (Exception e) 
		{  
			e.printStackTrace();  
		}
	}
}  
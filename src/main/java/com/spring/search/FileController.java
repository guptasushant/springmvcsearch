package com.spring.search;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileController {
	@RequestMapping("/user/{id}/{name}")
	public String getUserDetail(@PathVariable("id") String id,@PathVariable("name")String name) {
		System.out.println(id);
		System.out.println(name);
		return "filesuccess";
	}

	@RequestMapping("/fileform")
	public String showFileform() 
	{
	System.out.println("opening the file form");	
		return "fileform";
	}

	@RequestMapping(value = "/uploadimage", method = RequestMethod.POST)
	public String fileUpload(@RequestParam("profile") CommonsMultipartFile file, HttpSession session) {
		System.out.println("file uploader handler");
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getStorageDescription());
		byte[] bytes = file.getBytes();
		// we have to save this file to server
		String path = session.getServletContext().getRealPath("/") +"WEB-INF"+File.separator+"resources"+File.separator+"image"+File.separator+ file.getOriginalFilename();
		System.out.println(path);
		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(bytes);
			fos.close();
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
			System.err.println("============uploading error !================");
		}
		return "filesuccess";
	}
}

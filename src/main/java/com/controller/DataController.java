package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.Data;
import com.dao.DataDao;

@WebServlet("/DataController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, maxFileSize = 1024 * 1024 * 512, maxRequestSize = 1024 * 1024 * 512) // 512MB
public class DataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String extractfilename(Part file) {
	    String cd = file.getHeader("content-disposition");
	    System.out.println(cd);
	    String[] items = cd.split(";");
	    for (String string : items) {
	        if (string.trim().startsWith("filename")) {
	            return string.substring(string.indexOf("=") + 2, string.length()-1);
	        }
	    }
	    return "";
	}
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       		
       		String action=request.getParameter("action");
    		if(action.equalsIgnoreCase("submit"))
    		{
    			String savePath = "C:\\Users\\Raj Ghodasara\\eclipse-workspace\\SSIP\\WebContent\\birth_images\\";
    			File fileSaveDir=new File(savePath);
    	        if(!fileSaveDir.exists()){
    	            fileSaveDir.mkdir();
    	        }
    	        Part file1 = request.getPart("birth_certi");
    		 	String fileName=extractfilename(file1);
    		    file1.write(savePath + File.separator + fileName);
    		    String filePath= savePath + File.separator + fileName ;
    		    
    		    String savePath2 = "C:\\Users\\Raj Ghodasara\\eclipse-workspace\\SSIP\\WebContent\\birth_images\\";
    	        File imgSaveDir=new File(savePath2);
    	        if(!imgSaveDir.exists()){
    	            imgSaveDir.mkdir();
    	            
    	        }
    	        Data d=new Data();
//    	        d.setUid(Integer.parseInt(request.getParameter("uid")));
    	        d.setName(request.getParameter("name"));
    	        d.setFname(request.getParameter("fname"));
    	        d.setUfn(Integer.parseInt(request.getParameter("ufn")));
    	        d.setMobile(request.getParameter("mobile"));
    	        d.setBirth_certi(fileName);
    	        d.setAadhar_no(request.getParameter("aadhar_no"));
    	        
    	        DataDao.addData(d);
    	        request.setAttribute("msg", "Data Added Successfully");
    	        request.getRequestDispatcher("form_page.jsp").forward(request, response);
    	        
    		}
    		
    		else if(action.equalsIgnoreCase("update"))
			{
				String savePath = "C:\\Users\\Raj Ghodasara\\eclipse-workspace\\SSIP\\WebContent\\birth_images\\";
    			File fileSaveDir=new File(savePath);
    	        if(!fileSaveDir.exists()){
    	            fileSaveDir.mkdir();
    	        }
    	        Part file1 = request.getPart("death_certi");
    		 	String fileName=extractfilename(file1);
    		    file1.write(savePath + File.separator + fileName);
    		    String filePath= savePath + File.separator + fileName ;
    		    
    		    String savePath2 = "C:\\Users\\Raj Ghodasara\\eclipse-workspace\\SSIP\\WebContent\\birth_images\\";
    	        File imgSaveDir=new File(savePath2);
    	        if(!imgSaveDir.exists()){
    	            imgSaveDir.mkdir();
    	            
    	        }
    	        
    	        Data d = new Data();
    	        d.setName(request.getParameter("name"));
    	        d.setFname(request.getParameter("fname"));
    	        d.setUfn(Integer.parseInt(request.getParameter("ufn")));
    	        d.setDeath_certi(fileName);
    	        DataDao.addDeath(d);
    	        request.setAttribute("msg", "Data Added Successfully");
    	        request.getRequestDispatcher("death_form.jsp").forward(request, response);
    	        
			}
    		else if(action.equalsIgnoreCase("search"))
    		{
    			String fname = request.getParameter("fname");
    			int ufn = Integer.parseInt(request.getParameter("ufn"));
    			
    			DataDao d = new DataDao();
    			List<Data> name = d.Getname(fname, ufn);
    			
    			request.setAttribute("name", name);
    			request.getRequestDispatcher("rev_show_details.jsp").forward(request, response);
    		}

    }
}
  

package com.mulcam.miniproj.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mulcam.miniproj.dto.Fileupload;
import com.mulcam.miniproj.service.FileuploadService;

@Controller
public class FileuploadController {
	
	@Autowired
	FileuploadService fileuploadService;
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	HttpSession session;

	// file 업로드
	@PostMapping("/upload")
	public String fileupload(@RequestParam(value="filename") MultipartFile uploadfile, Model model) {
		String path = null;
		try {
			Fileupload fileupload= new Fileupload();
			fileupload.setId((String) session.getAttribute("id"));
			fileupload.setfilename(uploadfile.getOriginalFilename());
			
			path = servletContext.getRealPath("/fileupload/");
			File destFile = new File(path+uploadfile.getOriginalFilename());
			uploadfile.transferTo(destFile);
			fileuploadService.insertFile(fileupload);
		}	catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("filepath",path+uploadfile.getOriginalFilename());
		model.addAttribute("file",uploadfile);
		return "uploaddo";
	}
	
	@GetMapping(value="/fileview/fileupload/{filename}")
	public void fileview(@PathVariable String filename, 
	         HttpServletRequest request,HttpServletResponse response) {
	      
	      String path = servletContext.getRealPath("/fileupload/");
	         File file = new File(path+filename);
	         String sfilename=null;
	         FileInputStream fis = null;
	         
	         try {
	             if(request.getHeader("User-Agent").indexOf("MSIE")>-1) {
	                sfilename=URLEncoder.encode(file.getName(),"utf-8");
	             }else {
	                sfilename=new String(file.getName().getBytes("utf-8"), "ISO-8859-1");
	             }
	             response.setCharacterEncoding("utf-8");
	             response.setContentType("application/octet-stream;charset=utf-8");
	             response.setHeader("Content-Disposition", "attachment; filename=\""+sfilename+"\";");
	             OutputStream out = response.getOutputStream();
	             fis = new FileInputStream(file);
	             FileCopyUtils.copy(fis, out);
	             out.flush();
	          }catch(Exception e) {
	             e.printStackTrace();
	          }finally {
	             if(fis!=null) {
	                try {
	                   fis.close();
	                }catch(Exception e) {}
	             }
	          }
	       }
	
	@GetMapping(value = "/myart")
	   public String myart() {      
	      return "myart";
	   }
	
//	@GetMapping("/files")
//	public ResponseEntity<List<Fileupload>> allFiles(@ModelAttribute Fileupload file) {
//		ResponseEntity<List<Fileupload>> result = null;
//		try {
//			file.setId((String)session.getAttribute("id"));
//			List<Fileupload> files = fileuploadService.allFileInfo(file);
//			result = new ResponseEntity<List<Fileupload>>(files, HttpStatus.OK);
//		} catch(Exception e) {
//			result = new ResponseEntity<List<Fileupload>>(new ArrayList<Fileupload>(), HttpStatus.BAD_REQUEST);
//		}
//		return result;
//	}

	  
//	@GetMapping("/myart2")
//	public ResponseEntity <List<Fileupload>> getFileList(@ModelAttribute File file) {
//		ResponseEntity <List<Fileupload>> result = null;
//		try {
//			Fileupload fileupload = new Fileupload();
//			fileupload.setId((String)session.getAttribute("id"));
//			List<Fileupload> lets = fileuploadService.getFileList(fileupload);
//			result = new ResponseEntity<List<Fileupload>>(lets, HttpStatus.OK);
//		} catch(Exception e) {
//			result = new ResponseEntity<List<Fileupload>>(new ArrayList<Fileupload>(), HttpStatus.BAD_REQUEST);
//		}
//		return result;
//	}

//	// exhibit에 세션id받아서 업로드한 파일 출력
//	@RequestMapping(value = "/boardlist", method= {RequestMethod.GET , RequestMethod.POST})
//	public ModelAndView boardList(@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
//		ModelAndView mv = new ModelAndView();
//		PageInfo pageInfo = new PageInfo();
//		try {
//			List<Board> articleList = boardService.getBoardList(page, pageInfo);
//			mv.addObject("pageInfo", pageInfo);
//			mv.addObject("articleList",articleList);
//			mv.setViewName("/board/listform");
//		}catch(Exception e) {
//			e.printStackTrace();
//			mv.addObject("err", e.getMessage());
//			mv.setViewName("/board/err");
//		}
//		return mv;
//	}
//	// 올렸던 파일 삭제
//	@PostMapping(value = "/boarddelete")
//	public ModelAndView boarddelete(@RequestParam(value = "board_num") int boardNum,
//			@RequestParam(value = "board_pass") String boardPass,
//			@RequestParam(value = "page", required = false, defaultValue="1") int page) {
//		ModelAndView mv = new ModelAndView();
//		try {
//			boardService.removeBoard(boardNum, boardPass);
//			mv.addObject("page", page);
//			mv.setViewName("redirect:/board/boardlist");
//		} catch(Exception e) {
//			e.printStackTrace();
//			mv.addObject("err", e.getMessage());
//			mv.setViewName("/board/err");
//		}
//		return mv;
//	}
}
package com.mulcam.miniproj.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mulcam.miniproj.dto.Member;
import com.mulcam.miniproj.service.MemberService;

   @Controller
public class MemberController {
	   
	   @Autowired
	   MemberService memberService;
	   
	   @Autowired
	   HttpSession session;
	   
   @GetMapping(value = "/")
   public String mini() {      
      return "mini";
   }
   
   @GetMapping(value = "/login")
   public String login() {      
      return "login";
   }
   
   @GetMapping(value = "/logindo")
   public String logindo() {      
      return "logindo";
   }

   @GetMapping(value = "/art")
   public String art() {      
      return "art";
   }

   @GetMapping(value = "/myjoin")
   public String myjoin() {      
      return "myjoin";
   }
   
   @GetMapping(value = "/exhibit")
   public String exhibit() {      
      return "exhibit";
   }
   // 회원가입
   @PostMapping(value="/myjoin")
   public String myjoin(@ModelAttribute Member member, Model model) {
	   try {
		  memberService.myjoin(member);
		  model.addAttribute("ok", "true");
		  return "logindo";
	   }catch(Exception e) {
		   model.addAttribute("ok", "false");
		   return "myjoin";
	   }
   }
   

    // 로그인 
    @PostMapping("/login")
	public String login(@RequestParam(value="id") String id, @RequestParam(value="password") String password, Model model){
		try {
			memberService.login(id, password);
			session.setAttribute("id", id);
			model.addAttribute("login","true");
			return "logindo";
		} catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("login","false");
			return "login";
		}
	}
    // 아이디 중복 확인
    @ResponseBody
	@PostMapping("/memberoverlap")
	public String memberOverlap(@RequestParam(value="id") String id) {
		boolean overlap = true;
		try {
			overlap = memberService.idOverlap(id);
		} catch(Exception e) {
		}
		return String.valueOf(overlap);
	}

    @GetMapping("/logout")
	public String logout() {
		session.removeAttribute("id");
		return "login";
	}


   }
  
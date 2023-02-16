package com.penefit.moons.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.penefit.moons.domain.MemberVO;
import com.penefit.moons.service.ServiceAboutMember;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member")
public class ControllerAboutMember {
	
	@Autowired
	ServiceAboutMember serviceMember;
	
	@GetMapping("regMember")
	public void regMemberGet() {
		log.info("get regMem...");
	}
	
	//회원가입
	@PostMapping("regMember")
	public String regMemberPost(MemberVO member) {
		String path = serviceMember.regMember(member);
		return path;
	}
	

	@GetMapping("login")
	public void login() {
		
	}

	
	@PostMapping("login.do")
	public String loginCheck(@ModelAttribute("member_id")String member_id, @ModelAttribute("member_pw")String member_pw,HttpSession Session) {
		serviceMember.loginCheck(member_id, member_pw,Session);
		log.info("===============================");
		log.info(serviceMember.loginCheck(member_id, member_pw,Session));
		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession Session) {
		serviceMember.logout(Session);
		System.out.println(Session);
		return "redirect:/";
	}
	@GetMapping("infoMember")
	public String goinfoMember(HttpSession Session, Model model) {
		String member_id = (String) Session.getAttribute("member_id");
		MemberVO member = serviceMember.selectOne(member_id);
		model.addAttribute("memberinfo",member);
		return "member/infoMember";
	}
	@PostMapping("/updateMember")
	@ResponseBody
	public String updateMember(@RequestBody MemberVO member) {
		String path=serviceMember.UpdateMember(member);
		return path;
	}
	@DeleteMapping("deleteMember")
	public String deleteMember(String member_id, HttpSession Session) {
		System.out.println("memberid : " +member_id);
		Session.getAttribute("member_id");
		String path =serviceMember.DeleteMem(Session, member_id);
		return "redirect:/";
	}
}

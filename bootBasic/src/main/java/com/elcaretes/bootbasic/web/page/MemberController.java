package com.elcaretes.bootbasic.web.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.elcaretes.bootbasic.model.Member;

@Controller
@RequestMapping("/member")
public class MemberController {

	@RequestMapping("/join")
	public ModelAndView registMember() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/registMember");
		
		
		
		return mav;
	}
	
}

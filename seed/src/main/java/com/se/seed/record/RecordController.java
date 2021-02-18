package com.se.seed.record;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.se.seed.Const;
import com.se.seed.ViewRef;

@Controller
@RequestMapping("/record")
public class RecordController {
	
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main(Model model) {
		model.addAttribute(Const.TITLE, "SEED - 오늘을 기록하세요");
		model.addAttribute(Const.VIEW,"record/main");
		
		return ViewRef.TEMP_DEFAULT;
	}
	
}

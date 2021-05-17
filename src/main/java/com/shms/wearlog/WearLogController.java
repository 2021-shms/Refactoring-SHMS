package com.shms.wearlog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
@RequestMapping("/wearlog")
public class WearLogController {
	@Autowired
	private WearLogServiceImpl wearLogServiceImpl;
	
	@GetMapping
	public ModelAndView wearLogList() throws Exception {
		ModelAndView mav = new ModelAndView("wearlog/list");
		mav.addObject("wearLogList", wearLogServiceImpl.wearLogList());
		
		return mav;
	}
	
	@GetMapping("/search/{name}/{time}")
	public String searchWearLog(@ModelAttribute WearLog wearLog, Errors errors) {
		return null;
	}
	
	@GetMapping("/{number}")
	public ModelAndView viewWearLog(@ModelAttribute WearLog wearLog) throws Exception {
		ModelAndView mav = new ModelAndView("wearLog/view");
		mav.addObject("wearLog", wearLogServiceImpl.viewWearLog(wearLog));
		
		return mav;
	}
	
	@DeleteMapping("/{number}")
	public ModelAndView deleteWearLog(@ModelAttribute WearLog wearLog, Errors errors) {
		return new ModelAndView(new RedirectView("/wearlog"));
	}
}

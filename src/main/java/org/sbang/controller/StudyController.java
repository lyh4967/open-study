package org.sbang.controller;

import javax.inject.Inject;

import org.sbang.domain.StudyVO;
import org.sbang.service.StudyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/study/*")
public class StudyController {
	private static final Logger logger=LoggerFactory.getLogger(StudyController.class);
	
	@Inject
	private StudyService service;
	
	@RequestMapping(value="/studyReg",method=RequestMethod.GET)
	public void registGET(StudyVO study,Model model) throws Exception{
		logger.info("register get...");
	}
	
	@RequestMapping(value="/studyReg",method=RequestMethod.POST)
	public String registPOST(StudyVO study,RedirectAttributes rttr) throws Exception{
		logger.info("regist post........");
		logger.info(study.toString());
		
		service.regist(study);
		rttr.addFlashAttribute("msg","SUCCESS");
		return "redirect:/study/studyList";
	}
	@RequestMapping(value="/studyList",method=RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		logger.info("show all list.........");
		model.addAttribute("list",service.listAll());
	}
	
//	@RequestMapping(value="/readPage",method=RequestMethod.GET)
//	public void read(@RequestParam("bno") int bno,@ModelAttribute("cri") Criteria cri,Model model) throws  Exception{
//		model.addAttribute(service.read(bno));
//	}
//	
//	@RequestMapping(value="/removePage",method=RequestMethod.POST)
//	public String remove(@RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception{
//		service.remove(bno);
//		
//		rttr.addFlashAttribute("msg","SUCCESS");
//		
//		return "redirect:/board/listPage";
//	}
//	
//	@RequestMapping(value="/modifyPage", method=RequestMethod.GET)
//	public void modifyGET(@RequestParam("bno") int bno,@ModelAttribute("cri") Criteria cri,Model model) throws Exception{
//		model.addAttribute(service.read(bno));
//	}
//	@RequestMapping(value="/modifyPage",method=RequestMethod.POST)
//	public String modifyPOST(BoardVO board,Criteria cri,RedirectAttributes rttr) throws Exception{
//		logger.info("mod post........");
//		rttr.addAttribute("page",cri.getPage());
//		rttr.addAttribute("perPageNum",cri.getPerPageNum());
//		service.modify(board);
//		rttr.addFlashAttribute("msg", "SUCCESS");
//		
//		return "redirect:/board/listPage";
//	}
//	
//	@RequestMapping(value="/listPage",method=RequestMethod.GET)
//	public void listPage(Criteria cri,Model model)throws Exception{
//		logger.info(cri.toString());
//		
//		model.addAttribute("list",service.listCriteria(cri));
//		PageMaker pageMaker=new PageMaker();
//		pageMaker.setCri(cri);
//		//pageMaker.setTotalCount(131);
//		pageMaker.setTotalCount(service.listCountCriteria(cri));
//		
//		model.addAttribute("pageMaker",pageMaker);
//	}
}

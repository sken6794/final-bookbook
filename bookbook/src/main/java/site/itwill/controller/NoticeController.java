package site.itwill.controller;

/* 파일 처리 관련 임포트
import java.io.File;
import java.io.IOException;

import org.springframework.beans.BeansException;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.apache.tiles.request.ApplicationContext;
import org.apache.tiles.request.ApplicationContextAware;
import org.springframework.web.context.WebApplicationContext;
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.service.NoticeService;

@Controller
public class NoticeController {
//public class NoticeController implements ApplicationContextAware {

	@Autowired
	private NoticeService noticeService;
	
	/*
	//WebApplicationContext 객체를 필드에 인젝션 처리하여 저장
	@Autowired
	private WebApplicationContext context;
	*/
	
	@RequestMapping(value="/noticeList", method=RequestMethod.GET)
	public String notice(Model model) {
		model.addAttribute("noticeList", noticeService.getNoticeList());
		return "notice/notice_list";
	}
	
	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public String notice(Model model, int nno) {
		model.addAttribute("noticeList", noticeService.getNotice(nno));
		return "notice/notice_detail";
	}
	
	@RequestMapping(value="/noticeInsert", method = RequestMethod.GET)
	public String noticeInsert() {
		return "notice/notice_write";
	}
	
	@RequestMapping(value="/noticeUpdate", method = RequestMethod.GET)
	public String noticeUpdate() {
		return "notice/notice_modify";
	}
	
	@RequestMapping(value="/noticeDelete", method=RequestMethod.GET)
	@ResponseBody
	public String noticeDelete(@PathVariable int nno) {
		noticeService.removeNotice(nno);
		return "notice/notice_list";
	}
	
	/*
	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		context=(WebApplicationContext)applicationContext;
		
	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String upload() {
		return "file/upload";
	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(@RequestParam String nwriter,
			@RequestParam MultipartFile uploadFile, Model model) 
					throws IllegalStateException, IOException {
	// 입력값이나 입력파일을 전달받아 가져옴(통째로/하나하나씩)
	//   => 하나씩 가져오기 : 매개변수 하나씩 가져와서 @RequestParam사용 >> 입력태그네임 사용 
		
	// 유효성검사
	if(uploadFile.isEmpty()) {
		return "file/upload_fail";
	}
	
	// Request가 아니라 Context에게 달라구해
	// WebApplicationContext인스턴스를 이용하여 서버의 업로드 디랙토리의 시스탬경로를 반환받아 저장
	String uploadDirPath=context.getServletContext().getRealPath("/resources/upload");
	
	// 파일생성 : 서버에 입력파일과 동일한 이름의 파일이 존재할 경우 입력파일명을 변경하여 서버에 저장되도록 설정
	String originalFileName= uploadFile.getOriginalFilename();
	File file=new File(uploadDirPath, originalFileName);
	
	// 실제 서버에 저장하기위한 파일명을 저장하기위한 변수 선언 
	//  => 초기값으로 입력파일명을 저장
	String uploadFileName=originalFileName;
	
	// 서버에 입력파일명이 같은 이름에 파일이 존재할 경우 입력파일명을 변경
	int i=1;
	while(file.exists()) { // 서버에 같은이름의 파일이 존재할 경우 반복처리
		int index=originalFileName.lastIndexOf(".");
		uploadFileName=originalFileName.substring(0, index)+"_"+i+originalFileName.substring(index);
		
		file=new File(uploadDirPath, uploadFileName);
		i++;
	}
	
	uploadFile.transferTo(file); //업로드 처리
	
	model.addAttribute("nwriter", nwriter);
	model.addAttribute("originalFilename", originalFileName);
	model.addAttribute("uploadFileName", uploadFileName);
	
	return "file/upload_ok";
	}
	 */
}

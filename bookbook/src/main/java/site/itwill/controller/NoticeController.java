package site.itwill.controller;

/* ���� ó�� ���� ����Ʈ
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
	//WebApplicationContext ��ü�� �ʵ忡 ������ ó���Ͽ� ����
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
	// �Է°��̳� �Է������� ���޹޾� ������(��°��/�ϳ��ϳ���)
	//   => �ϳ��� �������� : �Ű����� �ϳ��� �����ͼ� @RequestParam��� >> �Է��±׳��� ��� 
		
	// ��ȿ���˻�
	if(uploadFile.isEmpty()) {
		return "file/upload_fail";
	}
	
	// Request�� �ƴ϶� Context���� �޶���
	// WebApplicationContext�ν��Ͻ��� �̿��Ͽ� ������ ���ε� ���丮�� �ý��ư�θ� ��ȯ�޾� ����
	String uploadDirPath=context.getServletContext().getRealPath("/resources/upload");
	
	// ���ϻ��� : ������ �Է����ϰ� ������ �̸��� ������ ������ ��� �Է����ϸ��� �����Ͽ� ������ ����ǵ��� ����
	String originalFileName= uploadFile.getOriginalFilename();
	File file=new File(uploadDirPath, originalFileName);
	
	// ���� ������ �����ϱ����� ���ϸ��� �����ϱ����� ���� ���� 
	//  => �ʱⰪ���� �Է����ϸ��� ����
	String uploadFileName=originalFileName;
	
	// ������ �Է����ϸ��� ���� �̸��� ������ ������ ��� �Է����ϸ��� ����
	int i=1;
	while(file.exists()) { // ������ �����̸��� ������ ������ ��� �ݺ�ó��
		int index=originalFileName.lastIndexOf(".");
		uploadFileName=originalFileName.substring(0, index)+"_"+i+originalFileName.substring(index);
		
		file=new File(uploadDirPath, uploadFileName);
		i++;
	}
	
	uploadFile.transferTo(file); //���ε� ó��
	
	model.addAttribute("nwriter", nwriter);
	model.addAttribute("originalFilename", originalFileName);
	model.addAttribute("uploadFileName", uploadFileName);
	
	return "file/upload_ok";
	}
	 */
}

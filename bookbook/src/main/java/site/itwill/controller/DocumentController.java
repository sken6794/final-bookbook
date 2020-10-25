package site.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.Document;
import site.itwill.dto.Member;
import site.itwill.service.DocumentService;

@Controller
public class DocumentController {

	@Autowired
	private DocumentService documentService;

	// ��ü ���� ��
	@RequestMapping(value = "/document")
	public String documentList(Model model, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		model.addAttribute("loginMember", loginMember);
		model.addAttribute("documentList", documentService.getDocumentList());

		return "document/total_docu";
	}

	// ���� ����

	@RequestMapping(value = "/documentSelect/{docno}", method = RequestMethod.GET)
	public String documentSelect(@PathVariable int docno, Model model) {
		model.addAttribute("document", documentService.getDocument(docno));
		return "document/doc_aprv";
	}

	// ���ڰ��� �Է�
	// ����������� �̵�
	@RequestMapping(value = "/documentAdd", method = RequestMethod.GET)
	public String documentAdd(HttpSession session){
		Member loginMember = (Member) session.getAttribute("loginMember");
		if(loginMember==null) {
	         return "login";
	      } else {
	         return "document/doc_form";      
	      }
	}

	// �����ۼ�
	@RequestMapping(value = "/documentAdd", method = RequestMethod.POST)
	public String documentAdd(Document document, HttpSession session) {
		documentService.addDocument(document);
		return "redirect:/document";
	}

	// ���� ����
	@RequestMapping(value = "/documentModify", method = RequestMethod.GET)
	public String documentModify(@RequestParam int docno, Model model, HttpSession session) {
		model.addAttribute("documentMember", documentService.getDocument(docno));
		return "document/doc_modify";
	}

	// ���� �Ϸ�
	@RequestMapping(value = "/modifyUpdate", method = RequestMethod.POST)
	public String modifyUpdate(Document document, HttpSession session) {
		documentService.modifyDocument(document);
		return "redirect:/document";
	}

	// ���, ����(�����ڵ� : 1)
	@RequestMapping(value = "documentSelect/documentWait/{docno}", method = RequestMethod.PUT)
	@ResponseBody
	public String documentWait(@PathVariable int docno) {
		Document document = documentService.getDocument(docno);
		document.setDocstate(1);
		documentService.modifyDocument(document);
		return "success";
	}

	// ���� �Ϸ�(�����ڵ� : 2)
	@RequestMapping(value = "documentSelect/documentComplete/{docno}", method = RequestMethod.PUT)
	@ResponseBody
	public String documentComplete(@PathVariable int docno) {
		Document document = documentService.getDocument(docno);
		document.setDocstate(2);
		documentService.modifyDocument(document);
		return "success";
	}
	
	// �ݷ� (�����ڵ� :3 -> �ӽ������ ���� ����)
	@RequestMapping(value = "documentSelect/documentSave/{docno}", method = RequestMethod.PUT)
	@ResponseBody
	public String documentSave(@PathVariable int docno) {
		Document document = documentService.getDocument(docno);
		document.setDocstate(3);
		documentService.modifyDocument(document);
		return "success";
	}
	
	// ����(�����ڵ� : 9)
	@RequestMapping(value = "documentSelect/documentDelete/{docno}", method = RequestMethod.PUT)
	@ResponseBody
	public String documentDelete(@PathVariable int docno) {
		Document document = documentService.getDocument(docno);
		document.setDocstate(9);
		documentService.modifyDocument(document);
		return "success";
	}
	
	@RequestMapping(value = "/documentWait")
	public String documentWaitList(Model model) {
		model.addAttribute("documentWaitList", documentService.getDocumentList());
		return "document/wait_docu";
	}

	@RequestMapping(value = "/documentRecieve")
	public String documentRecieveList(Model model) {
		model.addAttribute("documentRecieveList", documentService.getDocumentList());
		return "document/recieve_docu";
	}

	@RequestMapping(value = "/documentDelete")
	public String documentDeleteList(Model model) {
		model.addAttribute("documentDeleteList", documentService.getDocumentList());
		return "document/delete_docu";
	}

	@RequestMapping(value = "/documentComplete")
	public String documentCompleteList(Model model) {
		model.addAttribute("documentCompleteList", documentService.getDocumentList());
		return "document/complete_docu";
	}
	
	@RequestMapping(value = "/documentSave")
	public String documentSaveList(Model model) {
		model.addAttribute("documentSaveList", documentService.getDocumentList());
		return "document/save_docu";
	}

	/*
	 * //����(�����ڵ� : 2)
	 * 
	 * @RequestMapping(value="documentSelect/documentRecieve/{docno}",
	 * method=RequestMethod.PUT)
	 * 
	 * @ResponseBody public String documentRecieve(@PathVariable int docno) {
	 * Document document= documentService.getDocument(docno);
	 * document.setDocstate(2); documentService.modifyDocument(document); return
	 * "success"; }
	 */
	/*
	 * @RequestMapping(value="/notice", method=RequestMethod.GET) public String
	 * notice(@RequestParam int nno, Model model) { model.addAttribute("notice",
	 * noticeService.getNotice(nno)); noticeService.readCount(nno); return
	 * "notice/notice_detail"; }
	 * 
	 */
	/*
	 * @RequestMapping(value = "/documentModify", method = RequestMethod.POST)
	 * public String documentModify(@ModelAttribute Document document, Model model)
	 * { documentService.modifyDocument(document); return "redirect:/document"; } ����
	 * �ֽŹ���... --------------------------------------------------------
	 * 
	 * @RequestMapping(value = "/documentModify", method = RequestMethod.POST)
	 * public String documentUpdate(Document document) {
	 * 
	 * documentService.modifyDocument(document); return "redirect:/document"; }
	 */

	/*
	 * �̰� JSON ����... ���� ������ �̵��ؾ���..
	 * 
	 * @RequestMapping("/documentSelect/{docno}")
	 * 
	 * @ResponseBody public Document document(@PathVariable int docno) { return
	 * documentService.getDocument(docno); }
	 */

	/*
	 * �굵 ���� -> Required parameter ��¼�� is not present ��� ��...
	 * 
	 * @RequestMapping(value = "/documentSelect/{docno}", method =
	 * RequestMethod.GET) public String document(@RequestParam(required = false) int
	 * docno) { return documentService.getDocument(docno).toString(); }
	 */

	/*
	 * @RequestMapping(value="/documentAdd", method = RequestMethod.POST) public
	 * String documentAdd(@ModelAttribute Document document, Model model) {
	 * documentService.addDocument(document); return "redirect:/document/doc_aprv";
	 * }
	 */

	// ���ڰ��� ����
	/*
	 * @RequestMapping(value = "/documentModify", method = RequestMethod.GET) public
	 * String modify(@RequestParam String userid, Model model) throws
	 * UserinfoNotFoundException { model.addAttribute("userinfo",
	 * userinfoService.getUserinfo(userid)); return "userinfo/user_modify"; }
	 * 
	 * @RequestMapping(value = "/documentModify", method = RequestMethod.POST)
	 * public String modify(@ModelAttribute Userinfo userinfo, HttpSession session)
	 * throws UserinfoNotFoundException { userinfoService.modifyUserinfo(userinfo);
	 * //���� ȸ���� ���� �α��� ������� ��� ���ǿ� ����� ���� ���� ���� ���� Userinfo
	 * loginUserinfo=(Userinfo)session.getAttribute("loginUserinfo");
	 * if(loginUserinfo.getUserid().equals(userinfo.getUserid())) {
	 * session.setAttribute("loginUserinfo",
	 * userinfoService.getUserinfo(userinfo.getUserid())); } return
	 * "redirect:/userinfo/view?userid="+userinfo.getUserid(); }
	 */

}
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

	// 전체 문서 뷰
	@RequestMapping(value = "/document")
	public String documentList(Model model, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		model.addAttribute("loginMember", loginMember);
		model.addAttribute("documentList", documentService.getDocumentList());

		return "document/total_docu";
	}

	// 문서 선택

	@RequestMapping(value = "/documentSelect/{docno}", method = RequestMethod.GET)
	public String documentSelect(@PathVariable int docno, Model model) {
		model.addAttribute("document", documentService.getDocument(docno));
		return "document/doc_aprv";
	}

	// 전자결재 입력
	// 문서양식으로 이동
	@RequestMapping(value = "/documentAdd", method = RequestMethod.GET)
	public String documentAdd(HttpSession session){
		Member loginMember = (Member) session.getAttribute("loginMember");
		if(loginMember==null) {
	         return "login";
	      } else {
	         return "document/doc_form";      
	      }
	}

	// 문서작성
	@RequestMapping(value = "/documentAdd", method = RequestMethod.POST)
	public String documentAdd(Document document, HttpSession session) {
		documentService.addDocument(document);
		return "redirect:/document";
	}

	// 문서 수정
	@RequestMapping(value = "/documentModify", method = RequestMethod.GET)
	public String documentModify(@RequestParam int docno, Model model, HttpSession session) {
		model.addAttribute("documentMember", documentService.getDocument(docno));
		return "document/doc_modify";
	}

	// 수정 완료
	@RequestMapping(value = "/modifyUpdate", method = RequestMethod.POST)
	public String modifyUpdate(Document document, HttpSession session) {
		documentService.modifyDocument(document);
		return "redirect:/document";
	}

	// 상신, 수신(상태코드 : 1)
	@RequestMapping(value = "documentSelect/documentWait/{docno}", method = RequestMethod.PUT)
	@ResponseBody
	public String documentWait(@PathVariable int docno) {
		Document document = documentService.getDocument(docno);
		document.setDocstate(1);
		documentService.modifyDocument(document);
		return "success";
	}

	// 결재 완료(상태코드 : 2)
	@RequestMapping(value = "documentSelect/documentComplete/{docno}", method = RequestMethod.PUT)
	@ResponseBody
	public String documentComplete(@PathVariable int docno) {
		Document document = documentService.getDocument(docno);
		document.setDocstate(2);
		documentService.modifyDocument(document);
		return "success";
	}
	
	// 반려 (상태코드 :3 -> 임시저장과 같은 상태)
	@RequestMapping(value = "documentSelect/documentSave/{docno}", method = RequestMethod.PUT)
	@ResponseBody
	public String documentSave(@PathVariable int docno) {
		Document document = documentService.getDocument(docno);
		document.setDocstate(3);
		documentService.modifyDocument(document);
		return "success";
	}
	
	// 삭제(상태코드 : 9)
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
	 * //수신(상태코드 : 2)
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
	 * { documentService.modifyDocument(document); return "redirect:/document"; } 위가
	 * 최신버전... --------------------------------------------------------
	 * 
	 * @RequestMapping(value = "/documentModify", method = RequestMethod.POST)
	 * public String documentUpdate(Document document) {
	 * 
	 * documentService.modifyDocument(document); return "redirect:/document"; }
	 */

	/*
	 * 이건 JSON 형식... 나는 페이지 이동해야함..
	 * 
	 * @RequestMapping("/documentSelect/{docno}")
	 * 
	 * @ResponseBody public Document document(@PathVariable int docno) { return
	 * documentService.getDocument(docno); }
	 */

	/*
	 * 얘도 오류 -> Required parameter 어쩌구 is not present 라고 함...
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

	// 전자결재 수정
	/*
	 * @RequestMapping(value = "/documentModify", method = RequestMethod.GET) public
	 * String modify(@RequestParam String userid, Model model) throws
	 * UserinfoNotFoundException { model.addAttribute("userinfo",
	 * userinfoService.getUserinfo(userid)); return "userinfo/user_modify"; }
	 * 
	 * @RequestMapping(value = "/documentModify", method = RequestMethod.POST)
	 * public String modify(@ModelAttribute Userinfo userinfo, HttpSession session)
	 * throws UserinfoNotFoundException { userinfoService.modifyUserinfo(userinfo);
	 * //변경 회원이 현재 로그인 사용자인 경우 세션에 저장된 권한 관련 정보 변경 Userinfo
	 * loginUserinfo=(Userinfo)session.getAttribute("loginUserinfo");
	 * if(loginUserinfo.getUserid().equals(userinfo.getUserid())) {
	 * session.setAttribute("loginUserinfo",
	 * userinfoService.getUserinfo(userinfo.getUserid())); } return
	 * "redirect:/userinfo/view?userid="+userinfo.getUserid(); }
	 */

}
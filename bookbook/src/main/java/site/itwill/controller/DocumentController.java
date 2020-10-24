package site.itwill.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.itwill.dto.Document;
import site.itwill.service.DocumentService;

@Controller
public class DocumentController {

   @Autowired
   private DocumentService documentService;
   
   //전체 문서 뷰
   @RequestMapping(value="/document")
   public String documentList(Model model) {
      model.addAttribute("documentList", documentService.getDocumentList());
      return "document/total_docu";
   }
   
   //문서 선택
   @RequestMapping(value = "/documentSelect/{docno}", method = RequestMethod.GET)
   public String documentSelect(@PathVariable int docno, Model model) {
      model.addAttribute("document", documentService.getDocument(docno));
      return "document/doc_aprv";
   }
   
   //전자결재 입력
   //문서양식으로 이동
   @RequestMapping(value="/documentAdd", method = RequestMethod.GET)
   public String documentAdd() {
      return "document/doc_form";
   }
   //문서작성
   @RequestMapping(value="/documentAdd", method = RequestMethod.POST)
   public String documentAdd(@ModelAttribute Document document, Model model) {
      documentService.addDocument(document);
      return "redirect:/document";
   }
   
   //문서 수정
   @RequestMapping(value = "/documentModify", method = RequestMethod.GET)
   public String documentModify(@RequestParam int docno, Model model) {
      model.addAttribute("documentMember", documentService.getDocument(docno));
      
      return "document/doc_modify";
   }
   
   
   
   @RequestMapping(value = "/modifyUpdate", method = RequestMethod.POST)
   public String modifyUpdate(Document document) {
      documentService.modifyDocument(document);
      return "redirect:/document";
   }
   //----------------------------------------위는 성공... 건들지 않기로-------------------------------------------
   //상신(상태코드 : 1)
   @RequestMapping(value="/documentWait", method=RequestMethod.GET)
   public String documentWait(Document document) {
      return "document/wait_docu";
   }
   
   /*
       @RequestMapping(value="/notice", method=RequestMethod.GET)
   public String notice(@RequestParam int nno, Model model) {
      model.addAttribute("notice", noticeService.getNotice(nno));
      noticeService.readCount(nno);
      return "notice/notice_detail";
   }
    * 
    * */
   
   //삭제(상태코드 : 9)
   @RequestMapping(value="/documentDelete", method=RequestMethod.GET)
   public String documentDeleteList() {
      return "document/delete_docu";
   }
   
   //수신(상태코드 : 2)
   @RequestMapping(value="/documentRecieve", method=RequestMethod.GET)
   public String documentRecieveList() {
      return "document/recieve_docu";
   }
   
   //결재 완료(상태코드 : 3)
   @RequestMapping(value="/documentComplete", method=RequestMethod.GET)
   public String documentCompleteList(Model model) {
      model.addAttribute("documentCompleteList", documentService.getDocumentList());
      return "document/complete_docu";
   }
   /* 
   @RequestMapping(value = "/documentModify", method = RequestMethod.POST)
   public String documentModify(@ModelAttribute Document document, Model model) {
      documentService.modifyDocument(document);
      return "redirect:/document";
   }
   위가 최신버전...
   --------------------------------------------------------
   @RequestMapping(value = "/documentModify", method = RequestMethod.POST)
   public String documentUpdate(Document document) {
      
      documentService.modifyDocument(document);
      return "redirect:/document";
   }
    */

   
   /* 이건 JSON 형식... 나는 페이지 이동해야함..
   @RequestMapping("/documentSelect/{docno}")
   @ResponseBody
   public Document document(@PathVariable int docno) {
      return documentService.getDocument(docno);
   }
    */
   
   /*얘도 오류 -> Required parameter 어쩌구 is not present 라고 함...
   @RequestMapping(value = "/documentSelect/{docno}", method = RequestMethod.GET)
   public String document(@RequestParam(required = false) int docno) {
      return documentService.getDocument(docno).toString();
   }
   */
   
/*
   @RequestMapping(value="/documentAdd", method = RequestMethod.POST)
   public String documentAdd(@ModelAttribute Document document, Model model) {
      documentService.addDocument(document);
      return "redirect:/document/doc_aprv";
   }
   */
   
   //전자결재 수정
   /*
   @RequestMapping(value = "/documentModify", method = RequestMethod.GET)
   public String modify(@RequestParam String userid, Model model) throws UserinfoNotFoundException {
      model.addAttribute("userinfo", userinfoService.getUserinfo(userid));
      return "userinfo/user_modify";
   }

   @RequestMapping(value = "/documentModify", method = RequestMethod.POST)
   public String modify(@ModelAttribute Userinfo userinfo, HttpSession session) throws UserinfoNotFoundException {
      userinfoService.modifyUserinfo(userinfo);
      //변경 회원이 현재 로그인 사용자인 경우 세션에 저장된 권한 관련 정보 변경
      Userinfo loginUserinfo=(Userinfo)session.getAttribute("loginUserinfo");
      if(loginUserinfo.getUserid().equals(userinfo.getUserid())) {
         session.setAttribute("loginUserinfo", userinfoService.getUserinfo(userinfo.getUserid()));
      }
      return "redirect:/userinfo/view?userid="+userinfo.getUserid();
   } 
    */
   
   

   
}
package com.sft.mdk.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sft.mdk.dao.CardDAO;
import com.sft.mdk.dao.SignUpDAO;
import com.sft.mdk.dto.CardDTO;
import com.sft.mdk.dto.CartDTO;
import com.sft.mdk.dto.MemberDTO;
import com.sft.mdk.dto.OrderDTO;
import com.sft.mdk.dto.RepleDTO;
import com.sft.mdk.dto.WriteDTO;
import com.sft.mdk.service.AdminService;
import com.sft.mdk.service.CardService;
import com.sft.mdk.service.CartService;
import com.sft.mdk.service.LoginService;
import com.sft.mdk.service.OrderService;
import com.sft.mdk.service.SignUpService;
import com.sft.mdk.service.WriteService;

@Controller
public class MainController {
//	Service service;
//	public JdbcTemplate template;
//		
	@Inject
	LoginService LService;
	
	@Inject
	SignUpService SService;
	
	@Inject
	CardService CdService;
	
	@Inject
	CartService CtService;
	
	@Inject
	AdminService AService;
	
	@Inject
	OrderService OService;
	
	@Inject
	WriteService WService;
	
	@RequestMapping("/main")
	public String main(Model model, HttpSession session) {
		return "main";
	}
	
	@RequestMapping("/card")
	public String card(HttpServletRequest request, Model model, HttpSession session, CardDTO dto) {
		int pg = 1;
		if(request.getParameter("pg") != null)
			pg = Integer.parseInt(request.getParameter("pg"));
		int list_size=6;
		int page_size=5;
		dto.setStart((pg*list_size) - (list_size-1));
		dto.setEnd((pg*list_size));
		model.addAttribute("card_list", CdService.card_list(dto));
		
		int total_card = CdService.count();
		int allPage =(int) Math.ceil(total_card / (double)list_size);
		int startPage = ((pg - 1) / page_size * page_size) + 1;
		int endPage = ((pg - 1) / page_size * page_size) + page_size;
		if (endPage > allPage) {
			endPage = allPage;
		}
		model.addAttribute("pg", pg);
		model.addAttribute("page_size", page_size);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("allPage", allPage);
		return "card";
	}
	@RequestMapping("/login")
	public String login(Model model) {
		
		return "login";
	}
	@RequestMapping("/id_search")
	public String id_search(Model model) {
		
		return "id_search";
	}
	@RequestMapping("/pw_search")
	public String pw_search(Model model) {
		
		return "pw_search";
	}
	@RequestMapping("/signUp")
	public String signUp(Model model) {
		
		return "signUp";
	}
	@RequestMapping("/mypage")
	public String mypage(Model model, HttpSession session, OrderDTO dto) {
		int login_no = (int) session.getAttribute("member_no");
		model.addAttribute("order_view", OService.order_view(login_no));
		model.addAttribute("count", OService.order_view(login_no).size());
		return "mypage";
	}
	@RequestMapping("/info_update")
	public String info_update(Model model, HttpSession session, MemberDTO dto) {
		String id = (String) session.getAttribute("login_id");
		String pw = (String) session.getAttribute("login_pw");
		
		dto.setMember_id(id);
		dto.setMember_pw(pw);
		model.addAttribute("login_view", LService.loginView(dto));
		return "info_update";
	}
	
	@RequestMapping("/info_update_ok")
	public String info_update_ok(Model model, HttpServletRequest request, HttpSession session,MemberDTO dto) {
		dto.setMember_id((String) session.getAttribute("login_id"));
		dto.setMember_pw(request.getParameter("pw_2"));
		dto.setMember_postcode(request.getParameter("postcode"));
		dto.setMember_roadAddress(request.getParameter("roadAddress"));
		dto.setMember_jibunAddress(request.getParameter("jibunAddress"));
		dto.setMember_extraAddress(request.getParameter("extraAddress"));
		dto.setMember_detailAddress(request.getParameter("detailAddress"));
		dto.setMember_phone(request.getParameter("phone"));
		dto.setMember_email(request.getParameter("email"));
		LService.info_update(dto);
		return "redirect:info_update";
	}
	@RequestMapping("/cart")
	public String cart(Model model, HttpSession session, CartDTO dto) {
		dto.setLogin_no((int)session.getAttribute("member_no"));
		model.addAttribute("cart_view", CtService.cart_view(dto));
		model.addAttribute("count", CtService.cart_view(dto).size());
		return "cart";
	}
	@RequestMapping(method = RequestMethod.GET, value = "/cart_del")
	public String cart_del(HttpServletRequest request, Model model, CartDTO dto){
		dto.setNo(Integer.parseInt(request.getParameter("no")));
		CtService.cart_delete(dto);
		CtService.cart_update(dto);
		return "redirect:cart";
	}
	@RequestMapping("/cs")
	public String cs(Model model, HttpSession session) {
		if((int)session.getAttribute("member_no") == 1)
			model.addAttribute("write_view", WService.admin_view());
		else
			model.addAttribute("write_view", WService.write_view((int) session.getAttribute("member_no")));
		return "cs";
	}
	@RequestMapping(method = RequestMethod.POST, value="/signUp")
	public String signUp_ok(HttpServletRequest request, Model model, MemberDTO dto) {
		
		int cnt = SService.count();
		dto.setNo(cnt+1);
		dto.setMember_id(request.getParameter("id"));
		dto.setMember_pw(request.getParameter("pw_1"));
		dto.setMember_name(request.getParameter("name"));
		dto.setMember_birth(request.getParameter("birth_year") + "-" + request.getParameter("birth_month") + "-" + request.getParameter("birth_day"));
		dto.setMember_postcode(request.getParameter("postcode"));
		dto.setMember_roadAddress(request.getParameter("roadAddress"));
		dto.setMember_jibunAddress(request.getParameter("jibunAddress"));
		dto.setMember_extraAddress(request.getParameter("extraAddress"));
		dto.setMember_detailAddress(request.getParameter("detailAddress"));
		dto.setMember_phone(request.getParameter("phone_1") + request.getParameter("phone_2") + request.getParameter("phone_3"));
		dto.setMember_email(request.getParameter("email"));
		SService.signUp(dto);
		return "redirect:signUp_ok";
	}
	@RequestMapping("/signUp_ok")
	public String signUp_ok(Model model) {
		
		return "signUp_ok";
	}
	@RequestMapping(method = RequestMethod.POST, value="/login_ok")
	public String login_ok(HttpSession session, Model model, HttpServletRequest request, MemberDTO dto) {
		dto.setMember_id(request.getParameter("id"));
		dto.setMember_pw(request.getParameter("pw"));
		boolean result = LService.login(dto, session);
		String p = null;
		if(result == true) {
			p = "main";
			session.setAttribute("login_id", dto.getMember_id());
			session.setAttribute("login_pw", dto.getMember_pw());
		}
		else {
			p = "login";
		}
		return "redirect:"+p;
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session, Model model) {
		session.invalidate();
		return "redirect:main";
	}
	
	@ResponseBody
	@RequestMapping(method = RequestMethod.POST, value = "/idCheck", produces = "application/json")
	public int idCheck(HttpServletRequest request, Model model, MemberDTO dto){
		dto.setMember_id(request.getParameter("id"));
		int result = SService.idCheck(dto);

		return result;
	}
	@ResponseBody
	@RequestMapping(method = RequestMethod.POST, value = "/pwCheck", produces = "application/json")
	public int pwCheck(HttpServletRequest request, Model model, MemberDTO dto){
		dto.setMember_pw(request.getParameter("pw"));
		int result = LService.pwCheck(dto);
		return result;
	}
	@RequestMapping("/product")
	public String product(HttpServletRequest request, HttpSession session, Model model, CardDTO dto) {
		int idx = Integer.parseInt(request.getParameter("idx"));
		model.addAttribute("idx", idx);
		dto.setNo(idx);
		model.addAttribute("card_detail", CdService.card_detail(dto));
		return "product";
	}
	@ResponseBody
	@RequestMapping(method = RequestMethod.POST, value = "/cartCheck", produces = "application/json")
	public void cartCheck(HttpServletRequest request, Model model, CartDTO dto) {
		dto.setNo(CtService.cart_count()+1);
		dto.setLogin_no(Integer.parseInt(request.getParameter("login_no")));
		dto.setCart_no(Integer.parseInt(request.getParameter("cart_no")));
		dto.setAmount(Integer.parseInt(request.getParameter("amount")));
		dto.setImage_path(request.getParameter("image_path"));
		CtService.cart_insert(dto);
	}
	@RequestMapping(method = RequestMethod.POST, value = "/order_now")
	public String order_now(HttpServletRequest request, HttpSession session, Model model, MemberDTO dto1, CartDTO dto2) {
		int card_no = Integer.parseInt(request.getParameter("card_no"));
		DecimalFormat formatter = new DecimalFormat("###,###");
		String card_name = (String) request.getParameter("card_name");
		card_name = card_name.substring(2,card_name.length()-2);
		String card_price = (String) request.getParameter("card_price");
		card_price = card_price.substring(2,card_price.length()-3);
		int all_price = Integer.parseInt(card_price.replace(",", "")) + 2500;
		String amount = (String) request.getParameter("amount");
		String image_path = (String) request.getParameter("image_path");
		
		int no = CtService.cart_count()+1;
		dto2.setNo(no);
		dto2.setLogin_no((int)session.getAttribute("member_no"));
		dto2.setCart_no(card_no);
		dto2.setAmount(Integer.parseInt(amount));
		dto2.setImage_path(image_path);
		CtService.cart_insert(dto2);
		
		model.addAttribute("del_no", no);
		model.addAttribute("card_no", card_no);
		model.addAttribute("card_name", card_name);
		model.addAttribute("card_price", card_price);
		model.addAttribute("all_price", formatter.format(all_price));
		model.addAttribute("amount", amount);
		model.addAttribute("image_path", image_path);
		
		String id = (String) session.getAttribute("login_id");
		String pw = (String) session.getAttribute("login_pw");
		
		dto1.setMember_id(id);
		dto1.setMember_pw(pw);
		model.addAttribute("login_view", LService.loginView(dto1));
		
		return "order_now";
	}
	@RequestMapping(method = RequestMethod.GET, value = "/order_cart")
	public String order_cart(HttpServletRequest request, HttpSession session, Model model, CartDTO dto1, MemberDTO dto2) {
		DecimalFormat formatter = new DecimalFormat("###,###");
		dto1.setLogin_no((int)session.getAttribute("member_no"));
		model.addAttribute("cart_view", CtService.cart_view(dto1));
		int all_price=0;
		for(int i=0; i < CtService.cart_view(dto1).size(); i++) {
			all_price += Integer.parseInt(CtService.cart_view(dto1).get(i).getCard_price().replaceAll(",", ""));
		}
		all_price += 2500;
		model.addAttribute("all_price", formatter.format(all_price));
		String id = (String) session.getAttribute("login_id");
		String pw = (String) session.getAttribute("login_pw");
		
		dto2.setMember_id(id);
		dto2.setMember_pw(pw);
		model.addAttribute("login_view", LService.loginView(dto2));
		
		return "order_cart";
	}
	@RequestMapping("/write")
	public String write(HttpServletRequest request, HttpSession session, Model model) {
		return "write";
	}
	@RequestMapping("/board")
	public String board(HttpServletRequest request, HttpSession session, Model model, WriteDTO dto) {
		int no = (Integer.parseInt(request.getParameter("idx")));
		model.addAttribute("no", no);
		model.addAttribute("board_view", WService.board_view(no));
		
		model.addAttribute("reple_view", WService.reple_view(no));
		return "board";
	}
	@RequestMapping("/adminpage")
	public String adminpage(HttpServletRequest request, HttpSession session, Model model) {
		model.addAttribute("admin_order_view", OService.admin_order_view());
			
		return "adminpage";
	}
	@RequestMapping("/stats")
	public String stats(HttpServletRequest request, HttpSession session, Model model) {

		return "stats";
	}
	@RequestMapping("/member")
	public String member(HttpServletRequest request, HttpSession session, Model model) {
		String search = null;
		if(request.getParameter("search") != null) {
			search = request.getParameter("search");
			model.addAttribute("admin_view", AService.admin_search_view(search));
		}
		else
			model.addAttribute("admin_view", AService.admin_view());
		return "member";
	}
	@RequestMapping(method = RequestMethod.POST, value = "/order_ok")
	public String order_ok(HttpServletRequest request, HttpSession session, Model model, OrderDTO dto) {
		int login_no = (int) session.getAttribute("member_no");
		dto.setLogin_no(login_no);
		dto.setBuyer_name(request.getParameter("buyer_name"));
		dto.setBuyer_phone(request.getParameter("buyer_phone"));
		dto.setBuyer_email(request.getParameter("buyer_email"));
		dto.setRecipient_name(request.getParameter("recipient_name"));
		dto.setRecipient_phone(request.getParameter("recipient_phone"));
		dto.setRecipient_postcode(request.getParameter("postcode"));
		dto.setRecipient_roadAddress(request.getParameter("roadAddress"));
		dto.setRecipient_jibunAddress(request.getParameter("jibunAddress"));
		dto.setRecipient_extraAddress(request.getParameter("extraAddress"));
		dto.setRecipient_detailAddress(request.getParameter("detailAddress"));
		dto.setOrder_memo(request.getParameter("memo"));
		for(int i = 1; i<= (int)CtService.cart_view_count(login_no); i++) {
			dto.setNo(OService.order_count()+1);
			int cart_no = Integer.parseInt(request.getParameter("cart_no"+i));
			dto.setCart_no(cart_no);			
			int amount = Integer.parseInt(request.getParameter("amount"+i));
			dto.setAmount(amount);
			OService.order_insert(dto);
		}
		OService.cart_delete(login_no);
		return "order_ok";
	}
	@RequestMapping(method = RequestMethod.POST, value = "/order_ok_2")
	public String order_ok_2(HttpServletRequest request, HttpSession session, Model model, OrderDTO dto) {
		int del_no = Integer.parseInt(request.getParameter("del_no"));
		int login_no = (int) session.getAttribute("member_no");
		dto.setLogin_no(login_no);
		dto.setNo(OService.order_count()+1);
		dto.setCart_no(Integer.parseInt(request.getParameter("cart_no")));
		dto.setAmount(Integer.parseInt(request.getParameter("amount")));
		dto.setBuyer_name(request.getParameter("buyer_name"));
		dto.setBuyer_phone(request.getParameter("buyer_phone"));
		dto.setBuyer_email(request.getParameter("buyer_email"));
		dto.setRecipient_name(request.getParameter("recipient_name"));
		dto.setRecipient_phone(request.getParameter("recipient_phone"));
		dto.setRecipient_postcode(request.getParameter("postcode"));
		dto.setRecipient_roadAddress(request.getParameter("roadAddress"));
		dto.setRecipient_jibunAddress(request.getParameter("jibunAddress"));
		dto.setRecipient_extraAddress(request.getParameter("extraAddress"));
		dto.setRecipient_detailAddress(request.getParameter("detailAddress"));
		dto.setOrder_memo(request.getParameter("memo"));
		OService.order_insert(dto);
		OService.cart_delete_no(del_no);
		return "order_ok";
	}
	@RequestMapping(method = RequestMethod.POST, value = "/order_update")
	public String order_update(HttpServletRequest request, Model model, OrderDTO dto){
		dto.setNo(Integer.parseInt(request.getParameter("no")));
		dto.setOrder_state(request.getParameter("state"));
		OService.order_update(dto);
		return "redirect:adminpage";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/write_ok")
	public String write_ok(HttpServletRequest request, HttpSession session, Model model, WriteDTO dto){
		int cnt = WService.write_count()+1;
		dto.setNo(cnt);
		dto.setLogin_no((int) session.getAttribute("member_no"));
		dto.setTitle(request.getParameter("title"));
		dto.setContents(request.getParameter("contents"));
		WService.write_insert(dto);
		return "redirect:cs";
	}
	@RequestMapping(method = RequestMethod.POST, value = "/reple_ok")
	public String reple_ok(HttpServletRequest request, HttpSession session, Model model, RepleDTO dto){
		int cnt = WService.reple_count()+1;
		int no = Integer.parseInt(request.getParameter("idx"));
		dto.setNo(cnt);
		dto.setBoard_no(no);
		dto.setLogin_no((int) session.getAttribute("member_no"));
		dto.setReple_txt(request.getParameter("reple_txt"));
		WService.reple_insert(dto);
		return "redirect:board?idx="+no;
	}
	@RequestMapping(method = RequestMethod.GET, value = "/board_delete")
	public String board_delete(HttpServletRequest request, Model model){
		int no = Integer.parseInt(request.getParameter("idx"));
		WService.board_delete(no);
		WService.board_update(no);
		WService.board_reple_delete(no);
		WService.board_reple_update(no);
		WService.reple_update(no);
		
		return "redirect:cs";
	}
	@RequestMapping(method = RequestMethod.GET, value = "/modify")
	public String modify(HttpServletRequest request, Model model){
		int no = Integer.parseInt(request.getParameter("idx"));
		model.addAttribute("modify_view", WService.modify_view(no));
		
		return "modify";
	}
	@RequestMapping(method = RequestMethod.POST, value = "/modify_ok")
	public String modify_ok(HttpServletRequest request, Model model, WriteDTO dto){
		int no = Integer.parseInt(request.getParameter("idx"));
		dto.setNo(no);
		dto.setTitle(request.getParameter("title"));
		dto.setContents(request.getParameter("contents"));
		WService.modify_update(dto);
		return "redirect:board?idx="+no;
	}
	@RequestMapping(method = RequestMethod.GET, value = "/reple_delete")
	public String reple_delete(HttpServletRequest request, Model model){
		int idx = Integer.parseInt(request.getParameter("idx"));
		int no = Integer.parseInt(request.getParameter("no"));
		WService.reple_delete(no);
		WService.reple_update(no);
		
		return "redirect:board?idx="+idx;
	}
}
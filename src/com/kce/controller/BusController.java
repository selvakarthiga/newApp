package com.kce.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kce.model.DetailsBean;
import com.kce.model.RegBean;
import com.kce.service.BusService;
import com.kce.service.LoginService;
import com.kce.service.RegService;

@Controller
public class BusController {

	@Autowired
	HttpServletRequest request;

	@Autowired
	LoginService loginService;

	@Autowired
	RegService regService;

	@Autowired
	BusService busService;

	@Autowired
	HttpSession ses;
	
    String tempName;
	String tempFrom;
	String tempTo;
	String tempDate;
  
	List<DetailsBean> tempObj = new ArrayList<DetailsBean>();
	List<DetailsBean> tempObj2 = new ArrayList<DetailsBean>();


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView doStart() {
		return new ModelAndView("home");
	}

	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "About";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "Contact";
	}

	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public String validate(@ModelAttribute("login") RegBean login) {
		String name = login.getName();
		String passw = login.getPass();
		
		if ((name.equals("admin")) && (passw.equals("admin"))) {
			// redirect
			return "adminlanding";
		} else {
				if (regService.validate(name, passw) == 1) {
					ses.setAttribute("user", name);
					return ("userlanding");
				} else {
					return ("redirect:/login");
				}
		}
	}

	@RequestMapping("/adminlanding")
	public String adminlanding() {
		return "adminlanding";
	}

	@RequestMapping("/detail")
	public String detail() {
		return "userlanding";
	}

	@RequestMapping("/logincancel")
	public String logincancel() {
		return "redirect:/home1";
	}

	@RequestMapping("/signupcancel")
	public String signupcancel() {
		return "redirect:/home1";
	}

	@RequestMapping("/login2")
	public String login2() {
		return "redirect:/login";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/logout")
	public String logout() {
		ses.invalidate();
		return "redirect:/home1";
	}

	@RequestMapping("/home1")
	public String home1() {
		return "home";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String reg(@ModelAttribute("regBean") RegBean regBean) {

		if (regBean.getName() != null && regBean.getEmail() != null && regBean.getPass() != null
				&& regBean.getPhone() != null) {
			if (regService.reg(regBean) != null) {
				return "redirect:/login";
			}
		}

		return "redirect:/signup";
	}

	@RequestMapping("/sign")
	public String sign() {
		return "redirect:/signup";
	}

	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}

	
	@RequestMapping(value = "/adminaddbus1")
	public String ab(@ModelAttribute("view") DetailsBean view, Model md) {
		List<DetailsBean> v = busService.ab();
		tempObj = v;
		md.addAttribute("DetailsBean", v);
		return "adminaddbus";
	}

	@RequestMapping(value = "/AddBus", method = RequestMethod.POST)
	public String Ab(@ModelAttribute("add") DetailsBean add, Model mod) {
		busService.Ab(add);
		mod.addAttribute("msg", "New Bus added");
		return "busadd";
	}

	@RequestMapping("/busadd1")
	public String busadd1() {
		return "busadd";
	}

	@RequestMapping("/addbus")
	public String addbus() {
		return "redirect:/adminadd";

	}

	@RequestMapping("/adminadd")
	public String adminadd() {
		return "adminaddbus";
	}

	@RequestMapping("/backtoadminadd")
	public String backtoadminadd() {
		return "redirect:/cancelAfter";
	}

	@RequestMapping("/cancelAfter")
	public String cancetAfter(Model mdT) {
		mdT.addAttribute("DetailsBean", tempObj);
		return "adminaddbus";
	}
	
	@RequestMapping(value = "/viewbusdetail", method = RequestMethod.POST)
	public String vb(@ModelAttribute("viewdetail") DetailsBean viewdetail, Model model1) {
		String from = viewdetail.getFrom();
		String to = viewdetail.getTo();
		
		tempFrom = from;
		tempTo = to;
		
		List<DetailsBean> vd = busService.vb(from, to);
		tempObj = vd;
		tempObj2 = vd;
		model1.addAttribute("DetailsBean", vd);
		if (vd.size() != 0) {
			return "admindisplay";
		} else {
			String message = "No record found";
			model1.addAttribute("msg", message);
			return "adminviewbus";
		}

	}
	
	@RequestMapping(value = "/cancelSeating")
	public String cancelSeating(Model mdCS) {
		mdCS.addAttribute("DetailsBean", tempObj2);
		return "admindisplay";
	}

	@RequestMapping("/backtoAdminView")
	public String backtoAdminView() {
		return "redirect:/vbus";
	}
	
	
	@RequestMapping("/viewbus")
	public String viewbus() {
		return "redirect:/vbus";
	}

	@RequestMapping("/vbus")
	public String vbus() {
		return "adminviewbus";
	}
	
	@RequestMapping("/adminViewSeats")
	public String adminViewSeats() {
		return "DisplaySeats_admin";
	}
	

	@RequestMapping("/backtoAdminDisplay")
	public String backtoAdminDisplay() {
		return "admindisplay";
	}


	@RequestMapping(value = "/userSearchbus", method = RequestMethod.POST)
	public String sbus(@ModelAttribute("srchbus") DetailsBean srchbus, Model model2) {
		String from = srchbus.getFrom();
		String to = srchbus.getTo();
		String busname = srchbus.getName();
		
		tempFrom = from;
		tempTo = to;
		tempName = busname;
		
		List<DetailsBean> sbus = busService.sbus(from, to, busname);
		model2.addAttribute("DetailsBean", sbus);
		
		if (sbus.size() != 0) {
			return "userdisplay";
		} else {
			String message = "No record found";
			model2.addAttribute("msg", message);
			return "search";
		}
	}

	@RequestMapping("/backtoUserlanding")
	public String backtoUserlanding() {
		return "userlanding";
	}

	@RequestMapping("/backtoBook")
	public String backtoBook() {
		return "book";
	}

	@RequestMapping(value = "/searchbus", method = RequestMethod.POST)
	public String searchbus()
	{
	/*public String searchbus(@ModelAttribute("srchbus")DetailsBean search , Model model) {
		String from = search.getFrom();
		String to = search.getTo();
		
		List<DetailsBean> search1 = busService.search1(from,to);
		model.addAttribute("DetailsBean" , search1);*/
		return "search";
	}
	@RequestMapping(value = "/bookbus", method = RequestMethod.POST)
	public String bbus(@ModelAttribute("bkbus") DetailsBean bkbus, Model model3) {
		String from = bkbus.getFrom();
		String to = bkbus.getTo();
		Date bookdate = bkbus.getBookdate();
		// bkbus.setBookdate((java.sql.Date) (bookdate));
		DateFormat format2=new SimpleDateFormat("EEEE"); 
		String finalDay=format2.format(bookdate);
		
		// find day
		tempFrom = from;
		tempTo = to;
		tempDate = ""; // day

		List<DetailsBean> bbus = busService.bbus(from, to, finalDay ); // day
		model3.addAttribute("DetailsBean", bbus);

		if (bbus.size() != 0) {
			return "userbusdetail";
		} else {
			String message = "No record found";
			model3.addAttribute("msg", message);
			return "book";
		}

	}

	@RequestMapping("/booking")
	public String booking() {
		return "redirect:/bk";
	}

	@RequestMapping("/bk")
	public String bk() {
		return "book";
	}

	@RequestMapping("/viewseats")
	public String viewseats() {
		return "redirect:/seatdisplay";
	}

	@RequestMapping("/seatdisplay")
	public String seatdisplay() {
		return "displaySeats";
	}

	@RequestMapping("/confirm")
	public String confirm(Model mdConfirm) {
		String curUser = (String) ses.getAttribute("user");
		List<RegBean> rb = regService.personalDetail(curUser);
		mdConfirm.addAttribute("userData", rb);
		mdConfirm.addAttribute("uFrom", tempFrom);
		mdConfirm.addAttribute("uTo", tempTo);
		return "fulldetails";
	}
	
	@RequestMapping("/usercancel")
	public String usercancel(Model modell) {
		List<DetailsBean> bbus = busService.bbus(tempFrom, tempTo, tempDate);
		modell.addAttribute("DetailsBean", bbus);
		return "userbusdetail";
	}
	
	@RequestMapping("/backtoSeats")
	public String backtoSeats() {
		return "displaySeats";
	}

	@RequestMapping(value = "/payment", method = RequestMethod.POST)
	public String personalDetail(@ModelAttribute("regBean") RegBean perDetail, Model model) {
	    
		String name = perDetail.getName();
		List<RegBean> obj = regService.personalDetail(name);
		model.addAttribute("RegBean", obj);
		return "fulldetails";
	}

	
}
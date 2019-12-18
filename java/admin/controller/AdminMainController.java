package admin.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.Member;

@Controller
public class AdminMainController {

	private final String command = "/main.ad";
	private final String getPage = "adMain";
	private final String gotoPage = "redirect:/main.jsp";

	@RequestMapping(value = command, method = RequestMethod.GET)
	public String doAction(HttpServletResponse response, HttpSession session) {

		if ((Member) session.getAttribute("loginfo") == null) {
			return gotoPage;
		}
		Member loginfo = (Member) session.getAttribute("loginfo");
		String adCheck = loginfo.getM_email();
		if (!adCheck.equals("admin@admin.com")) {
			return gotoPage;
		}

		return getPage;

	}

}

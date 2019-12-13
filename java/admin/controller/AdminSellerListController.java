package admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import admin.model.AdminDao;
import seller.model.Seller;
import utility.Paging;

@Controller
public class AdminSellerListController {
	
	private final String command = "/listSel.ad";
	private final String getPage = "adSelList";
	
	@Autowired
	private AdminDao adDao;
	
	@RequestMapping(command)
	public String doAction(
			@RequestParam(value="whatColumn",required=false) String whatColumn,
			@RequestParam(value="keyword",required=false) String keyword,
			@RequestParam(value="pageNumber",required=false) String pageNumber,
			@RequestParam(value="pageSize",required=false) String pageSize,
			Model model, HttpServletRequest request
			) {
			Map<String, String> map = new HashMap<String,String>();
			map.put("whatColumn", whatColumn);
			map.put("keyword", "%"+keyword+"%");
			System.out.println("what?KEy"+whatColumn+keyword);
			
			int totalCount = adDao.getSelCount(map);
			System.out.println("totalCount:"+totalCount);
			String url = request.getContextPath()+command;
			Paging pageInfo = new Paging(pageNumber, pageSize, totalCount, url, whatColumn, keyword, null);	//whologin=null
			List<Seller> selList = adDao.getSelList(pageInfo, map);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("selList", selList);
		return getPage;
	}
	
}

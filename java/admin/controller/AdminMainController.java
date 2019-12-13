package admin.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminMainController {

	private final String command = "/main.ad";
	private final String getPage = "adMain";
	
	/*@Autowired
	private QDao qDao;*/
	
	@RequestMapping(value = command, method = RequestMethod.GET)
	public String doAction(HttpServletResponse response) {
		/*@RequestParam(value = "pageNumber", required = false) String pageNumber,
		@RequestParam(value = "pageSize", required = false) String pageSize,
		@RequestParam(value = "whatColumn", required = false) String whatColumn,
		@RequestParam(value = "keyword", required = false) String keyword, Model model,
			HttpServletRequest request) {
		response.setContentType("text/html;charset=utf-8");

		Map<String, String> map = new HashMap<String, String>();
		map.put("whatColumn", whatColumn);
		map.put("keyword", "%" + keyword + "%");
		System.out.println("what?KEy" + whatColumn + keyword);

		int qnaCount = qDao.getQnaCount(map);
		System.out.println("qnaCount:" + qnaCount);
		String url = request.getContextPath() + command;
		Paging pageInfo = new Paging(pageNumber, pageSize, qnaCount, url, whatColumn, keyword, null); // whologin=null
		List<Qa> qnaList = qDao.getQnaList(pageInfo, map);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("whatColumn", whatColumn);
		model.addAttribute("keyword", keyword);
		model.addAttribute("qnaList", qnaList);*/
		
		return getPage;
		
	}

}

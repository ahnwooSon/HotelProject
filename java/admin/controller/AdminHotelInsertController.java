package admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.model.AdminDao;
import hotel.model.Hotel;
import hotel.model.Room;

@Controller
public class AdminHotelInsertController {

	private final String command = "/insertHo.ad";
	private final String getPage = "adHotelInsert";
	private final String gotoPage = "redirect:/listHo.ad";
	
	@Autowired
	ServletContext application;
	@Autowired
	private AdminDao adDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doAction(@RequestParam(value="num", required=true) int num,
			Model model) {		
		model.addAttribute("selNum", num);
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public String doAction(Hotel hotel, Room rooms, MultipartHttpServletRequest	mpRequest) {
	
		/*System.out.println(hotel);
		System.out.println(rooms);
		
		int num = hotel.getS_num();
		
		//객실
		int roomcnt=0;
		for(int i=0; i<rooms.getType().length; i++) {
			String type=rooms.getType()[i];
			int price=rooms.getPrice()[i];
			String breakfast = rooms.getBreakfast()[i];
			int person = rooms.getPerson()[i];
			int stock = rooms.getStock()[i];	
			String hname = hotel.getH_name();
	
			Room room= new Room(type, price, person, stock, breakfast, hname, num);			
			roomcnt+= adDao.insertRoom(room);
		}
		
		System.out.println(hotel);
		System.out.println(rooms);
		
		System.out.println("객실등록:"+ roomcnt);
		
		//이미지 파일
		String filePath = application.getRealPath("/resources/Hotelimages/"+hotel.getH_name());
		List<MultipartFile> fileList = mpRequest.getFiles("file");
		File file = new File(filePath);
		System.out.println("파일경로:" + filePath);
		if(file.exists()==false) {
			file.mkdirs();
		}
		String image="";
		for(int i=0; i<fileList.size(); i++) {
			file= new File(filePath+File.separator+fileList.get(i).getOriginalFilename());	
			try {
				fileList.get(i).transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			image+=fileList.get(i).getOriginalFilename()+";";
		}
		hotel.setH_image(image);
		
		System.out.println(hotel);
		
		
		//호텔
		int hotelcnt = adDao.insertHotel(hotel);
		System.out.println("호텔등록:"+hotelcnt);*/
		
		return gotoPage+"?num="+hotel.getS_num();
	}	
}

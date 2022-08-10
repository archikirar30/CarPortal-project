package com.abc.CarPortal.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import com.abc.CarPortal.Service.AdminService;
import com.abc.CarPortal.Service.CarService;
import com.abc.CarPortal.Service.UserService;
import com.abc.CarPortal.dao.CarRepository;
import com.abc.CarPortal.dao.UserRepository;
import com.abc.CarPortal.dto.Bid;
import com.abc.CarPortal.dto.Car;
import com.abc.CarPortal.dto.User;

@Controller
public class CarController {

	@Autowired
	UserService service;
	
	@Autowired
	CarService carservice;

	@Autowired
	AdminService adminservice;

	@Autowired
	UserRepository userrepo;
	
	@Autowired
	CarRepository carrepo;
	
	public static String uploadDirectory = System.getProperty("user.dir")+"/src/main/resources/static/uploadedImage";
	

//	private static Logger log = LoggerFactory.getLogger(CarController.class);
//	public static String uploadDirectory = System.getProperty("user.dir") + "/uploads";

	Car car;
	List<Car> data = new ArrayList<Car>();

	/* for displaying cars registration page */
	@GetMapping(value = "/addcar")
	public String displayRegistrationPage(@ModelAttribute("addcar") Car car) {
		return "AddCar";

	}

	/* For adding user data into the database */
//	@PostMapping(value = "/mycar")
//	public String addUserData(@ModelAttribute("addcar") Car car,@RequestParam("image") MultipartFile file ) {
//		if (car.getCarname().equals("")) {
//			System.out.println("Enter value in input fields");
//			return "AddCar";
//		} else {
//			
//			StringBuilder fileNames = new StringBuilder();
//			String filename = car.getCid() + file.getOriginalFilename().substring(file.getOriginalFilename().length()-4);
//			
//			Path fileNameAndPath = Paths.get(uploadDirectory , filename);
//			
//			try {
//				Files.write(fileNameAndPath, file.getBytes());
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//			
//			car.setImage(filename);
//			car.setStatus("active");
//			service.addCar(car);
//			System.out.println("Carr data is added to the database");
//			System.out.println("New user register with name: " + car.getCarname());
//			System.out.println("Details of " + car);
//			return "redirect:/search";
//		}
//	}
	
	
	/* For adding user data into the database */
	@PostMapping(value = "/mycar")
	public String addUserData(@ModelAttribute("addcar") Car car ,@RequestParam("image") MultipartFile multipartFile, RedirectAttributes ra, Principal principal) throws IOException {
		if (car.getCarname().equals("")) {
			System.out.println("Enter value in input fields");
			return "AddCar";
		} else {
			
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
	        car.setImage(fileName);
			
			car.setStatus("active");
			Car savedCar = service.addCar(car);
			
			Path uploadPath = Paths.get(uploadDirectory);
			if (!Files.exists(uploadPath)) {
	            Files.createDirectories(uploadPath);
	        }
	        try (InputStream inputStream = multipartFile.getInputStream()) {
	            Path filePath = uploadPath.resolve(fileName);
	            System.out.println(filePath.toFile().getAbsolutePath());
	            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
	        } catch (IOException e) {
	            throw new IOException("Could not save uploaded file: " + fileName);
	        }
			
	        car.setPhotoImagePath("/uploadedImage/" + savedCar);
	        
	
	        service.addCar(car);
	        ra.addFlashAttribute("success_post", "Post has been saved successfully");
	        return "redirect:/search";
		}
	    
	        
//			//System.out.println("Carr data is added to the database");
//			System.out.println("New user register with name: " + car.getCarname());
//			System.out.println("Details of " + car);
//			return "redirect:/search";
//		}
	}

	
	/* for displaying the Appointment page */
	@GetMapping(value = "bidAppointment/{searchid}")
	public ModelAndView displayAppointmentPage(@PathVariable("searchid") Long id, @ModelAttribute("bid") Bid bid,
			Principal principal) {

		final String currentUser = principal.getName();
		User user = service.showProfile(currentUser);

		Car cardata = service.showCar(id);// for finding the cid in request handle link in appointment page

		return new ModelAndView("Appointmentform", "cardata", cardata);

	}

	/* For adding appointment data into the database */
	@PostMapping(value = "/mybid/{searchid}")
	public String addAppointmentData(@PathVariable("searchid") Long id, @ModelAttribute("bid") Bid bid,
			Principal principal) {

		final String currentUser = principal.getName();// for adding the details of logged in user
		User user = service.showProfile(currentUser);

		Car cardata = service.showCar(id); // adding the value of car in appointment table in database

		bid.setCarname(cardata.getCarname());
		bid.setCid(id);
		bid.setRegistration(cardata.getRegistration());
		bid.setModel(cardata.getModel());
		bid.setMailid(user.getMailid());
		bid.setUserId(user.getUserId());
		bid.setUserName(currentUser);
		bid.setStatus("setStatus");
		adminservice.addBid(bid);
		System.out.println(bid);
		return "redirect:/search";
	}
	
	
	/* For searching the data by different keyword */
	@RequestMapping("/search")
	public String viewSearch(Model model , @Param("keyword") String keyword) {
		List<Car> listCars = carservice.ListAll(keyword);
		System.out.println(listCars);
		model.addAttribute("cardata", listCars);
		model.addAttribute("keyword", keyword);
		
		return "Search";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	

	
	/*
	 * 
	 * @PostMapping("/saveEmployee") public @ResponseBody ResponseEntity<?>
	 * createCar(@ModelAttribute("addcar") CarsDto cars,
	 * 
	 * @RequestParam("name") final String userName, @RequestParam("designation")
	 * final String designation, final @RequestParam("file") MultipartFile file) {
	 * try { HttpHeaders headers = new HttpHeaders(); if (cars == null) { return new
	 * ResponseEntity<>(HttpStatus.BAD_REQUEST); } String[] desg =
	 * designation.split(","); String fileName = file.getOriginalFilename(); String
	 * filePath = Paths.get(uploadDirectory, fileName).toString(); String fileType =
	 * file.getContentType(); long size = file.getSize(); String fileSize =
	 * String.valueOf(size); Timestamp currentTimestamp = new
	 * Timestamp(System.currentTimeMillis());
	 * 
	 * log.info("Name: " + userName); log.info("Designation: " + desg[0]);
	 * log.info("FileName: " + file.getOriginalFilename()); log.info("FileType: " +
	 * file.getContentType()); log.info("FileSize: " + file.getSize());
	 * 
	 * // Save the file locally BufferedOutputStream stream = new
	 * BufferedOutputStream(new FileOutputStream(new File(filePath)));
	 * stream.write(file.getBytes()); stream.close();
	 * 
	 * cars.setUserName(userName); cars.setDesignation(desg[0]);
	 * cars.setFileName(fileName); cars.setFilePath(filePath);
	 * cars.setFileType(fileType); cars.setFileSize(fileSize);
	 * cars.setCreatedDate(currentTimestamp);
	 * 
	 * boolean status = service.saveEmployee(cars); if (status) {
	 * log.info("Employee Created"); headers.add("Employe Saved With Image - ",
	 * fileName); return new ResponseEntity<>("Employe Saved With File - " +
	 * fileName, headers, HttpStatus.OK); } } catch (Exception e) {
	 * e.printStackTrace(); log.info("Exception: " + e); return new
	 * ResponseEntity<>(HttpStatus.BAD_REQUEST); } return new
	 * ResponseEntity<>(HttpStatus.BAD_REQUEST); }
	 * 
	 */
}

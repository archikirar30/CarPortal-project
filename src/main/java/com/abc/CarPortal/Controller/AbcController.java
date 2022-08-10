 package com.abc.CarPortal.Controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abc.CarPortal.Service.AdminService;
import com.abc.CarPortal.Service.UserService;
import com.abc.CarPortal.dao.UserRepository;
import com.abc.CarPortal.dto.Bid;
import com.abc.CarPortal.dto.Car;
import com.abc.CarPortal.dto.User;

@Controller
public class AbcController {
	
	@Autowired
	UserService service;
	
	@Autowired
	AdminService adminservice;
	
	@Autowired
	UserRepository userrepo;
	
	User user;
	List<User> data = new ArrayList<User>();
	
	/*For displaying home page */ 
    @GetMapping(value = "/")
	public String home()
	{
    	System.out.println("******Welcome to Abc Cars portal ******");
    	System.out.println("  Find your cars , that is good for you  ");
		return "HomePage";
	}
    
    /*For displaying home page */ 
    @GetMapping(value = "/about")
    public String displayAbout()
    {
    	System.out.println("  Find more about us  ");
    	return "AboutPage";
    }
    
    /*For Registering user*/
    @GetMapping(value = "/signup")
	public String displayRegistrationPage (@ModelAttribute("register") User us) {
		return "registration";
		
	}
    
	/* For adding user data into the database */
    @PostMapping(value = "/myreg")
	public String addUserData(@ModelAttribute("register") User us) {
    	if (us.getName().equals("") ||us.getUserName().equals("")|| us.getPassword().equals("")|| us.getMailid().equals("")||us.getMobile().equals("")||us.getCountry().equals("")||us.getState().equals("")||us.getGender().equals("")) {
    		System.out.println("Enter value in input fields");
    		return "registration";
    	}else {
    	us.setRole("USER");
    	service.addUser(us);
    	System.out.println("User data is added to the database");
		System.out.println("New user register with name: "+us.getName());
		System.out.println("Details of "+ us);
		return "redirect:/login";
    	}
	}
    
	/* For login into the portal */
    @GetMapping(value = "/login")
	public String displayLoginPage ()
    {
    	System.out.println("Login with your username and password");
		return "login";
		
	}

	/* For printing error to unknown login or fail login */
    @GetMapping("/login_error")
    public String onLoginError(Model model) {
        String error = "Incorrect username or password. Try Again.";
        model.addAttribute("error_string", error);
        return "login";
    }    
    
	/* For displaying the contact form */
    @GetMapping(value = "/contact")
	public String displayContactPage ()
    {
    	System.out.println("Contact us for any query");
		return "contact";
		
	}
    
	/* For displaying user's profile */  
    @GetMapping(value = "/profile")
   	public ModelAndView displayProfilePage (Principal principal)
       {
    	final String currentUser = principal.getName();// for adding the details of logged in user 
        User user = service.showProfile(currentUser); 
       	System.out.println("View your profile : "+user);
   		return new ModelAndView("Profile","searchdata", user);
   		
   	}
    
    @GetMapping(value = "/saveLoggedUserData")
    public String updateLoggedUserData(@RequestParam("userId") Long id,
    		@RequestParam("name") String name ,
    		@RequestParam("userName") String userName ,
    		@RequestParam("password") String password ,
    		@RequestParam("mailid") String mailid ,
    		@RequestParam("mobile") String mobile,
    		@RequestParam("age") Long age,
    		@RequestParam("state") String state,
    		@RequestParam("country") String country,
    		@RequestParam("gender") String  gender,
    		@RequestParam("image") String image) {
    	String role = "USER";
        User user = new User(id,name,userName,password,mailid,mobile,age,state,country,gender,image,role);
        service.addUser(user);
        System.out.println(user);
        return "redirect:/profile";

    }
    
    
	/* for displaying the admin side home page */ 
    @GetMapping(value = "/admin")
	public ModelAndView displayAdminHome()
	{
    	System.out.println("******Welcome to Abc Cars portal ******");
    	System.out.println("  Find your cars , that is good for you  ");
    	
    	List<Car> data = adminservice.showAllCar();
    	System.out.println(data);
		return new ModelAndView("AdminDashboard", "cardata", data);
	}	
    
    /*For showing the User details*/
    @GetMapping(value="/viewuser") 
    public ModelAndView viewUsers(){
    	
    	List <User> data = adminservice.showAllUser();
    	System.out.println(data);
    	return new ModelAndView("UserData","userdata",data);
    }
    
    
	/* for displaying all the cars in the portal */ 
    @GetMapping(value="/viewallbid") 
	public ModelAndView viewBidding(){
        
		List <Bid> BidRecord = adminservice.showAllBidding();
		System.out.println(BidRecord);
		return new ModelAndView("BidData","biddata",BidRecord);
	}
    
    /* For updating the Cars that is posted in portal */
	 @GetMapping(value="updateCar/{searchid}")
	    public ModelAndView displayUpdateCar(@PathVariable("searchid")Long id) {
	    	Car carinfo = service.updateCar(id);
	    	System.out.println(carinfo);
	    	return new ModelAndView("UpdateCar","searchdata" , carinfo);
	    }
	    
	    @GetMapping(value = "/saveUpdateData")
	    public String updateData(@RequestParam("cid") Long cid,
	    		@RequestParam("userName") String userName ,
	    		@RequestParam("carname") String cname ,
	    		@RequestParam("mobile") String mobile ,
	    		@RequestParam("model") String model ,
	    		@RequestParam("registration") String registration,
	    		@RequestParam("state") String state,
	    		@RequestParam("country") String country,
	    		@RequestParam("price") String  price,
	    		@RequestParam("image") String image,
	    		@RequestParam("color") String color,
	    	    @RequestParam("PhotoImagePath") String path) {
	    	String usedNew = "used";
	    	String status ="active";
	        Car cars = new Car(cid,userName,cname,mobile,model,registration,state,country,price,image,color,usedNew,status,path);
	        service.addCar(cars);
	        System.out.println(cars);
	        return "redirect:/admin";

	    }
	    
	    /* For updating the User that is posted in portal */
		 @GetMapping(value="updateUser/{searchid}")
		    public ModelAndView displayUserUpdate(@PathVariable("searchid")Long id) {
		    	User userinfo = service.updateUser(id);
		    	System.out.println(userinfo);
		    	return new ModelAndView("UpdateUserProfile","searchdata" , userinfo);
		    }
		    
		    @GetMapping(value = "/saveUpdateUserData")
		    public String updateUserData(@RequestParam("userId") Long id,
		    		@RequestParam("name") String name ,
		    		@RequestParam("userName") String userName ,
		    		@RequestParam("password") String password ,
		    		@RequestParam("mailid") String mailid ,
		    		@RequestParam("mobile") String mobile,
		    		@RequestParam("age") Long age,
		    		@RequestParam("state") String state,
		    		@RequestParam("country") String country,
		    		@RequestParam("gender") String  gender,
		    		@RequestParam("image") String image) {
		    	String role = "USER";
		        User user = new User(id,name,userName,password,mailid,mobile,age,state,country,gender,image,role);
		        service.addUser(user);
		        System.out.println(user);
		        return "redirect:/viewuser";

		    }
	
		/* For Deleting the Car by car id */  
	    @GetMapping(value="delete/{searchid}")
	    public String deleteCarById(@PathVariable("searchid")Long id) {
	    	adminservice.deleteCar(id);
	    	return "redirect:/admin";
	    } 
	    
	    /* For Deleting the User by car id */  
	    @GetMapping(value="deleteuser/{searchid}")
	    public String deleteUserById(@PathVariable("searchid")Long id) {
	    	adminservice.deleteUser(id);
	    	return "redirect:/viewuser";
	    } 
	    
	    /* For approving the bid appointment by car id */  
	    @GetMapping(value="approve/{searchid}")
	    public String approveBidById(@PathVariable("searchid")Long id) {
	    	Bid bid = service.showBid(id);
	    	if(bid.getStatus().equals("setStatus") || bid.getStatus().equals("reject")) {
	    		bid.setStatus("approved");
	    		adminservice.addBid(bid);
	    		System.out.println("Bid appointment id "+bid.getBid() +" "+"is"+bid.getStatus());
	    	
	    	}
	    	
	    	return "redirect:/viewallbid";
	    } 
	    
		/* for rejecting the bid booking appointmnet */
	    @GetMapping(value="reject/{searchid}")
	    public String rejectBidById(@PathVariable("searchid")Long id) {
	    	Bid bid = service.showBid(id);
	    	
	    	if (bid.getStatus().equals("approved") || bid.getStatus().equals("setStatus")) {
	    		bid.setStatus("reject");
	    		adminservice.addBid(bid);
	    		System.out.println("Bid appointment id "+bid.getBid() +" "+"is"+bid.getStatus());
	    		
	    	}
	    	
	    	return "redirect:/viewallbid";
	    } 
	    
	    /* For Deactivating the Car by car id */  
	    @GetMapping(value="deactivate/{searchid}")
	    public String deactivateCarById(@PathVariable("searchid")Long id ) {
	    	
	    	Car car = service.showCar(id);
	    	if(car.getStatus().equals("active")) {
	    		car.setStatus("deactive");
	    		service.addCar(car);
	    		System.out.println("changed status into :"+ car.getStatus());
	    		
	    	}
	    	else if(car.getStatus().equals("deactive")) {
	    		car.setStatus("active");
	    		service.addCar(car);
	    		System.out.println("changed status into :"+ car.getStatus());
	    		
	    	}
	 
	    	return "redirect:/admin";
	    } 
	    
	    
	    /* For Making User as Admin */  
	    @GetMapping(value="assign/{searchid}")
	    public String MakeUserAdminById(@PathVariable("searchid")Long id ) {
	    	
	    	User user = service.showUser(id);
	    	if(user.getRole().equals("USER")) {
	    		user.setRole("ADMIN");
	    		service.addUser(user);
	    		System.out.println("changed role  into :"+user.getRole());
	    		
	    	}
	    	else if(user.getRole().equals("ADMIN")) {
	    		user.setRole("USER");
	    		service.addUser(user);
	    		System.out.println("changed role into :"+ user.getRole());
	    		
	    	}
	    	
	    	return "redirect:/viewuser";
	    } 
	    

}

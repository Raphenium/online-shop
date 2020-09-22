//package net.kzn.onlineshopping.controller;
//
//import java.util.ArrayList;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.web.bind.annotation.ControllerAdvice;
//import org.springframework.web.bind.annotation.ModelAttribute;
//
//import net.kzn.onlineshopping.model.RegisterModel;
//import net.kzn.onlineshopping.model.UserModel;
//import net.kzn.onlineshopping.model.UserModelList;
//import net.kzn.shoppingbackend.dao.UserDAO;
//import net.kzn.shoppingbackend.dto.Cart;
//import net.kzn.shoppingbackend.dto.User;
//import java.util.ArrayList;
//
//@ControllerAdvice
//public class GlobalController {
//	
//	
//	@Autowired
//	private UserDAO userDAO;
//	
//	@Autowired
//	private HttpSession session;
//	
//	@Autowired
//	private UserModelList userModelList = new UserModelList();
//	
//	public UserModelList init() { 
//		  return new UserModelList();
//		 } 
//	
//	private UserModel userModel = null;
//	
//	private User user = null;	
//	
//	
//	@ModelAttribute("userModel")
//	public UserModelList getUserModel() {		
//		if(session.getAttribute("userModel")==null) {
//			// get the authentication object
//			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//			
//			if(!authentication.getPrincipal().equals("anonymousUser")){
//				// get the user from the database
//				user = userDAO.getByEmail(authentication.getName());
//				
//				if(user!=null) {
//					// create a new model
//					userModel = new UserModel();
//					// set the name and the id
//					userModel.setId(user.getId());
//					userModel.setFullName(user.getFirstName() + " " + user.getLastName());
//					userModel.setRole(user.getRole());
//					UserModelList userModelList = new UserModelList();
//					userModelList.getUsers().add(userModel);	
//					
//					session.setAttribute("userModelList", userModelList.getUsers());
//					return userModelList;
//				}			
//			}
//		}
//		return (UserModelList) session.getAttribute("userModelList");		
//	}	
//}

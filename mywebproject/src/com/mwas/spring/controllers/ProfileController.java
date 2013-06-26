/**
 * 
 */
package com.mwas.spring.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.datatable.bean.EducationHistory;
import com.datatable.bean.Profile;
import com.datatable.bean.SkillSet;
import com.datatable.bean.WorkHistory;

/**
 * @author asus
 *
 */
@Controller
public class ProfileController {

private ModelAndView profileMV;
{
	try
	{
		profileMV=new ModelAndView("/profile/profile");
	}
	catch(Exception e)
	{
	
	}
}

@ModelAttribute("aboutMe")
 public Profile getProfileFromDB()
 {
	return null;
	 
	 
	 
 }

@ModelAttribute("skillSet")
public SkillSet getSkillSetFromDB()
{
	return null;
	
	
}

@ModelAttribute("WH")
public WorkHistory getWHFromDB(){
	return null;
	
}

@ModelAttribute("EHF")
public EducationHistory getEHFromDB()
{
	return null;
	
}

@RequestMapping(value="/profile.htm",method=RequestMethod.GET,params="submit=profile")
public ModelAndView createProfile(HttpServletRequest arg0,HttpServletResponse arg1)
{
	return profileMV;
	
	
}

}
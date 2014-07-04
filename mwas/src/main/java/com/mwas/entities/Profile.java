/**
 * 
 */
package com.mwas.entities;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * @author rramanathan
 *
 */
public class Profile implements Serializable 
{

	private static final long serialVersionUID = 1L;
	protected int SPACE_ID;
	protected String firstName;
	protected String lasttName;	
	protected String userName;

	
	private ArrayList<String> attributeList = null;
	/**
	 * @return the employeeName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param employeeName the employeeName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	/**
	 * @return the sPACE_ID
	 */
	public synchronized int getSPACE_ID() {
		return SPACE_ID;
	}
	/**
	 * @param sPACE_ID the sPACE_ID to set
	 */
	public synchronized void setSPACE_ID(int sPACE_ID) {
		SPACE_ID = sPACE_ID;
	}
	/**
	 * @return the lasttName
	 */
	public synchronized String getLasttName() {
		return lasttName;
	}
	/**
	 * @param lasttName the lasttName to set
	 */
	public synchronized void setLasttName(String lasttName) {
		this.lasttName = lasttName;
	}
	/**
	 * @return the userName
	 */
	public synchronized String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public synchronized void setUserName(String userName) {
		this.userName = userName;
	}
	public List getAttributes() 
	{
		 attributeList = new ArrayList<String>();
		 attributeList.add("EmployeeName");
		 attributeList.add("Hr_ID");
		 attributeList.add("Designation");
		// attributeList.add("Division");
		
		 return attributeList;
	}
	
	public void setAttributeValues(Map<String, Object> valueMap)
	{
	   Iterator iterator =  attributeList.iterator();
	   Class[] parameterTypes = null;
	   Object[] args = null;
	   
	   while(iterator.hasNext())
	   {
		   String attribute = (String)iterator.next();
		   if (attribute.equalsIgnoreCase("FirstName"))
		   {
			   parameterTypes = new Class[]{String.class};  
			   args = new Object[]{new String((String)valueMap.get(attribute))};
		   }
		   else if (attribute.equalsIgnoreCase("SPACE_ID"))
		   {
			   parameterTypes = new Class[]{int.class};
			   args = new Object[]{new Integer((Integer)valueMap.get(attribute))};
		   }
		   else if (attribute.equalsIgnoreCase("LastName"))
		   {
			   parameterTypes = new Class[]{String.class};
			   args = new Object[]{new String((String)valueMap.get(attribute))};
		   }
		   else if (attribute.equalsIgnoreCase("UserName"))
		   {
			   parameterTypes = new Class[]{String.class};
			   args = new Object[]{new String((String)valueMap.get(attribute))};
		   }
		   try 
		   {
			Profile.class.getMethod("set"+attribute, parameterTypes).invoke(this,args);
		   } catch (IllegalAccessException e)
		   {
			   e.printStackTrace();
		   }catch (IllegalArgumentException e){
			   e.printStackTrace();
		   }catch (InvocationTargetException e){
			   e.printStackTrace();
		   }
		    catch(NoSuchMethodException e){
		    	e.printStackTrace();
		    }
		    catch (SecurityException e) 
		   {
		 
			e.printStackTrace();  ////Use Logger
		   }
	   }		
	}
}

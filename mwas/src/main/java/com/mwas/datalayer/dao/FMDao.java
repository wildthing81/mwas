/**
 * 
 */
package com.mwas.datalayer.dao;



import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mwas.entities.Profile;
import com.mwas.entities.LinkedInProfile;


/**
 * @author kartik
 *
 */
@Repository("fmDao")
public class FMDao {
		 
		@Autowired
	    private SessionFactory sessionFactory;
	    
	    public  LinkedInProfile getLinkedInProfile(final int id)
	    {
	    	return (LinkedInProfile)sessionFactory.getCurrentSession().get(LinkedInProfile.class, new Integer(id));
	    }
	    
	    public  Profile getProfile(final int id)
	    {
	    	return (Profile)sessionFactory.getCurrentSession().get(Profile.class, new Integer(id));
	    }
	    
	    public void setLinkedInProfile(LinkedInProfile entity)
	    {
	    	sessionFactory.getCurrentSession().saveOrUpdate(entity);
	    }
	    
	    public void setProfile(Profile entity)
	    {
	    	sessionFactory.getCurrentSession().saveOrUpdate(entity);
	    }

	    public SessionFactory getSessionFactory()
	    {
	        return sessionFactory;
	    }
}

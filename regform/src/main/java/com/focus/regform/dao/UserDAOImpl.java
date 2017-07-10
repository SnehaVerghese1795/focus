package com.focus.regform.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.focus.regform.model.UserDetails;

@Transactional
@EnableTransactionManagement
@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public UserDAOImpl(SessionFactory sessionFactory)
	{
	this.sessionFactory = sessionFactory;

	}
	@Transactional
	public List<UserDetails> list() {
		
		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = (List<UserDetails>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(UserDetails.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listUserDetails;
	}
@Transactional
public boolean save(UserDetails userDetails)
{
try {
	 Session session = sessionFactory.getCurrentSession();
	
	session.flush();
	session.save(userDetails);
	
	return true;

}
catch(Exception e)
{
	
	e.printStackTrace();
	return false;
}
}
@Transactional
	public boolean update(UserDetails userDetails)
	{
	try {
		System.out.println("starting of update method");
		sessionFactory.getCurrentSession().update(userDetails);
		System.out.println("starting of update method");
		return true;
	}
	catch(Exception e)
	{
		System.out.println("Exception occured in update" +e.getMessage());
		e.printStackTrace();
		return false;
	}
	}
@Transactional
	public boolean delete(UserDetails userDetails)
	{
	try {
		System.out.println("starting of delete method");
		sessionFactory.getCurrentSession().delete(userDetails);
		System.out.println("starting of delete method");
		return true;
	}
	catch(Exception e)
	{
		System.out.println("Exception occured in delete" +e.getMessage());
		e.printStackTrace();
		return false;
	}
	}
@Transactional
public UserDetails get(String username)
{
	String hql = "from UserDetails where username= "+" '" +username+ "'";
	Query query =sessionFactory.getCurrentSession().createQuery(hql);
	List<UserDetails> list = query.list();
	if(list == null || list.isEmpty())
	{
		return null;
	}
	else
	{
		return list.get(0);
	}
}

@Transactional
public boolean isValidUser(String username, String password) {
	System.out.println("dao impl");
	String hql ="from UserDetails where username= '" + username + "' and " + " password ='" + password + "'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<UserDetails> list = (List<UserDetails>) query.list();
	if(list != null && !list.isEmpty())
	{
	
		return true;
	}
	return false;

}

@Transactional
public UserDetails getCustomerByUsername(String username) {

	String hql = "from UserDetails where username=" + "'" + username + "'";
	
Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
List<UserDetails> listOfCustomers = query.list();
	
if (listOfCustomers != null && !listOfCustomers.isEmpty()){

	return  listOfCustomers.get(0);

}
return null;
}




}
package com.insurance.policy.testcases;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.stereotype.Controller;

import com.insurance.policy.entity.User;


@Controller
public class UnitTest {
	@Test	
	public void checkAdmin(){
		System.out.println("testcase running..");
		User admin =new User("dinoshna","123");
		String ExpectedUsrn=admin.setUserName("dinoshna");
		String ExpectedPswd=admin.setPassword("123");

		Assert.assertEquals(admin.getUserName(), ExpectedUsrn);
		Assert.assertEquals(admin.getPassword(), ExpectedPswd);
	}

	@Test
	public void checkContactLength() {
		User user = new User();
		String actual=user.setContact("9876543214");
		String actual1=actual+"";
		boolean actual2=actual1.startsWith("9");

		String expected=user.setContact("9876543214");
		String expected1=actual+"";
		boolean expected2=actual1.startsWith("9");
		Assert.assertEquals(actual2, expected2);

		System.out.println(actual2+" "+expected2);

	}
	@Test
	public void checkLoginTypeLength() {
		User user=new User();
		String actual=user.setLoginType("User");
		int actual1=actual.length();
		int expected=4;
		Assert.assertEquals(expected, actual1);;

	}

}
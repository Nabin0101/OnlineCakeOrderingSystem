package com.nextstep.cakeconfections.dao;

import com.nexstep.cakeconfections.model.SignupDto;

public interface SignupDao {
	public void insertUserDetails(SignupDto signupdto);
	public boolean checkCustomer(SignupDto signupdto);
}

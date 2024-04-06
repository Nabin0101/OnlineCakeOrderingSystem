package com.nextstep.cakeconfections.dao;

import java.util.ArrayList;

import com.nexstep.cakeconfections.model.VenderDto;

public interface RegisterDao {
	public void insertProductDetails(VenderDto venderdto);
	public  VenderDto getProductDetails(int id);
}

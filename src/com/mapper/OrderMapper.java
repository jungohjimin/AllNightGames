package com.mapper;

import java.util.ArrayList;

import com.vo.Orderr;

public interface OrderMapper {
	public void insert(Orderr obj);
	public void delete(int obj);
	public void update(Orderr obj);
	public Object select(int obj);
	public ArrayList<Orderr> selectall();
}

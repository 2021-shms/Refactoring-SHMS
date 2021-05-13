package com.shms.manager;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface ManagerMapper {
	public int count(Manager manager) throws Exception;
	public List<Manager> list(Manager manager) throws Exception;
	public Manager select(Manager manager) throws Exception;
	public void insert(Manager manager) throws Exception;
	public void update(Manager manager) throws Exception;
	public void delete(Manager manager) throws Exception;
}

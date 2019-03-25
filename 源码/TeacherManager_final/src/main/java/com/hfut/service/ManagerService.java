package com.hfut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.hfut.mapping.ManagerMapper;
import com.hfut.domain.Manager;
import com.hfut.exception.ManagerLoginException;

@Service
@Scope("singleton")
public class ManagerService {
	@Resource
	private ManagerMapper mngDAO;
	public Manager mngLogin(String adno, String adpwd) 
			 throws  ManagerLoginException {
    	Map<String,Object> map=new HashMap<>();
		map.put("adno", adno);
		map.put("adpwd", adpwd);
    	List<Manager> list = mngDAO.queryByNamePassword(map);
        System.out.println("3333");
    	if (list.size() == 0) {
    		System.out.println("size is 0");
        	throw new ManagerLoginException("error");
        }
        
        if (list.size() > 1) {
        	System.out.println("size more ");
        	throw new ManagerLoginException("error");
        }
        return list.get(0);
    }
	public boolean mngchangepwd(String userid, String password) {
		Map<String,String> map = new HashMap<>();
		map.put("adno", userid);
		map.put("adpwd",password);
		try{
			mngDAO.updateMngPwd(map);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	
}

package com.hfut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.hfut.mapping.BossMapper;
import com.hfut.domain.Boss;
import com.hfut.exception.BossLoginException;

@Service
@Scope("singleton")
public class BossService {
	@Resource
	private BossMapper bossDAO;
	
	public Boss bossLogin(String bossname, String password) 
			 throws BossLoginException {
    	Map<String,Object> map=new HashMap();
		map.put("bossname", bossname);
		map.put("password", password);
		System.out.println("2222");
    	List<Boss> list = bossDAO.queryByNamePassword(map);
        System.out.println("3333");
    	if (list.size() == 0) {
    		System.out.println("size is 0");
        	throw new BossLoginException("error");
        }
        
        if (list.size() > 1) {
        	System.out.println("size more ");
        	throw new BossLoginException("error");
        }
        System.out.println(list.get(0).getBossname());
        return list.get(0);
    }
	
	public List<Boss> getAllBoss() {
		List<Boss> list = bossDAO.getAllBoss();	
		return list;
	}

	public boolean bosschangepwd(String userid, String password) {
		Map<String,String> map = new HashMap<>();
		map.put("bossnum", userid);
		map.put("bosspwd",password);
		try{
			bossDAO.updateBossPwd(map);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
}

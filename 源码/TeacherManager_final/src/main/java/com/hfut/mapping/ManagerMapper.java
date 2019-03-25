package com.hfut.mapping;

import java.util.List;
import java.util.Map;
import com.hfut.domain.Boss;
import com.hfut.domain.Manager;


public interface ManagerMapper {
	public List<Manager> queryByNamePassword(Map<String, Object> map);

	public void updateMngPwd(Map<String, String> map);
}

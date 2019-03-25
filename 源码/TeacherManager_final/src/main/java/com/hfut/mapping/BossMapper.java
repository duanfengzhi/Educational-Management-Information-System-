package com.hfut.mapping;

import java.util.List;
import java.util.Map;
import com.hfut.domain.Boss;


public interface BossMapper {
	public List<Boss> queryByNamePassword(Map<String, Object> map);
	public List<Boss> getAllBoss();
	public void updateBossPwd(Map<String, String> map);
}

package com.hfut.mapping;

import java.util.List;
import java.util.Map;

import com.hfut.domain.FeedBack;

public interface FeedBackMapper {
	public void addFeedBack(FeedBack fb);
	
	public int queryMaxCount(Map<String, Object> map);
	public List<FeedBack> queryByPage(Map<String, Object> map);
	
	public int queryMaxCountByStunum(Map<String, Object> map);
	public List<FeedBack> queryByPageAndStunum(Map<String, Object> map);
	
	public int queryMaxCountByRecipient(Map<String, Object> map);
	public List<FeedBack> queryByPageAndRecipient(Map<String, Object> map);
	
	public FeedBack getByFnum(int fnum);
	public void setRecipient(FeedBack fb);
	public void setReply(FeedBack fb);

	public String getFeedbackStuName(String stuNum);
}

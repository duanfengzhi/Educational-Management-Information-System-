package com.hfut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.hfut.domain.FeedBack;
import com.hfut.mapping.FeedBackMapper;
import com.hfut.state.FeedBackQueryState;
import com.hfut.util.WebUtil;

@Service
@Scope("singleton")
public class FeedBackService {
	@Resource
	private FeedBackMapper feedbackDAO;
	
	public FeedBack sendFeedBack(FeedBack fb) {
		feedbackDAO.addFeedBack(fb);
		return fb;
	}
	
	public int getLastPage(FeedBackQueryState state) {
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("date1", state.getDate1());
    	map.put("date2", state.getDate2());
    	map.put("status", state.getStatus());
		int count = feedbackDAO.queryMaxCount(map);
		
		int maxPage = (count + WebUtil.MAX_PAGE_LINES - 1) / WebUtil.MAX_PAGE_LINES;
		int lastPage = (maxPage > 0) ? maxPage - 1 : 0;  
        return lastPage;
	}
	
	public List<FeedBack> getFeedBackByPage(FeedBackQueryState state, String page) {
		int curPage = state.getCurPage();
		switch (page) {
			case "0":
				curPage = 0;
				break;
			case "prev":
				if (curPage > 0) curPage--;
				break;
			case "next":
				if (curPage < state.getLastPage()) curPage++;
				break;
			default:
				curPage = state.getLastPage();
				break;
		}
		state.setCurPage(curPage);
		
		Map<String, Object> map = new HashMap<>();
		map.put("startRow", state.getCurPage() * WebUtil.MAX_PAGE_LINES);
		map.put("rowCount", WebUtil.MAX_PAGE_LINES);
		map.put("date1", state.getDate1());
    	map.put("date2", state.getDate2());
    	map.put("status", state.getStatus());
		
		List<FeedBack> list = feedbackDAO.queryByPage(map);
        return list;
	}
	
	public List<FeedBack> getFeedBack(FeedBackQueryState state) {
    	Map<String, Object> map = new HashMap<>();
		map.put("startRow", state.getCurPage() * WebUtil.MAX_PAGE_LINES);
		map.put("rowCount", WebUtil.MAX_PAGE_LINES);
		map.put("date1", state.getDate1());
    	map.put("date2", state.getDate2());
    	map.put("status", state.getStatus());
    	
    	List<FeedBack> list = feedbackDAO.queryByPage(map);
        return list;
    }
	
	public int getLastPageByStunum(FeedBackQueryState state, String stunum) {
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("date1", state.getDate1());
    	map.put("date2", state.getDate2());
    	map.put("status", state.getStatus());
    	map.put("stunum", stunum);
    	
		int count = feedbackDAO.queryMaxCountByStunum(map);
		
		int maxPage = (count + WebUtil.MAX_PAGE_LINES - 1) / WebUtil.MAX_PAGE_LINES;
		int lastPage = (maxPage > 0) ? maxPage - 1 : 0;  
        return lastPage;
	}
	
	public List<FeedBack> getFeedBackByPageAndByStunum(FeedBackQueryState state, String page, String stunum) {
		int curPage = state.getCurPage();
		switch (page) {
			case "0":
				curPage = 0;
				break;
			case "prev":
				if (curPage > 0) curPage--;
				break;
			case "next":
				if (curPage < state.getLastPage()) curPage++;
				break;
			default:
				curPage = state.getLastPage();
				break;
		}
		state.setCurPage(curPage);
		
		Map<String, Object> map = new HashMap<>();
		map.put("startRow", state.getCurPage() * WebUtil.MAX_PAGE_LINES);
		map.put("rowCount", WebUtil.MAX_PAGE_LINES);
		map.put("date1", state.getDate1());
    	map.put("date2", state.getDate2());
    	map.put("status", state.getStatus());
    	map.put("stuNum", stunum);
		
		List<FeedBack> list = feedbackDAO.queryByPageAndStunum(map);
        return list;
	}
	
	public List<FeedBack> getFeedBackByStunum(FeedBackQueryState state, String stunum) {
    	Map<String, Object> map = new HashMap<>();
		map.put("startRow", state.getCurPage() * WebUtil.MAX_PAGE_LINES);
		map.put("rowCount", WebUtil.MAX_PAGE_LINES);
		map.put("date1", state.getDate1());
    	map.put("date2", state.getDate2());
    	map.put("status", state.getStatus());
    	map.put("stunum", stunum);
    	
    	List<FeedBack> list = feedbackDAO.queryByPageAndStunum(map);
        return list;
    }
	
	public int getLastPageByRecipient(FeedBackQueryState state, String recipient) {
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("date1", state.getDate1());
    	map.put("date2", state.getDate2());
    	map.put("status", state.getStatus());
    	map.put("recipient", recipient);
    	
		int count = feedbackDAO.queryMaxCountByRecipient(map);
		
		int maxPage = (count + WebUtil.MAX_PAGE_LINES - 1) / WebUtil.MAX_PAGE_LINES;
		int lastPage = (maxPage > 0) ? maxPage - 1 : 0;  
        return lastPage;
	}
	
	public List<FeedBack> getFeedBackByPageAndRecipient(FeedBackQueryState state, String page, String recipient) {
		int curPage = state.getCurPage();
		switch (page) {
			case "0":
				curPage = 0;
				break;
			case "prev":
				if (curPage > 0) curPage--;
				break;
			case "next":
				if (curPage < state.getLastPage()) curPage++;
				break;
			default:
				curPage = state.getLastPage();
				break;
		}
		state.setCurPage(curPage);
		
		Map<String, Object> map = new HashMap<>();
		map.put("startRow", state.getCurPage() * WebUtil.MAX_PAGE_LINES);
		map.put("rowCount", WebUtil.MAX_PAGE_LINES);
		map.put("date1", state.getDate1());
    	map.put("date2", state.getDate2());
    	map.put("status", state.getStatus());
    	map.put("recipient", recipient);
		
		List<FeedBack> list = feedbackDAO.queryByPageAndRecipient(map);
        return list;
	}
	
	public List<FeedBack> getFeedBackByRecipient(FeedBackQueryState state, String recipient) {
    	Map<String, Object> map = new HashMap<>();
		map.put("startRow", state.getCurPage() * WebUtil.MAX_PAGE_LINES);
		map.put("rowCount", WebUtil.MAX_PAGE_LINES);
		map.put("date1", state.getDate1());
    	map.put("date2", state.getDate2());
    	map.put("status", state.getStatus());
    	map.put("recipient", recipient);
    	
    	List<FeedBack> list = feedbackDAO.queryByPageAndRecipient(map);
        return list;
    }
	
	public FeedBack getByFnum(int fnum) {
		return feedbackDAO.getByFnum(fnum);
	}
	
	public FeedBack setRecipient(FeedBack fb) {
		feedbackDAO.setRecipient(fb);
		return fb;
	}
	
	public FeedBack setReply(FeedBack fb) {
		feedbackDAO.setReply(fb);
		return fb;
	}

	public String getFeedbackStuName(String stuNum) {
		return feedbackDAO.getFeedbackStuName(stuNum) ;
	}
}

package model.service;

import java.sql.SQLException;
import java.util.List;

import model.Policy;
import model.Scrap;
import model.User;
import model.dao.PolicyDAO;
import model.dao.ScrapDAO;

public class ScrapManager {
	
	private static ScrapManager scMan = new ScrapManager();
	private ScrapDAO scrapDAO;
	
	private ScrapManager() {
		try {
			scrapDAO = new ScrapDAO();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static ScrapManager getInstance() {
		return scMan;
	}

	// 스크랩 추가
	public Scrap add(Scrap scrap) throws SQLException {
		return scrapDAO.addScrap(scrap);
	}
	
	// 스크랩 취소
	public int cancel(String userId) throws SQLException {
		return scrapDAO.cancelScrap(userId);
	}
	
	// 사용자가 스크랩한 리스트 가져오기
	public List<Scrap> getScrapList(String userId) throws SQLException {
		return scrapDAO.getScrapList(userId);
	}
}

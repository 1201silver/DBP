package model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Policy;
import model.Scrap;

public class ScrapDAO {

	private JDBCUtil jdbcUtil = null;
	
	public ScrapDAO() {			
		jdbcUtil = new JDBCUtil();	
	}
	
	/* ��ũ���� ��å ����Ʈ�� �߰� */
	public List<Scrap> addScrap(String userId, int policyId) {
		
		String sql = "INSERT INTO Scrap VALUES (?, ?) ";
				
		
		Object[] param = new Object[] {userId, policyId};
		jdbcUtil.setSqlAndParameters(sql, param);
		
		try {
			ResultSet rs = jdbcUtil.executeQuery();			// query ����			
			List<Scrap> scrapList = new ArrayList<Scrap>();	// Policy���� ����Ʈ ����
			
			while (rs.next()) {
				Scrap scrap = new Scrap (			// Policy ��ü�� �����Ͽ� ���� ���� ������ ����
						rs.getString("userId"),
						rs.getInt("policyId")
						);
				scrapList.add(scrap);				// List�� Policy ��ü ����
			}		
			return scrapList;					
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close();		// resource ��ȯ
		}
		return null;
	}
	
	public int cancelScrap(String userId) throws SQLException {
		
		String sql = "DELETE FROM Scrap "
				   + "WHERE userId=?";
		
		jdbcUtil.setSqlAndParameters(sql, new Object[] {userId});
		
		try {
			int result = jdbcUtil.executeUpdate();
			return result;
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close();
		}
		return 0;
	}

	
}

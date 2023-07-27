package com.travelmaker.board.model.dao;

import static com.travelmaker.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.travelmaker.board.model.vo.Category;
import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.member.model.dao.MemberDAO_ash;

public class BoardDAO_phj {
	
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Properties prop = null;
	
	public BoardDAO_phj() {
		try {
			prop = new Properties();
			
			String filePath = BoardDAO_phj.class.getResource("/com/travelmaker/sql/board/board-sql-phj.xml").getPath(); 
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
	/** 카테고리 조회 DAO
	 * @param conn
	 * @param ctgrNo
	 * @return list
	 * @throws Exception
	 */
	public List<Category> selectCategory(Connection conn, int ctgrNo) throws Exception {
		
		List<Category> list = new ArrayList<Category>();
		
		try {
			String sql = prop.getProperty("selectCategory");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, ctgrNo);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				
				Category category = new Category();
				
				category.setCategoryNo( rs.getInt(1));
				category.setCategoryName( rs.getString(2));
				category.setCategorySubNo(rs.getInt(3));
				
				list.add(category);
			}
			
			
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

}

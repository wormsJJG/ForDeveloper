package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DBPK.JDBCConnection;
import DTO.developerDTO;

public class memberDAO {
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = "";
	public int registerDeveloper(developerDTO dto) {
		int status = 0;
		try {
			conn = JDBCConnection.getConnection();
			sql = "INSERT INTO TBL_DEVELOPER VALUES (?,?,DBMS_RANDOM.STRING('A', 15),?,?,'N','NULL',?,0,'N',?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, dto.getId());
			stmt.setString(2, dto.getPassword());
			stmt.setString(3, dto.getdName());
			stmt.setString(4, dto.getdLanguage());
			stmt.setDate(5, dto.getRegisterDay());
			stmt.setString(6, dto.getdPhone());
			stmt.setString(7, dto.getPosition());
			status = stmt.executeUpdate();
			if(status>0) {
				conn.commit();
			}else {
				conn.rollback();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, stmt, conn);
		}
		return status;
	}
	public boolean login(String id, String password) {
		boolean check = false;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select password from tbl_developer where id = ?";
			String sql2 = "update TBL_DEVELOPER set dstatus='Y' where id=? ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()) {
				if(password.equals(rs.getString("password"))) {
					stmt = conn.prepareStatement(sql2);
					stmt.setString(1, id);
					int status = stmt.executeUpdate();
					if(status>0) {
						check = true;
						conn.commit();
					}else {
						conn.rollback();
					}
				}
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return check;
	}
	public int logout(String id) {
		int status = 0;
		try {
			conn = JDBCConnection.getConnection();
			sql = "update TBL_DEVELOPER set dstatus='N' where id=? ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			status = stmt.executeUpdate();
			if(status>0) {
				conn.commit();
			}else {
				conn.rollback();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}

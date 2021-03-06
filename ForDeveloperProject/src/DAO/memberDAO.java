package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DBPK.JDBCConnection;
import DTO.developerDTO;
import DTO.findDevDTO;
import DTO.groupInfoDTO;
import DTO.groupListDTO;
import DTO.recipientDTO;
import DTO.sendDTO;

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
		} finally {
			JDBCConnection.close(rs, stmt, conn);
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
		} finally {
			JDBCConnection.close(rs, stmt, conn);
		}
		return status;
	}
	public String findPassword(String id) {
		String password = "";
		try {
			conn = JDBCConnection.getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, stmt, conn);
		}
		return password;
	}
	public ArrayList<findDevDTO> getDeveloperList() {
		ArrayList<findDevDTO> list = new ArrayList<findDevDTO>();
		try {
			conn = JDBCConnection.getConnection();
			sql = "SELECT id, DNAME, POSITION, DLANGUAGE, ENDPROCNT, DECODE(DSTATUS, 'N','????????????','Y', '?????????') DSTATUS\r\n" + 
					"FROM TBL_DEVELOPER\r\n" + 
					"ORDER BY DNAME ";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				findDevDTO dto = new findDevDTO();
				dto.setId(rs.getString("id"));
				dto.setdName(rs.getString("DNAME"));
				dto.setPosition(rs.getString("POSITION"));
				dto.setdLanguage(rs.getString("DLANGUAGE"));
				dto.setEndProCnt(rs.getInt("ENDPROCNT"));
				dto.setdStatus(rs.getString("DSTATUS"));
				list.add(dto);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, stmt, conn);
		}
		return list;
	}
	public String getUserUid(String id) {
		String uid = "";
		try {
			conn = JDBCConnection.getConnection();
			sql = "select duid from TBL_DEVELOPER where id= ? ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()) {
				uid = rs.getString("duid");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uid;
	}
	public int addGroup(String uid, String name, String content, Date regiDate) {
		int status = 0;
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into TBL_GROUP values(DBMS_RANDOM.STRING('A', 15),?,?,?,'o',?) ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, name);
			stmt.setString(2, content);
			stmt.setDate(3,regiDate);
			stmt.setString(4, uid);
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
	public ArrayList<groupListDTO> getGroupList(){
		ArrayList<groupListDTO> list = new ArrayList<groupListDTO>();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select id, guid, gname, gcontents, registerday, decode(gstatus, 'o','?????????','N','????????????') gstatus, dname\r\n" + 
					"from TBL_DEVELOPER, TBL_GROUP\r\n" + 
					"where duid=groupleader\r\n" + 
					"order by registerday ";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				groupListDTO dto = new groupListDTO();
				dto.setId(rs.getString("id"));
				dto.setgUid(rs.getString("GUID"));
				dto.setgName(rs.getString("GNAME"));
				dto.setgContent(rs.getString("GCONTENTS"));
				dto.setRegisterDay(rs.getDate("REGISTERDAY"));
				dto.setgStatus(rs.getString("GSTATUS"));
				dto.setdName(rs.getString("DNAME"));
				list.add(dto);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public int requestAboutGroup(String sender, String recipient, String ms) {
		int status = 0;
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into request values(?,?,?) ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, sender);
			stmt.setString(2, recipient);
			stmt.setString(3, ms);
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
	public ArrayList<sendDTO> getRequestList(String id) {
		ArrayList<sendDTO> list = new ArrayList<sendDTO>();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select recipient, gname, requesttype, decode(requesttype, 'group','?????? ?????? ??????') requestTitle\r\n" + 
					"from request, TBL_GROUP\r\n" + 
					"where recipient=guid and sender=? ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			while(rs.next()) {
				sendDTO dto = new sendDTO();
				dto.setRecipientUid(rs.getString("recipient"));
				dto.setRecipientName(rs.getString("gname"));
				dto.setRequestType(rs.getString("requesttype"));
				dto.setRequestTitle(rs.getString("requesttitle"));
				list.add(dto);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<recipientDTO> getCRequestList(String id) {
		ArrayList<recipientDTO> list = new ArrayList<recipientDTO>();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select recipient, gname, requesttype, decode(requesttype, 'group','?????? ?????? ??????','sc','????????????') requestTitle, dname\r\n" + 
					"from request, TBL_GROUP, tbl_developer\r\n" + 
					"where recipient=? and sender=id ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			while(rs.next()) {
				recipientDTO dto = new recipientDTO();
				dto.setRecipientUid(rs.getString("recipient"));
				dto.setRecipientName(rs.getString("dname"));
				dto.setRequestType(rs.getString("requesttype"));
				dto.setRequestTitle(rs.getString("requesttitle"));
				list.add(dto);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public groupInfoDTO getMyGroup(String id) {
		groupInfoDTO dto = new groupInfoDTO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select guid, gname, gcontents, registerday, decode(gstatus, 'o','?????????','x','????????????') gstatus, groupleader\r\n" + 
					"from TBL_DEVELOPER, TBL_GROUP\r\n" + 
					"where duid=groupleader and id=? ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()) {
				dto.setgUid(rs.getString("guid"));
				dto.setgName(rs.getString("gname"));
				dto.setgContents(rs.getString("gcontents"));
				dto.setRegisterDay(rs.getDate("registerDay"));
				dto.setgStatus(rs.getString("gstatus"));
				dto.setGroupleader(rs.getString("groupleader"));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	public Boolean updateGuid(String guid, String id) {
		Boolean status = false;
		try {
			conn = JDBCConnection.getConnection();
			sql = "update tbl_developer set groupuid=? where id=? ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, guid);
			stmt.setString(2, id);
			int cnt = stmt.executeUpdate();
			if(cnt>0) {
				status=true;
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
	public String getGuid(String id) {
		String uid = "";
		try {
			conn = JDBCConnection.getConnection();
			sql = "select guid from TBL_DEVELOPER, TBL_GROUP where duid=groupleader and id=? ";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()) {
				uid = rs.getString("guid");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uid;
	}
}

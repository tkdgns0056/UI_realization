package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import DTO.adminItemDTO;

public class adminItemDAO {
	DataSource ds = null;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}

	public List<adminItemDTO> selectList() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		final String sqlSelect = "SELECT p_id,p_name,p_pirce, p_category" + "\r\n" + "FROM members" + "\r\n"
				+ "ORDER BY mno ASC";

		try {
			// 커넥션 풀에서 Connection객체를 빌려온다
			connection = ds.getConnection();

			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);

			ArrayList<adminItemDTO> itemList = new ArrayList<adminItemDTO>();

			while (rs.next()) {
				adminItemDTO.add(new adminItemDTO().setP_id(rs.getString("p_id")).setP_name(rs.getString("p_name"))
						.setP_price(rs.getString("p_price")).setContent(rs.getString("p_content")).setP_category(rs.getString("p_category")));
			}

			return itemList;

		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			try {
				/* DataSource가 빌려준 Connection은
				 * close()시 연결이 종료되는 것이 아니라
				 * 반납하는 의미이다
				 * */
				if(connection != null)
					connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

	public int insert(adminItemDTO item) throws Exception {
		Connection connection = null;
		int result = 0;
		PreparedStatement stmt = null;
		final String sqlInsert = "INSERT INTO members(email,pwd," + "\r\n" + "mname,cre_date,mod_date)" + "\r\n"
				+ "VALUES(?, ?, ?, NOW(), NOW())";

		try {
			// 커넥션 풀에서 Connection객체를 빌려온다
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, item.getEmail());
			stmt.setString(2, item.getPassword());
			stmt.setString(3, item.getName());
			result = stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			try {
				/* DataSource가 빌려준 Connection은
				 * close()시 연결이 종료되는 것이 아니라
				 * 반납하는 의미이다
				 * */
				if(connection != null)
					connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public int delete(int no) throws Exception {
		Connection connection = null;
		int result = 0;
		Statement stmt = null;
		final String sqlDelete = "DELETE FROM MEMBERS WHERE MNO=";

		try {
			// 커넥션 풀에서 Connection객체를 빌려온다
			connection = ds.getConnection();
			stmt = connection.createStatement();
			result = stmt.executeUpdate(sqlDelete + no);

		} catch (Exception e) {
			throw e;

		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}

			try {
				/* DataSource가 빌려준 Connection은
				 * close()시 연결이 종료되는 것이 아니라
				 * 반납하는 의미이다
				 * */
				if(connection != null)
					connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public Member selectOne(int no) throws Exception {
		Connection connection = null;
		Member member = null;
		Statement stmt = null;
		ResultSet rs = null;

		final String sqlSelectOne = "SELECT MNO,EMAIL,MNAME,CRE_DATE FROM MEMBERS" + " WHERE MNO=";

		try {
			// 커넥션 풀에서 Connection객체를 빌려온다
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne + no);
			if (rs.next()) {
				member = new Member().setNo(rs.getInt("MNO")).setEmail(rs.getString("EMAIL"))
						.setName(rs.getString("MNAME")).setCreatedDate(rs.getDate("CRE_DATE"));

			} else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
			}

		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
			}
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}

			try {
				/* DataSource가 빌려준 Connection은
				 * close()시 연결이 종료되는 것이 아니라
				 * 반납하는 의미이다
				 * */
				if(connection != null)
					connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}

		return member;
	}

	public int update(Member member) throws Exception {
		Connection connection = null;
		int result = 0;
		PreparedStatement stmt = null;
		final String sqlUpdate = "UPDATE MEMBERS SET EMAIL=?,MNAME=?,MOD_DATE=now()" + " WHERE MNO=?";
		try {
			// 커넥션 풀에서 Connection객체를 빌려온다
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, member.getEmail());
			stmt.setString(2, member.getName());
			stmt.setInt(3, member.getNo());
			result = stmt.executeUpdate();

		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}

			try {
				/* DataSource가 빌려준 Connection은
				 * close()시 연결이 종료되는 것이 아니라
				 * 반납하는 의미이다
				 * */
				if(connection != null)
					connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public Member exist(String email, String password) throws Exception {
		Connection connection = null;
		Member member = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		final String sqlExist = "SELECT MNAME,EMAIL FROM MEMBERS" + " WHERE EMAIL=? AND PWD=?";

		try {
			// 커넥션 풀에서 Connection객체를 빌려온다
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlExist);
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			if (rs.next()) {
				member = new Member().setName(rs.getString("MNAME")).setEmail(rs.getString("EMAIL"));
			} else {
				return null;
			}
		} catch (Exception e) {
			throw e;

		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
			}
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}

			try {
				/* DataSource가 빌려준 Connection은
				 * close()시 연결이 종료되는 것이 아니라
				 * 반납하는 의미이다
				 * */
				if(connection != null)
					connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}

		return member;
	}
}

package com.multicampus.biz.user;

public class DeleteUserTest {
	public static void main(String[] args) {
		UserDAO dao = new UserDAO();
		
		UserVO vo = new UserVO();
		vo.setId("admin2");
		
		dao.deleteUser(vo);
		
//		// JDBC 관련 변수
//		Connection conn = null;
//		PreparedStatement stmt = null;
//		try {
//			conn = JDBCUtil.getConnection();
//			// 3단계 : PreparedStatement 생성
//			String sql = "delete users where id = ?";
//			stmt = conn.prepareStatement(sql);
//			
//			// 4단계 : SQL 전송
//			// 파라미터(?) 값 설정
//			stmt.setString(1, "admin");
//			int count = stmt.executeUpdate();
//			System.out.println(count + "건의 데이터가 처리됨");
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(stmt, conn);
//		}
	}
}
package test5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Application {

	public static void main(String[] args) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection coon = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","1234");
			
			PreparedStatement st = coon.prepareStatement(query);
			
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				System.out.println(rs.getString("empId")+"/"+rs.getString("empName"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}

	}

}

/*
 문제 5. JDBC를 이용하여 자바와 데이터베이스를 연결하여 결과대로 구현하려 하는데 제대로 실행되지 않는다. 잘못된 부분을 [원인](30점)에 기술하고, 제대로 수정한 코드를 [조치내용](30점)에 기술하시오. (60점)
- DBMS : MySQL, 데이터베이스 : kh, 테이블 : employee, 컬럼명 : emp_id, emp_name 값 가지고 와서 구현

소스코드는 Test5-1.png 참조
출력결과는 Test5-2.png 참조

*/
package sec1;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class NetworkExam2 {
//현재 이컴퓨터의 ip주소를 알고 싶을때 InetAddress 클래스 : 
//file, database, network 등은 외부 자원으로서 반드시 try/catch 처리 해야한다.
	public static void main(String[] args) {
		
		try {
			InetAddress local = InetAddress.getLocalHost();		//현재 컴퓨터
			System.out.println(local.getHostAddress());//ip 
			System.out.println(local.getHostName());
			InetAddress[] iArr = InetAddress.getAllByName("www.naver.com"); //네이버 서버 컴퓨터
			InetAddress[] iArr1 = InetAddress.getAllByName("www.daum.com");
			System.out.println("www.naver.com");
			for(InetAddress addr : iArr) {
			System.out.println(addr.getHostAddress());
			}
			System.out.println("www.daum.com");
			for(InetAddress addr : iArr1) {
				System.out.println(addr.getHostAddress());
				}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		
		
	}
}

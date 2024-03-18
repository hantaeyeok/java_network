package sec1;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class SystemExam1 {

	public static void main(String[] args) {
		//만약, 자바 공급자의 정보를 출력한다면,
		String vendor = System.getProperty("java.vendor");
		System.out.println("자바 공급자의 정보 : "+vendor);
		
		//현재 자바 설치 버전(java.version) 출력
		String version = System.getProperty("java.version");
		System.out.println("현재 자바 설치 버전 : "+version);
		
		//자바 클래스 경로(java.class.path) 출력
		System.out.println("자바 클래스 경로 : "+System.getProperty("java.class.path"));
		
		//운영체제 이름(os.name)
		System.out.println("운영체제 이름  : "+System.getProperty("os.name"));
		
		
		//사용자 계정(user.name)
		System.out.println("사용자 계정  : "+System.getProperty("user.name"));
		
		//현재 디렉토리(user.dir)
		System.out.println("현재 디렉토리  : "+System.getProperty("user.dir"));
		try {
			System.out.println(InetAddress.getLocalHost());
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

package sec1;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class NetworkExam3 {

	public static void main(String[] args) {
		//본인 컴퓨터의 ip주소 컴퓨터 이름 출력
		InetAddress local;
		try {
			local = InetAddress.getLocalHost();
			System.out.println("본인 컴퓨터 ip 주소: " +local.getHostAddress());
			System.out.println("네트워크 상 컴퓨터 이름 : "+local.getHostName());
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		
		
		//www.google.com의 연결 IP 주소를 출력
		InetAddress[] iArr;
		try {
			System.out.println("www.goolge.com의 연결 IP주소");
			iArr = InetAddress.getAllByName("www.google.com");
			for(InetAddress i : iArr) {
				System.out.println(i.getHostAddress());
			}

		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		
	}

}

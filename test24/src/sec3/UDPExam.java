package sec3;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class UDPExam {
//UDP : User Dagagram Protocol
//비연결형 프로토콜로 연결설정이 없으며 혼잡제어를 하지 않기 때문에 TCP보다 빠름
//데이터전송에 대한 보장을 하지 않기 때문에 패킷손실 발생할 수 잇음
//DNS,멀티미디어에서 많이 사용
	public static void main(String[] args) {
		DatagramSocket socket = null;
		DatagramPacket packet = null;
		int port = 8948;
		try {
			
			socket = new DatagramSocket(port);
			while(true) {
				 byte[] buffer = new byte[512];
				 //수신
				 packet = new DatagramPacket(buffer, buffer.length);
				 System.out.println("ready");
				 socket.receive(packet);		//수신 데이터 패킷 싣기
				 String rData = new String(packet.getData());	//패킷(packet) 데이터 => String으로 형변환
				 System.out.println("수신 데이터 : "+rData);
				 
				 InetAddress ip = packet.getAddress();
				 port = packet.getPort();
				 System.out.println("[Client IP Address] :"+ip);
				 System.out.println("[Client Port] :"+port);
				 
				 
				 //송신 발신
				 packet = new DatagramPacket(packet.getData(),packet.getData().length, ip, port);
				 socket.send(packet);	//송신 데이터 패킷 실어 보내기
			}
			
		}catch(IOException e){
			e.printStackTrace();
		}finally {
			
		}
	}

}

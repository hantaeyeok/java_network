package sec2;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;

public class MultiServer {

	public void start() {
		String addr = "";
		InetAddress local;
		try {
			local = InetAddress.getLocalHost();
			addr = local.getHostAddress();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		ServerSocket server = null;
		Socket socket = null;
		try {
			server = new ServerSocket(8000);
			while(true) {
				System.out.println(addr+"[Server 실행] : Client 연결 대기중");
				socket = server.accept();
				ReceiveThread receiveThread = new ReceiveThread(socket);
				receiveThread.start();
//				receiveThread.run();	//thread로 생성되는 것이아니기 때문에 start로 실행해야함.
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if(server != null) {
				try {
					server.close();
					System.out.println("[서버 종료]");
				} catch (IOException e) {
					System.out.println("소켓 통신 종료 오류");
					e.printStackTrace();
				}
			}
		}
		
		
	}
	
	public static void main(String[] args) {
		MultiServer multi = new MultiServer();
		multi.start();
	
	
	}

}

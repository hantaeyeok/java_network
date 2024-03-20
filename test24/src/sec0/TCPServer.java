package sec0;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

public class TCPServer {

	public static void main(String[] args) {
		ServerSocket server = null;
		Socket socket = null;
		Scanner sc = new Scanner(System.in);
		
		BufferedReader in = null;
		PrintWriter out = null;
		
		//서버 소켓 황성화
		try {
			server = new ServerSocket(6000);
			System.out.println("서버 포트 : 6000");
			socket = server.accept();
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new PrintWriter(socket.getOutputStream());
			//in, out을 반복하는 
			while(true) {
				String inMessage = in.readLine();
				System.out.println("[From Client] : "+inMessage);
				if(inMessage.contains("quit")) break;
				
				System.out.print("[Send to Message] : ");
				String outMessage = sc.nextLine();
				
				out.println(outMessage);
				out.flush();
				if(outMessage.contains("quit")) break;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("[서버 소켓 연결 오류]");
		}finally {
			try {
				sc.close();
				socket.close();
				server.close();
				System.out.println("[서버 연결 종료]");
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("[서버 소켓 종료 오류]");
			}
			
		}
	}

}

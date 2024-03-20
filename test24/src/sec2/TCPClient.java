package sec2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Scanner;

public class TCPClient {

	public static void main(String[] args) {
		Socket socket = null;					//소켓 
		Scanner sc = new Scanner(System.in);	//메시지 입력
		
		BufferedReader in = null;
		PrintWriter out = null;
		
		try {
			socket = new Socket("127.0.0.1",6000);		//서버연결
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new PrintWriter(socket.getOutputStream());
			
			while(true) {
				System.out.print("[From Client ] : ");		//보낼 메시지 작성
				String outMessage = sc.nextLine();			//
				
				out.println(outMessage);
				out.flush();
				if(outMessage.contains("quit")) break;
				
				String inMessage = in.readLine();			//받은 메시지 읽기
				System.out.println("[From Server] : "+inMessage);
				if(inMessage.contains("quit")) break;
			
			}
		} catch(IOException e) {
			e.printStackTrace();
			System.out.println("[클라이언트 소켓 통신 오류]");
			
		} finally {
			try {
				sc.close();
				socket.close();
				System.out.println("[클라이언트 소켓 종료]");
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("[클라이언트 소켓 종료 오류]");
			}
		}

	}

}

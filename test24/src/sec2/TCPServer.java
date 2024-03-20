package sec2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;
//TCP : Transmission Control Protocol
//연결 지향 프로토콜로 클라이언트와 서버가 연결된 상태에서 데이터를 주고받는 프로토콜
//정확하고 안정적으로 데이터 전달하므로 신뢰성 있는 데이터 전송방식
//흐름제어와 혼잡제어를 지원하며 데이터의 순서를 보장
//데이터를 보내기 전에 반드시 연결이 형성되어야하며, 상대적으로  UDP 보다 데이터 전송속도가 느릴 수 있음
//주로 웹 HTTP 통신 이메일, 파일전송에 사용된다.

public class TCPServer {

	public static void main(String[] args) {
		ServerSocket server = null;					//서버용
		Socket socket = null;						//클라이언트용
		Scanner sc = new Scanner(System.in);		//메시지 입력 

		BufferedReader in = null;					//메시지 읽기
		PrintWriter out = null;						//메시지 보내기
		
		//서버 소켓을 활성화
		try {
			server = new ServerSocket(6000);			//서버 시작 	//서버를 생성 : 포트번호를 넣어서
			System.out.println("서버포트 : 6000");			//특정 포트번호로 서버 시작
			socket = server.accept();					//클라이언트 연결 대			//서버를 대기상태로 만듬
			System.out.println("[연결 대기]");
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new PrintWriter(socket.getOutputStream());
			//in, out을 반복하는 문장
			while(true) {
				//수신
				String inMessage = in.readLine();					//클라이언트로부터 온 메시지
				System.out.println("[Frome Client] : "+inMessage);	//
				if(inMessage.contains("quit")) break;
				
				System.out.println("[Send to Message] : ");
				String outMessage = sc.nextLine();
				System.out.println("[Client ] : "+outMessage ); 	//
				
				//발신
				out.println(outMessage);		//송신 객체에 메시지 저장
				out.flush();					//클라리언트에게 송신 메시지 전달
				if(outMessage.contains("quit")) break;
			}

		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("[소켓 연결 시작 오류]");
		}finally {
			try {
				sc.close();
				socket.close();
				server.close();
				System.out.println("[연결 종료]");
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("[소켓 연결 종료 오류]");
			}
		}
		
	}

}

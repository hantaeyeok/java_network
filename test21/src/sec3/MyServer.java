package sec3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

//자바는 서버나 클라이언트를 만들기 위해 가장 적합한 언어이다.
//서버를 만드려면 포트번호가 있어야함, 
public class MyServer {

	public static void main(String[] args) {
		
		BufferedReader in = null;		//읽는 스트림	: 통신 데이터를 읽는 스트림 읽을때 한줄로 (입력 스트림)
		PrintWriter out = null;			//쓰기 스트림	: 네트워크에 쓰는 것	쓸때 한줄로
		
		ServerSocket server = null;		//서버소켓
		Socket socket = null;			//소켓
		Scanner sc = new Scanner(System.in);		//키보드 입력
		
		try {
			server = new ServerSocket(6000);
			System.out.println("[Server 실행] : Client 연결 대기 중입니다.");
			socket = server.accept();			//서버에 대하여 입력 대기		//클라이언트가 연결이 가능한 상태
			System.out.println("[Client 연결]");
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new PrintWriter(socket.getOutputStream());
//Stream 방식 : 문자방식 바이트방식이 있다.
			while(true) {
				String inMsg = in.readLine();
				if("quit".equalsIgnoreCase(inMsg)) break;
				System.out.println("[From Client : ]"+inMsg);
				System.out.println("전송>>>");
				
				String outMsg = sc.nextLine();
				out.println(outMsg);
				out.flush();				//비우는 명령
				if("quit".equalsIgnoreCase(outMsg)) break;
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				sc.close();
				socket.close();
				server.close();
				System.out.println("연결 종료");
			} catch (IOException e) {
				System.out.println("소켓통신 종료 오류");
				e.printStackTrace();
			}	
		}
	}
}

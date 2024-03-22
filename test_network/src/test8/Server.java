package test8;

public class Server {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		BufferedReader br = null;
		PrintWriter pw = null;
		ServerSocket server = null;
		try {
			server = new ServerSocket(8888);			//8080
			System.out.println("[Server]");				//server.accept()
			System.out.println("클라이언트의 요청을 기다리고 있습니다...");
			System.out.println(socket.getInetAddress().getHostAddress() + " 가 연결을 요청함...");
			br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			pw = new PrintWriter((socket.getOutputStream()));
			// 이하 코드는 중간 생략..
		}
	}

}

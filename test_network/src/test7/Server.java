package test7;

public class Server {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		BufferedReader br = null;
		PrintWriter pw = null;
		int port = 8888;
		ServerSocket server = null;
		try {
			server = new ServerSocket("localhost", port);	//서버소켓은 포트버호만 있으면 된다. "localhost"삭제
			System.out.println("[Server]");					//대기모드가빠져 socket.accept();넣어야함
			System.out.println("클라이언트의 요청을 기다리고 있습니다...");
			System.out.println(socket.getInetAddress().getHostAddress() + " 가 연결을 요청함...");
			br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			pw = new PrintWriter((socket.getOutputStream()));

	}

}

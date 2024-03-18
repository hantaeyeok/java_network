package sec2;

import java.awt.Toolkit;

//Thread(쓰레드) = process(프로세스) = 현재 컴퓨터에서 실행 중인 프로그램(작업)
//하나의 프로그램 하나의 Thread
//발생(new) => ) 실행대기: Runnable => 점유(실행 : run) => 실행대기(Runnable)=> 기동 => 종료
//실행 => 실행대기 : sleep
//실행대기 => 실행 : wake up(run)

//Thread를 받는 sokit
public class ThreadExam1 {
	
	public static void FirstThread() {
		System.out.println("첫 번째 Thread");
	}

	public static void SecondaryThread() {
//		Toolkit toolkit = Toolkit.getDefaultToolkit();
		//Toolkit.getDefaultToolkit(); : 
		for(int i=0;i<10;i++) {			//01부터 9까지 카운트 작업
			System.out.println(i);
//			toolkit.beep();
			try {
				Thread.sleep(2000);	//ms => us //thread 잠시 대기 시키는 명령  //sleep(실행=>실행대기)
			}catch(InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
//		FisrtThread();	:	이렇케 호출했지만
//		Runnable : 인터페이스 이기때문에 오버라이딩을 받아야함
		Thread thread1 = new Thread(new Runnable() {	//new Thread(생성) +> Runnable 실행대기
			@Override
			public void run() {		//run(실행대기 => 실행)
				FirstThread();
			}
		});	//실행가능한 작업

//		thread1.run();		//
//		thread1.start();	//Thread 실행
//		System.out.println(thread1.getName());
		
		Thread thread2 = new Thread(new Runnable() {
			@Override
			public void run() {
				SecondaryThread();	
			}
		});
		thread2.start();//thread 실행 : cpu 점유하고 있다가 명령을 실행
//		thread2.run();//메소드 실행 thread가 아님
		
	}

}

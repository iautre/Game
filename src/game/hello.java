package game;

import java.util.Random;

public class hello{
	private String[] succ={"qqhaha","hello","tv","ok"};
	private String[] help={"���֮��","��ҪƤ����","��������","��ҪATP","���ܼ���"};
	public String getSucc(){
		Random ran=new Random();
		return succ[ran.nextInt(4)];
	}
	public String getHelp(){
		Random ran=new Random();
		return help[ran.nextInt(5)];
	}
}

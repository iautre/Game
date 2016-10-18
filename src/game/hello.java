package game;

import java.util.Random;

public class hello{
	private String[] succ={"qqhaha","hello","tv","ok"};
	private String[] help={"洪荒之力","我要皮卡丘","赐我力量","我要ATP","技能技能"};
	public String getSucc(){
		Random ran=new Random();
		return succ[ran.nextInt(4)];
	}
	public String getHelp(){
		Random ran=new Random();
		return help[ran.nextInt(5)];
	}
}

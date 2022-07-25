package memberHandler;

import java.util.Random;

import org.springframework.web.bind.annotation.GetMapping;

import member.MessageService;

public class PhoneCheckHandler {
	@GetMapping("/PhoneCheckHandler/sendSMS")
	public String sendSMS(String member_tel) {
		Random rand = new Random();
		String numStr = "";
		for(int i=0; i<4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr+=ran;
		}
		
		System.out.println("수신자 번호 : " + member_tel);
		System.out.println("인증번호 : " + numStr);
		MessageService msg = new MessageService();
		msg.sendMessage(member_tel, numStr);
		return numStr;
	}
}

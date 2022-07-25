package member;

import java.util.HashMap;
import org.json.simple.JSONObject;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class MessageService {

//	@Value("${coolsms.devHee.apikey}")
//	private String apiKey;
//
//	@Value("${coolsms.devHee.apisecret}")
//	private String apiSecret;
//
//	@Value("${coolsms.devHee.fromnumber}")
//	private String fromNumber;

	public void sendMessage(String member_tel, String numStr) {
		
		String apiKey = "NCSQFWOXXLP1D2HW";
		String apiSecret = "3UI3DF0ONV9JBMUP6WM6IY2QHLFUHXXO";
		Message coolsms = new Message(apiKey, apiSecret);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", member_tel);
		params.put("from", "01087393427");
		params.put("type", "SMS");
		params.put("text", "[grabMe] 인증번호 "+numStr+" 를 입력하세요.");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}

}
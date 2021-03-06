package com.example.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.dao.UserRepository;
import com.example.domain.UserVO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class SendEmailService {

	@Autowired
	UserRepository userRepository;
	
	private JavaMailSender mailSender;
	private static final String FROM_ADDRESS="ProjectWithYou5@gmail.com";
	
	public MailDto createMailAndChangePassword(String userEmail, String userName){
        String str = getTempPassword();
        MailDto dto = new MailDto();
        dto.setAddress(userEmail);
        dto.setTitle(userName+"님의 너와함개 인증번호 안내 이메일 입니다.");
        dto.setMessage("안녕하세요. 너와함개에서 인증번호 안내 관련 이메일 입니다." + "[" + userName + "]" +"님의 인증번호는 "
        + str + " 입니다.");
        updatePassword(str,userEmail);
        return dto;
    }

	  public void updatePassword(String str,String userEmail){
	       String userPass = str;
	       //아래꺼 사용할경우 비밀번호 암호화되서 들어감!!
//	        String password = EncryptionUtils.encryptMD5(str);
	       UserVO temp = userRepository.findUserByUserEmail(userEmail);
	        temp.setUserPass(userPass);
	        userRepository.save(temp);
	    }

    public String getTempPassword(){
        char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

        String str = "";

        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            str += charSet[idx];
        }
        return str;
    }
    
    public void mailSend(MailDto mailDto) {
        System.out.println("이멜 전송 완료!");
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(mailDto.getAddress());
        message.setFrom(SendEmailService.FROM_ADDRESS);
        message.setSubject(mailDto.getTitle());
        message.setText(mailDto.getMessage());

        mailSender.send(message);
    }
}

package com.multi.metahouse.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/chat")
public class ChatController {
	@RequestMapping("/")
	public String chatRoom() {
		return "chat/chat";
	}
	
}

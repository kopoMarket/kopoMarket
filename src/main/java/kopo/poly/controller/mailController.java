package kopo.poly.controller;

import kopo.poly.service.IMailService;
import kopo.poly.service.impl.MailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.jsoup.Connection;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Slf4j
@Controller
public class mailController {


    @PostMapping("/signup/mailmail")
    public String mailmail(){
        return "mail/mailAuth";
    }



}

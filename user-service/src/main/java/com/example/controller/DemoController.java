package com.example.controller;

import com.example.UserEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author logan
 * @date 2022/4/10
 */
@RequestMapping("/demo/")
@RestController
public class DemoController {

    @GetMapping("get")
    public UserEntity get() {
        UserEntity userEntity = new UserEntity();
        userEntity.setAge(1);
        userEntity.setName("success haha");
        return userEntity;
    }

}

package com.cloudwise.trademark;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author Enzo
 */
@SpringBootApplication
@MapperScan("com.cloudwise.trademark.dao")
public class TrademarkApplication {

    public static void main(String[] args) {
        SpringApplication.run(TrademarkApplication.class, args);
    }

}

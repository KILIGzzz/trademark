package com.cloudwise.trademark.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/**
 * @author Enzo
 * @version 1.0
 * @data Created at 2021/1/6 19:07
 * @description 线程池的配置类
 * @modifiedBy
 */
@Configuration
@EnableAsync
public class TaskExecutePool {

    @Bean
    public Executor myTaskAsyncPool() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        //核心线程池大小
        executor.setCorePoolSize(20);
        // 最大线程数
        executor.setMaxPoolSize(40);
        // 队列容量
        executor.setQueueCapacity(300);
        // 活跃时间
        executor.setKeepAliveSeconds(50);
        // 线程名字前缀
        executor.setThreadNamePrefix("TeacherChenExecutor-");
        // setRejectedExecutionHandler：当pool已经达到max size的时候，如何处理新任务
        // CallerRunsPolicy：不在新线程中执行任务，而是由调用者所在的线程来执行
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
        executor.initialize();
        return executor;
    }
}

package com.zy.task;

        import org.springframework.scheduling.annotation.Scheduled;
        import org.springframework.stereotype.Component;

@Component
public class MyTask {

    @Scheduled(cron="0/1 ")
    public void test(){
        System.out.println("定时器开始执行!!");
    }
}

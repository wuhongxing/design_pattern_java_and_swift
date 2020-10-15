package com.example.behavioral.state;

public class Test {
    public static void main(String[] args) {
        CourseVideoContext courseVideoContext = new CourseVideoContext();
        courseVideoContext.setCourseVideoState(new PlayState());

        System.out.println("当前状态" + courseVideoContext.getCourseVideoState());

        courseVideoContext.pause();
        System.out.println("当前状态" + courseVideoContext.getCourseVideoState());

        courseVideoContext.stop();
        System.out.println("当前状态" + courseVideoContext.getCourseVideoState());

        courseVideoContext.speed();
        System.out.println("当前状态" + courseVideoContext.getCourseVideoState());
    }
}

package com.example.behavioral.command;

public class CourseVideo {
    private String name;

    public CourseVideo(String name) {
        this.name = name;
    }

    public void open() {
        System.out.println(this.name + "课程开放");
    }

    public void close() {
        System.out.println(this.name + "课程关闭");
    }
}

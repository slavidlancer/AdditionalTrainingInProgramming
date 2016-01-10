package com.tutorials.oop.patterns;

public class Mp4Player implements AdvancedMediaPlayer {
    @Override
    public void playVlc(String fileName) {} //no action

    @Override
    public void playMp4(String fileName) {
        System.out.println("playing mp4, filename: " + fileName);
    }
}

package com.tutorials.oop.patterns;

public class VlcPlayer implements AdvancedMediaPlayer {
    @Override
    public void playVlc(String fileName) {
        System.out.println("playing vlc, filename: " + fileName);
    }

    @Override
    public void playMp4(String fileName) {} //no action
}

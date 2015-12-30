package com.tutorials.game.gfx;

import java.awt.image.BufferedImage;

public class Assets {
	private static final int WIDTH = 95;
	private static final int HEIGHT = 130;

    public static BufferedImage player1, player2;
    
    public static void init() {
        SpriteSheet sheet = new SpriteSheet(ImageLoader.loadImage(
        		"/res/textures/player.png"));

        player1 = sheet.crop(0, 0, WIDTH, HEIGHT);
        player2 = sheet.crop(WIDTH, 0, WIDTH, HEIGHT);
    }
}

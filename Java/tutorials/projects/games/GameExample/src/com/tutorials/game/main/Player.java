package com.tutorials.game.main;

import java.awt.Graphics;
import java.awt.Rectangle;

import com.tutorials.game.gfx.Assets;

public class Player {
	private int x, y;
    private int velocity;
    private int width, height;
    private int health;

    private Rectangle boundingBox;

    public static boolean goingUp;
    public static boolean goingDown;
    public static boolean goingLeft;
    public static boolean goingRight;
    
	public Player() {
		this.x = 200;
		this.y = 300;
		this.velocity = 2;
		this.width = 95;
		this.height = 130;
		this.health = 50;
		this.boundingBox = new Rectangle(this.width, this.height);
		
		goingUp = false;
	    goingDown = false;
	    goingLeft = false;
	    goingRight = false;
	}

	public int getHealth() {
		return this.health;
	}
	
	public boolean intersects(Rectangle r) {
        if (this.boundingBox.contains(r) || r.contains(this.boundingBox)) {
            return true;
        }
        
        return false;
    }
	
	public void tick() {
        this.boundingBox.setBounds(this.x, this.y, this.width, this.height);

        if (goingUp) {
            this.y -= this.velocity;
        }
        
        if (goingDown) {
            this.y += this.velocity;
        }
        
        if (goingLeft) {
            this.x -= this.velocity;
        }
        
        if (goingRight) {
            this.x += this.velocity;
        }
    }
	
	public void render(Graphics graphics) {
		graphics.drawImage(Assets.player1, this.x, this.y, null);
		//graphics.drawImage(Assets.player2, 0, 0, null);
	}
}

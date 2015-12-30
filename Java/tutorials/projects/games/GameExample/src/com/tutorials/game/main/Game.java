package com.tutorials.game.main;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Rectangle;
import java.awt.image.BufferStrategy;
import java.awt.image.BufferedImage;
import com.tutorials.game.display.Display;
import com.tutorials.game.gfx.*;
import com.tutorials.game.states.*;

public class Game implements Runnable {
	private Display display;
	public String title;
	public int width, height;
	
	private boolean running = false;
	private Thread thread;
	
	private InputHandler inputHandler;
	private BufferStrategy bufferStrategy;
	private Graphics graphics;
	
	private BufferedImage img;
	private SpriteSheet spriteSheet;
	
	private State gameState;
    private State menuState;
    private State settingsState;
	
	public static Player player;
	public static Rectangle enemy;
	
	public Game(String title, int width, int height) {
		this.title = title;
		this.width = width;
		this.height = height;
	}
	
	public void init() {
		display = new Display(this.title, this.width, this.height);
		img = ImageLoader.loadImage("/res/textures/bckg.jpg");
		spriteSheet = new SpriteSheet(ImageLoader.loadImage(
				"/res/textures/player.png"));
		
		this.inputHandler = new InputHandler(this.display);
		Assets.init();
		
		gameState = new GameState();
        menuState = new MenuState();
        settingsState = new SettingsState();
        StateManager.setCurrentState(gameState);
		
		player = new Player();
		enemy = new Rectangle(50, 50, 20, 20);
	}

	@Override
	public void run() {
		init();
		
		int fps = 30;
		double timePerTick = 1_000_000_000.0 / fps;
		double delta = 0;
		long now;
		long lastTime = System.nanoTime();
		long timer = 0;
        int ticks = 0;
        
        while (running) {
        	now = System.nanoTime();
        	delta += (now - lastTime) / timePerTick;
        	timer += now - lastTime;
        	lastTime = now;
        	
        	if (delta >= 1) {
        		tick();
                render();

                ticks++;
                delta--;
			}
        	
        	if (timer >= 1_000_000_000) {
        		System.out.println("Ticks and Frames: " + ticks);
        		
                ticks = 0;
                timer = 0;
			}
		}
        
        stop();
	}

	

	private void render() {
		this.bufferStrategy = display.getCanvas().getBufferStrategy();
		
		if (this.bufferStrategy == null) {
			display.getCanvas().createBufferStrategy(2);
			
			return;
		}
		
		graphics = bufferStrategy.getDrawGraphics();
		graphics.clearRect(0, 0, this.width, this.height);
		graphics.drawImage(img, 0, 0, this.width, this.height, null);
		player.render(graphics);
		graphics.setColor(Color.RED);
		graphics.fillRect(enemy.x, enemy.y, enemy.width, enemy.height);
		
		if (StateManager.getCurrentState() != null){
            StateManager.getCurrentState().render(this.graphics);
        }
		
		bufferStrategy.show();
		graphics.dispose();
	}

	private void tick() {
		if (StateManager.getCurrentState() != null) {
            StateManager.getCurrentState().tick();
        }
		
        player.tick();
        
        if (player.intersects(enemy)) {
            System.out.print("You were hit! Game over!");
            
            stop();
        }
	}

	public synchronized void start() {
		if (running) {
			return;
		}
		
		running = true;
		
		thread = new Thread(this);
		thread.start();
	}
	
	private synchronized void stop() {
		if (!running) {
			return;
		}
		
		running = false;
		
		try {
			thread.join();
		} catch (InterruptedException ie) {
			ie.printStackTrace();
		}
	}
}

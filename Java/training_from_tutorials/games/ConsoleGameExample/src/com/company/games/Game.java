package com.company.games;

import java.util.ArrayList;
import java.util.List;
import com.company.games.elements.Element;
import com.company.games.elements.Player;

public class Game {
	private Player playerOne;
    private Player playerTwo;
    private Player currentPlayer;
    
    private List<List<Element>> map;

    private boolean running;
    private String output;
    private boolean turnChanged;
	
	public Game() {
		this.playerOne = new Player(0, "Player One", this);
        this.playerTwo = new Player(0, "Player Two", this);
        this.currentPlayer = this.playerOne;
        this.map = new ArrayList<List<Element>>();
        this.setRunning(true);
        this.setTurnChanged(true);
	}
	
	public Player getPlayerOne() {
		return this.playerOne;
	}

	public void setPlayerOne(Player playerOne) {
		this.playerOne = playerOne;
	}

	public Player getPlayerTwo() {
		return this.playerTwo;
	}

	public void setPlayerTwo(Player playerTwo) {
		this.playerTwo = playerTwo;
	}

	public Player getCurrentPlayer() {
		return this.currentPlayer;
	}

	public List<List<Element>> getMap() {
		return map;
	}
	
	public boolean isTurnChanged() {
        return this.turnChanged;
    }

	public void setTurnChanged(boolean turnChanged) {
		this.turnChanged = turnChanged;
	}

	public void setRunning(boolean running) {
		this.running = running;
	}
	
	public boolean isRunning() {
		return this.running;
	}
	
	private void printOutput() {
        System.out.println(this.output);
        
        this.output = "";
    }

	public static void main(String[] args) {
		Game game = new Game();
		
		game.start();
	}
}

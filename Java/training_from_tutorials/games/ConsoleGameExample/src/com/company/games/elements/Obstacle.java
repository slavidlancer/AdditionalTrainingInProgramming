package com.company.games.elements;

import com.company.games.Game;

public class Obstacle extends Element {
	public Obstacle(Game game) {
        super(game);
    }
		
	@Override
	public String getType() {
		return "Obstacle";
	}

	@Override
	public boolean moveTo(Player from) throws Exception {
		throw new Exception("Cannot move to an obstacle");
	}

}

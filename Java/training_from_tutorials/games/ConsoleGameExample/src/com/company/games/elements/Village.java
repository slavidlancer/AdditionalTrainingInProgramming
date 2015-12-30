package com.company.games.elements;

import com.company.games.Game;

public class Village extends Element {
	private Player owner;

	public Village(Game game, Player owner) {
		super(game);
		this.owner = owner;
	}

	@Override
	public String getType() {
		return "Village " + this.owner.getType();
	}

	@Override
	public boolean moveTo(Player from) throws Exception {
		return false;
	}
}

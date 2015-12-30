package com.company.games.elements;

import com.company.games.Game;;

public class EmptyElement extends Element {
	public EmptyElement(Game game) {
		super(game);
	}
	
	@Override
	public String getType() {
		return "Empty Element";
	}

	@Override
	public boolean moveTo(Player from) throws Exception {
		return true;
	}
}

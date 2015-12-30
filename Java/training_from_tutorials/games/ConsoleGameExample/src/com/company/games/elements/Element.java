package com.company.games.elements;

import com.company.games.Game;

public abstract class Element {
	protected int row;
    protected int col;
    protected Game game;
    
    public void setRow(int row) {
        this.row = row;
    }

    public void setCol(int col) {
        this.col = col;
    }

    public Element(Game game) {
        this.game = game;
    }

    public abstract String getType();

    public abstract boolean moveTo(Player from) throws Exception;
}

package com.company.games.elements;

import com.company.games.Game;

public class ElementFactory {
	public static Element create(char el, int row, int col, Game game)
			throws Exception {
        Element element;

        switch (el) {
            case 'a':
                element = game.getPlayerOne();
                
                break;
                
            case 'b':
                element = game.getPlayerTwo();
                
                break;
                
            case 'f':
                Village vp1 = new Village(game, game.getPlayerOne());
                game.getPlayerOne().addVilage(vp1);
                element = vp1;
                
                break;
                
            case 'v':
                Village vp2 = new Village(game, game.getPlayerTwo());
                game.getPlayerTwo().addVilage(vp2);
                element = vp2;
                
                break;
                
            case 'e':
                element = new EmptyElement(game);
                
                break;
                
            case 'o':
                element = new Obstacle(game);
                
                break;
                
            case 'g':
                element = new Gold(game, 1000 + ((int)(Math.random() * 4000)));
                
                break;
                
            default:
                throw new Exception("Invalid element name supplied");
        }

        element.setRow(row);
        element.setCol(col);

        return element;
    }
}

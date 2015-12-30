package com.company.games.maps;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import com.company.games.Game;
import com.company.games.elements.Element;
import com.company.games.elements.ElementFactory;

public class MapReader {
	private Game game;

    private static final String MAP_NAME = "resources/map-level-one";

    public MapReader(Game game) {
        this.game = game;
    }

    public void read() throws Exception {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(
        		new File(MAP_NAME)));

        String line = null;
        int row = 0;
        
        while ((line = bufferedReader.readLine()) != null) {
            this.game.getMap().add(new ArrayList<Element>());
            
            for (int i = 0; i < line.length(); i++) {
                Element element = ElementFactory.create(line.charAt(i), row, i,
                		this.game);
                this.game.getMap().get(row).add(element);
            }
            
            row++;
        }

        //String x = "";
        bufferedReader.close();
    }
}

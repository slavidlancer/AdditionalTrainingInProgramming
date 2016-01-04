package com.tutorials._gui;

public class Main {
    public static void main(String[] args) {
        ActionDemo actionDemo = new ActionDemo();
        
        javax.swing.SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                actionDemo.createAndShowGUI();
            }
        });
    }
}

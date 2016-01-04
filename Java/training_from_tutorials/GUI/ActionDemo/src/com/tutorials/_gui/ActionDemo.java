package com.tutorials._gui;

import java.awt.event.ItemListener;

import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JPanel;

public class ActionDemo extends JPanel implements ItemListener {
    public ActionDemo() {}
    
    private void createToolBar() {
        // TODO Auto-generated method stub
        
    }

    private JMenuBar createMenuBar() {
        // TODO Auto-generated method stub
        return null;
    }
    
    public void createAndShowGUI() {
        JFrame frame = new JFrame("ActionDemo");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        ActionDemo demo = new ActionDemo();
        frame.setJMenuBar(demo.createMenuBar());
        demo.createToolBar();
        demo.setOpaque(true);
        frame.setContentPane(demo);

        frame.pack();
        frame.setVisible(true);
    }
}

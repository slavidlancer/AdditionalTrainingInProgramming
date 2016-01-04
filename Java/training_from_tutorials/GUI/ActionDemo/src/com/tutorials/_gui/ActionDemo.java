package com.tutorials._gui;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.KeyEvent;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JToolBar;

public class ActionDemo extends JPanel implements ItemListener {
    private static final long serialVersionUID = 1L;
    protected JTextArea textArea;
    protected String newline = "\n";
    protected Action leftAction, middleAction, rightAction;
    protected JCheckBoxMenuItem[] cbmi;
    
    public ActionDemo() {
        super(new BorderLayout());

        textArea = new JTextArea(5, 30);
        textArea.setEditable(false);
        JScrollPane scrollPane = new JScrollPane(textArea);

        setPreferredSize(new Dimension(450, 150));
        add(scrollPane, BorderLayout.CENTER);

        leftAction =   new LeftAction("Go left", createNavigationIcon("Back24"),
                "This is the left button.", new Integer(KeyEvent.VK_L));
        middleAction = new MiddleAction("Do something",
                createNavigationIcon("Up24"), "This is the middle button.",
                new Integer(KeyEvent.VK_M));
        rightAction =  new RightAction("Go right",
                createNavigationIcon("Forward24"), "This is the right button.",
                new Integer(KeyEvent.VK_R));
    }
    
    protected static ImageIcon createNavigationIcon(String imageName) {
        String imgLocation = "resources/" + imageName + ".gif";
        java.net.URL imageURL = ActionDemo.class.getResource(imgLocation);

        if (imageURL == null) {
            System.err.println("Resource not found: " + imgLocation);
            
            return null;
        } else {
            return new ImageIcon(imageURL);
        }
    }
    
    private JMenuBar createMenuBar() {
        JMenuItem menuItem = null;
        JMenuBar menuBar = new JMenuBar();
        JMenu mainMenu = new JMenu("Menu");
        Action[] actions = {leftAction, middleAction, rightAction};
        
        for (int i = 0; i < actions.length; i++) {
            menuItem = new JMenuItem(actions[i]);
            menuItem.setIcon(null);
            mainMenu.add(menuItem);
        }

        menuBar.add(mainMenu);
        menuBar.add(createAbleMenu());
        
        return menuBar;
    }
    
    protected JMenu createAbleMenu() {
        JMenu ableMenu = new JMenu("Action State");
        cbmi = new JCheckBoxMenuItem[3];

        cbmi[0] = new JCheckBoxMenuItem("First action enabled");
        cbmi[1] = new JCheckBoxMenuItem("Second action enabled");
        cbmi[2] = new JCheckBoxMenuItem("Third action enabled");

        for (int i = 0; i < cbmi.length; i++) {
            cbmi[i].setSelected(true);
            cbmi[i].addItemListener(this);
            ableMenu.add(cbmi[i]);
        }

        return ableMenu;
    }
    
    private void createToolBar() {
        JButton button = null;
        JToolBar toolBar = new JToolBar();
        
        add(toolBar, BorderLayout.PAGE_START);

        button = new JButton(leftAction);
        
        if (button.getIcon() != null) {
            button.setText("");
        }
        
        toolBar.add(button);

        button = new JButton(middleAction);
        
        if (button.getIcon() != null) {
            button.setText("");
        }
        
        toolBar.add(button);

        button = new JButton(rightAction);
        
        if (button.getIcon() != null) {
            button.setText("");
        }
        
        toolBar.add(button);
    }
    
    public class LeftAction extends AbstractAction {
        private static final long serialVersionUID = 1L;
        
        public LeftAction(String text, ImageIcon icon, String desc,
                Integer mnemonic) {
            super(text, icon);
            putValue(SHORT_DESCRIPTION, desc);
            putValue(MNEMONIC_KEY, mnemonic);
        }
        
        public void actionPerformed(ActionEvent e) {
            displayResult("Action for first button/menu item", e);
        }
    }

    public class MiddleAction extends AbstractAction {
        private static final long serialVersionUID = 1L;
        
        public MiddleAction(String text, ImageIcon icon, String desc,
                Integer mnemonic) {
            super(text, icon);
            putValue(SHORT_DESCRIPTION, desc);
            putValue(MNEMONIC_KEY, mnemonic);
        }
        
        public void actionPerformed(ActionEvent e) {
            displayResult("Action for second button/menu item", e);
        }
    }

    public class RightAction extends AbstractAction {
        private static final long serialVersionUID = 1L;
        public RightAction(String text, ImageIcon icon, String desc,
                Integer mnemonic) {
            super(text, icon);
            putValue(SHORT_DESCRIPTION, desc);
            putValue(MNEMONIC_KEY, mnemonic);
        }
        
        public void actionPerformed(ActionEvent e) {
            displayResult("Action for third button/menu item", e);
        }
    }
    
    public void displayResult(String actionDescription, ActionEvent e) {
        String s = ("Action event detected: " + actionDescription + newline +
                "    Event source: " + e.getSource() + newline);
        textArea.append(s);
    }
    
    @Override
    public void itemStateChanged(ItemEvent e) {
        JCheckBoxMenuItem mi = (JCheckBoxMenuItem)(e.getSource());
        
        boolean selected = (e.getStateChange() == ItemEvent.SELECTED);

        if (mi == cbmi[0]) {
            leftAction.setEnabled(selected);
        } else if (mi == cbmi[1]) {
            middleAction.setEnabled(selected);
        } else if (mi == cbmi[2]) {
            rightAction.setEnabled(selected);
        }
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

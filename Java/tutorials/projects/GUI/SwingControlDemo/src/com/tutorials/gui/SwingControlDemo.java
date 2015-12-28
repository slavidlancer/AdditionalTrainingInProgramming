package com.tutorials.gui;

import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.HeadlessException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class SwingControlDemo extends JFrame {
	private JFrame mainFrame;
	private JLabel headerLabel;
	private JLabel statusLabel;
	private JPanel controlPanel;
	
	public SwingControlDemo() throws HeadlessException {
		prepareGUI();
	}
	
	private void prepareGUI() {
		mainFrame = new JFrame("Java SWING examples");
		mainFrame.setSize(400, 400);
		mainFrame.setLayout(new GridLayout(3, 1));
		
		headerLabel = new JLabel("", JLabel.CENTER);
		statusLabel = new JLabel("", JLabel.CENTER);
		
		statusLabel.setSize(350, 100);
		
		mainFrame.addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent windowEvent) {
				System.exit(0);
			}
		});
		
		controlPanel = new JPanel();
		controlPanel.setLayout(new FlowLayout());
		
		mainFrame.add(controlPanel);
		mainFrame.add(headerLabel);
		mainFrame.add(statusLabel);
		
		mainFrame.setVisible(true);
	}

	private void showEventDemo() {
		headerLabel.setText("control in action: button");
		
		JButton okButton = new JButton("OK");
		JButton submitButton = new JButton("Submit");
		JButton cancelButton = new JButton("Cancel");
		
		okButton.setActionCommand("OK");
		submitButton.setActionCommand("Submit");
		cancelButton.setActionCommand("Cancel");
		
		okButton.addActionListener(new ButtonClickListener());
		submitButton.addActionListener(new ButtonClickListener());
		cancelButton.addActionListener(new ButtonClickListener());
		
		controlPanel.add(okButton);
		controlPanel.add(submitButton);
		controlPanel.add(cancelButton);
		
		//mainFrame.setVisible(true);
	}
	
	private class ButtonClickListener implements ActionListener {
		@Override
		public void actionPerformed(ActionEvent e) {
			String command = e.getActionCommand();
			
			if (command.equals("OK")) {
				statusLabel.setText("button OK was clicked");
			} else if (command.equals("Submit")) {
				statusLabel.setText("button Submit was clicked");
			} else {
				statusLabel.setText("button Cancel was clicked");				
			}
		}
	}
	
	public static void main(String[] args) {
		SwingControlDemo swingControlDemo = new SwingControlDemo();
		swingControlDemo.showEventDemo();
	}
}

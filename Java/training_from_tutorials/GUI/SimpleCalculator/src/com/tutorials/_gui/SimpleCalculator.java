package com.tutorials._gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.GridLayout;
import java.awt.GridBagLayout;
import javax.swing.JTextField;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import javax.swing.JButton;

public class SimpleCalculator {
    private JFrame frame;
    private JTextField textFieldFirstNumber;
    private JTextField textFieldSecondNumber;

    public SimpleCalculator() {
        initialize();
    }

    private void initialize() {
        frame = new JFrame();
        frame.setBounds(100, 100, 322, 289);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        GridBagLayout gridBagLayout = new GridBagLayout();
        gridBagLayout.columnWidths = new int[]{0, 0, 0, 0};
        gridBagLayout.rowHeights = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        gridBagLayout.columnWeights = new double[]{0.0, 0.0, 0.0,
                Double.MIN_VALUE};
        gridBagLayout.rowWeights = new double[]{0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, Double.MIN_VALUE};
        frame.getContentPane().setLayout(gridBagLayout);
        
        textFieldFirstNumber = new JTextField();
        GridBagConstraints gbc_textFieldFirstNumber = new GridBagConstraints();
        gbc_textFieldFirstNumber.insets = new Insets(0, 0, 5, 5);
        gbc_textFieldFirstNumber.anchor = GridBagConstraints.WEST;
        gbc_textFieldFirstNumber.gridx = 0;
        gbc_textFieldFirstNumber.gridy = 0;
        frame.getContentPane().add(textFieldFirstNumber,
                gbc_textFieldFirstNumber);
        textFieldFirstNumber.setColumns(10);
        
        textFieldSecondNumber = new JTextField();
        GridBagConstraints gbc_textFieldSecondNumber = new GridBagConstraints();
        gbc_textFieldSecondNumber.insets = new Insets(0, 0, 5, 0);
        gbc_textFieldSecondNumber.anchor = GridBagConstraints.WEST;
        gbc_textFieldSecondNumber.gridx = 2;
        gbc_textFieldSecondNumber.gridy = 0;
        frame.getContentPane().add(textFieldSecondNumber,
                gbc_textFieldSecondNumber);
        textFieldSecondNumber.setColumns(10);
        
        JButton btnNewButton = new JButton("+");
        GridBagConstraints gbc_btnNewButton = new GridBagConstraints();
        gbc_btnNewButton.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButton.gridx = 1;
        gbc_btnNewButton.gridy = 1;
        frame.getContentPane().add(btnNewButton, gbc_btnNewButton);
        
        JButton btnNewButton_1 = new JButton("-");
        GridBagConstraints gbc_btnNewButton_1 = new GridBagConstraints();
        gbc_btnNewButton_1.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButton_1.gridx = 1;
        gbc_btnNewButton_1.gridy = 2;
        frame.getContentPane().add(btnNewButton_1, gbc_btnNewButton_1);
        
        JButton btnNewButton_2 = new JButton("*");
        GridBagConstraints gbc_btnNewButton_2 = new GridBagConstraints();
        gbc_btnNewButton_2.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButton_2.gridx = 1;
        gbc_btnNewButton_2.gridy = 3;
        frame.getContentPane().add(btnNewButton_2, gbc_btnNewButton_2);
        
        JButton btnNewButton_3 = new JButton("/");
        GridBagConstraints gbc_btnNewButton_3 = new GridBagConstraints();
        gbc_btnNewButton_3.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButton_3.gridx = 1;
        gbc_btnNewButton_3.gridy = 4;
        frame.getContentPane().add(btnNewButton_3, gbc_btnNewButton_3);
        
        JButton btnNewButton_4 = new JButton("Clear");
        GridBagConstraints gbc_btnNewButton_4 = new GridBagConstraints();
        gbc_btnNewButton_4.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButton_4.gridx = 1;
        gbc_btnNewButton_4.gridy = 6;
        frame.getContentPane().add(btnNewButton_4, gbc_btnNewButton_4);
        
        JButton btnExit = new JButton("Exit");
        GridBagConstraints gbc_btnExit = new GridBagConstraints();
        gbc_btnExit.anchor = GridBagConstraints.SOUTHEAST;
        gbc_btnExit.gridx = 2;
        gbc_btnExit.gridy = 8;
        frame.getContentPane().add(btnExit, gbc_btnExit);
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    SimpleCalculator window = new SimpleCalculator();
                    window.frame.setVisible(true);
                    window.frame.setResizable(false);
                    window.frame.setTitle("Simple Calculator");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
}

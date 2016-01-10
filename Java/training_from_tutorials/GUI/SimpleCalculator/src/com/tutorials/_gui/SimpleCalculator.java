package com.tutorials._gui;

import java.awt.Dimension;
import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.GridLayout;
import java.awt.GridBagLayout;
import javax.swing.JTextField;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;

public class SimpleCalculator {
    private JFrame frame;
    private GridBagLayout gridBagLayout;
    private JTextField textFieldFirstNumber;
    private JTextField textFieldSecondNumber;
    private JButton btnNewButtonPlus;
    private JButton btnNewButtonMinus;
    private JButton btnNewButtonMultiply;
    private JButton btnNewButtonDivide;
    private JButton btnNewButtonClear;
    private JButton btnExit;
    private JLabel lblNewLabelResult;
    private int firstNumber;
    private int secondNumber;
    private long result;

    public SimpleCalculator() {
        initialize();
    }

    private void initialize() {
        setUpFrame();
        setUpGridBagLayout();
        addTextFieldFirstNumber();
        addTextFieldSecondNumber();
        addButtonPlus();
        addButtonMinus();
        addButtonMultiply();
        addButtonDivide();
        addButtonClear();
        addButtonExit();
        addLabelResult();
        setDimensions();
    }

    private void setUpFrame() {
        frame = new JFrame();
        frame.setBounds(100, 100, 370, 310);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
    private void setUpGridBagLayout() {
        gridBagLayout = new GridBagLayout();
        gridBagLayout.columnWidths = new int[]{0, 0, 0, 0};
        gridBagLayout.rowHeights = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        gridBagLayout.columnWeights = new double[]{0.0, 0.0, 0.0,
                Double.MIN_VALUE};
        gridBagLayout.rowWeights = new double[]{0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, Double.MIN_VALUE};
        frame.getContentPane().setLayout(gridBagLayout);
    }

    private void addTextFieldFirstNumber() {
        textFieldFirstNumber = new JTextField();
        textFieldFirstNumber.setText("0");
        GridBagConstraints gbc_textFieldFirstNumber = new GridBagConstraints();
        gbc_textFieldFirstNumber.insets = new Insets(10, 10, 5, 5);
        gbc_textFieldFirstNumber.anchor = GridBagConstraints.WEST;
        gbc_textFieldFirstNumber.gridx = 0;
        gbc_textFieldFirstNumber.gridy = 0;
        frame.getContentPane().add(textFieldFirstNumber,
                gbc_textFieldFirstNumber);
        textFieldFirstNumber.setColumns(10);
    }

    private void addTextFieldSecondNumber() {
        textFieldSecondNumber = new JTextField();
        textFieldSecondNumber.setText("0");
        GridBagConstraints gbc_textFieldSecondNumber = new GridBagConstraints();
        gbc_textFieldSecondNumber.insets = new Insets(10, 10, 5, 10);
        gbc_textFieldSecondNumber.anchor = GridBagConstraints.WEST;
        gbc_textFieldSecondNumber.gridx = 2;
        gbc_textFieldSecondNumber.gridy = 0;
        frame.getContentPane().add(textFieldSecondNumber,
                gbc_textFieldSecondNumber);
        textFieldSecondNumber.setColumns(10);
    }
    
    private void addButtonPlus() {
        btnNewButtonPlus = new JButton("+");
        btnNewButtonPlus.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                parseNumbers();
                result = firstNumber + secondNumber;
                setResult();
            }
        });
        GridBagConstraints gbc_btnNewButtonPlus = new GridBagConstraints();
        gbc_btnNewButtonPlus.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButtonPlus.gridx = 1;
        gbc_btnNewButtonPlus.gridy = 1;
        frame.getContentPane().add(btnNewButtonPlus, gbc_btnNewButtonPlus);
    }
    
    private void addButtonMinus() {
        btnNewButtonMinus = new JButton("-");
        btnNewButtonMinus.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                parseNumbers();
                result = firstNumber - secondNumber;
                setResult();
            }
        });
        GridBagConstraints gbc_btnNewButtonMinus = new GridBagConstraints();
        gbc_btnNewButtonMinus.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButtonMinus.gridx = 1;
        gbc_btnNewButtonMinus.gridy = 2;
        frame.getContentPane().add(btnNewButtonMinus, gbc_btnNewButtonMinus);
    }
    
    private void addButtonMultiply() {
        btnNewButtonMultiply = new JButton("*");
        btnNewButtonMultiply.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                parseNumbers();
                result = firstNumber * secondNumber;
                setResult();
            }
        });
        GridBagConstraints gbc_btnNewButtonMultiply = new GridBagConstraints();
        gbc_btnNewButtonMultiply.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButtonMultiply.gridx = 1;
        gbc_btnNewButtonMultiply.gridy = 3;
        frame.getContentPane().add(btnNewButtonMultiply,
                gbc_btnNewButtonMultiply);
    }
    
    private void addButtonDivide() {
        btnNewButtonDivide = new JButton("/");
        btnNewButtonDivide.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                parseNumbers();
                
                try {
                    result = firstNumber / secondNumber;
                } catch (ArithmeticException ae) {
                    System.err.println("Arithmetic exception!");
                    //ae.printStackTrace();
                }
                
                setResult();
            }
        });
        GridBagConstraints gbc_btnNewButtonDivide = new GridBagConstraints();
        gbc_btnNewButtonDivide.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButtonDivide.gridx = 1;
        gbc_btnNewButtonDivide.gridy = 4;
        frame.getContentPane().add(btnNewButtonDivide, gbc_btnNewButtonDivide);
    }
    
    private void addButtonClear() {
        btnNewButtonClear = new JButton("Clear");
        btnNewButtonClear.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                parseNumbers();
                result = 0;
                setResult();
            }
        });
        GridBagConstraints gbc_btnNewButtonClear = new GridBagConstraints();
        gbc_btnNewButtonClear.insets = new Insets(0, 0, 5, 5);
        gbc_btnNewButtonClear.gridx = 1;
        gbc_btnNewButtonClear.gridy = 6;
        frame.getContentPane().add(btnNewButtonClear, gbc_btnNewButtonClear);
    }
    
    private void addButtonExit() {
        btnExit = new JButton("Exit");
        btnExit.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.exit(0);
            }
        });
        GridBagConstraints gbc_btnExit = new GridBagConstraints();
        gbc_btnExit.insets = new Insets(0, 0, 10, 10);
        gbc_btnExit.anchor = GridBagConstraints.SOUTHEAST;
        gbc_btnExit.gridx = 2;
        gbc_btnExit.gridy = 8;
        frame.getContentPane().add(btnExit, gbc_btnExit);
    }
    
    private void addLabelResult() {
        lblNewLabelResult = new JLabel("0");
        GridBagConstraints gbc_lblNewLabelResult = new GridBagConstraints();
        gbc_lblNewLabelResult.insets = new Insets(0, 0, 5, 5);
        gbc_lblNewLabelResult.gridx = 1;
        gbc_lblNewLabelResult.gridy = 5;
        frame.getContentPane().add(lblNewLabelResult, gbc_lblNewLabelResult);
    }
    
    private void setDimensions() {
        textFieldFirstNumber.setPreferredSize(new Dimension(70, 20));
        textFieldSecondNumber.setPreferredSize(new Dimension(70, 20));
        btnNewButtonPlus.setPreferredSize(new Dimension(75, 25));
        btnNewButtonMinus.setPreferredSize(new Dimension(75, 25));
        btnNewButtonMultiply.setPreferredSize(new Dimension(75, 25));
        btnNewButtonDivide.setPreferredSize(new Dimension(75, 25));
        btnNewButtonClear.setPreferredSize(new Dimension(75, 25));
    }
    
    private void parseNumbers() {
        try {
            firstNumber = Integer.parseInt(textFieldFirstNumber.getText());
            secondNumber = Integer.parseInt(textFieldSecondNumber.getText());
        } catch (Exception e) {
            System.err.println("Wrong input data!");
            //e.printStackTrace();
        }
    }
    
    private void setResult() {
        lblNewLabelResult.setText(Long.toString(result));
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

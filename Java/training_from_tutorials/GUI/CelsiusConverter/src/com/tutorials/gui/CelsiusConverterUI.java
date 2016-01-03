package com.tutorials.gui;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import java.awt.FlowLayout;
import javax.swing.JLabel;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class CelsiusConverterUI extends JFrame {
    private static final long serialVersionUID = 1L;
    private JPanel contentPane;
    private JTextField tempTextField;
    private JButton btnConvertButton;
    private JLabel lblFahrenheitLabel;

    public CelsiusConverterUI() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 400, 100);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
        this.setTitle("Celsius Converter");
        setContentPane(contentPane);
        contentPane.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
        
        JLabel lblNewLabel = new JLabel("Celsius degrees");
        contentPane.add(lblNewLabel);
        
        tempTextField = new JTextField();
        contentPane.add(tempTextField);
        tempTextField.setColumns(10);
        
        btnConvertButton = new JButton("Convert");
        contentPane.add(btnConvertButton);
        
        lblFahrenheitLabel = new JLabel("Fahrenheit");
        contentPane.add(lblFahrenheitLabel);
        
        buttonHandler();
    }

    private void buttonHandler() {
        btnConvertButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                int temperatureInFahrenheit = (int) (Double.parseDouble(
                        tempTextField.getText()) * 1.80 + 32);
                
                lblFahrenheitLabel.setText(temperatureInFahrenheit +
                        " Fahrenheit degrees");
            }
        });
    }

}

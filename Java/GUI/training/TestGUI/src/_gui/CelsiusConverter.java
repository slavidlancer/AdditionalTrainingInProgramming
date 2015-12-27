package _gui;

import javax.swing.*;

public class CelsiusConverter extends JFrame {
    private JTextField textField1;
    private JButton convertButton;

    public CelsiusConverter() {
        initComponents();
    }

    private void initComponents() {
        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        GroupLayout layout = new GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
                layout.createParallelGroup(GroupLayout.Alignment.LEADING).
                        addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
                layout.createParallelGroup(GroupLayout.Alignment.LEADING).
                        addGap(0, 300, Short.MIN_VALUE)
        );
        pack();
    }
}

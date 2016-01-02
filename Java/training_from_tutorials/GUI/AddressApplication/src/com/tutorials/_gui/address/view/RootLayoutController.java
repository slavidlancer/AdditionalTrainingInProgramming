package com.tutorials._gui.address.view;

import com.tutorials._gui.address.Main;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;

public class RootLayoutController {
    private Main main;

    /**
     * Is called by the main application to give a reference back to itself.
     *
     * @param main
     */
    public void setMainApp(Main main) {
        this.main = main;
    }

    @FXML
    private void handleAbout() {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Address Application");
        alert.setHeaderText("About");
        alert.setContentText("Author: slavidlancer");

        alert.showAndWait();
    }

    @FXML
    private void handleExit() {
        System.exit(0);
    }
}

package com.tutorials._gui.address;

import com.tutorials._gui.address.model.Person;
import com.tutorials._gui.address.view.PersonEditDialogController;
import com.tutorials._gui.address.view.PersonOverviewController;
import javafx.application.Application;
/*import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;*/
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Modality;
import javafx.stage.Stage;

import java.io.IOException;

public class Main extends Application {
    private Stage primaryStage;
    private BorderPane rootLayout;
    private ObservableList<Person> personData = FXCollections.
            observableArrayList();

    public Main() {
        personData.add(new Person(new SimpleStringProperty("first name 01"),
                new SimpleStringProperty("last name 01")));
        personData.add(new Person(new SimpleStringProperty("first name 02"),
                new SimpleStringProperty("last name 02")));
        personData.add(new Person(new SimpleStringProperty("first name 03"),
                new SimpleStringProperty("last name 03")));
        personData.add(new Person(new SimpleStringProperty("first name 04"),
                new SimpleStringProperty("last name 04")));
        personData.add(new Person(new SimpleStringProperty("first name 05"),
                new SimpleStringProperty("last name 05")));
        personData.add(new Person(new SimpleStringProperty("first name 06"),
                new SimpleStringProperty("last name 06")));
        personData.add(new Person(new SimpleStringProperty("first name 07"),
                new SimpleStringProperty("last name 07")));
        personData.add(new Person(new SimpleStringProperty("first name 08"),
                new SimpleStringProperty("last name 08")));
    }

    public ObservableList<Person> getPersonData() {
        return personData;
    }

    @Override
    public void start(Stage primaryStage) throws Exception{
        this.primaryStage = primaryStage;
        //Parent root = FXMLLoader.load(getClass().getResource("sample.fxml"));
        this.primaryStage.setTitle("Address Application");
        //primaryStage.setScene(new Scene(root, 300, 275));
        //primaryStage.show();
        initRootLayout();
        showPersonOverview();
    }

    public void initRootLayout() {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(Main.class.getResource("view/RootLayout.fxml"));
            rootLayout = (BorderPane) loader.load();

            Scene scene = new Scene(rootLayout);
            primaryStage.setScene(scene);
            primaryStage.show();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }

    public void showPersonOverview() {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(Main.class.getResource(
                    "view/PersonOverview.fxml"));
            AnchorPane personOverview = (AnchorPane) loader.load();

            rootLayout.setCenter(personOverview);

            PersonOverviewController controller = loader.getController();
            controller.setMain(this);
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }

    public Stage getPrimaryStage() {
        return primaryStage;
    }

    /**
     * Opens a dialog to edit details for the specified person. If the user
     * clicks OK, the changes are saved into the provided person object and true
     * is returned.
     *
     * @param person the person object to be edited
     * @return true if the user clicked OK, false otherwise.
     */
    public boolean showPersonEditDialog(Person person) {
        try {
            // Load the fxml file and create a new stage for the popup dialog.
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(Main.class.getResource("view/PersonEditDialog.fxml"));
            AnchorPane page = (AnchorPane) loader.load();

            // Create the dialog Stage.
            Stage dialogStage = new Stage();
            dialogStage.setTitle("Edit Person");
            dialogStage.initModality(Modality.WINDOW_MODAL);
            dialogStage.initOwner(primaryStage);
            Scene scene = new Scene(page);
            dialogStage.setScene(scene);

            // Set the person into the controller.
            PersonEditDialogController controller = loader.getController();
            controller.setDialogStage(dialogStage);
            controller.setPerson(person);

            // Show the dialog and wait until the user closes it
            dialogStage.showAndWait();

            return controller.isOkClicked();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}

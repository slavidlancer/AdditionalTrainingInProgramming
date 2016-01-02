package com.tutorials._gui.address.model;

import javafx.beans.property.*;
import java.time.LocalDate;

public class Person {
    private final StringProperty firstName;
    private final StringProperty lastName;
    private final StringProperty street;
    private final IntegerProperty postalCode;
    private final StringProperty city;
    private final ObjectProperty<LocalDate> birthday;

    public Person() {
        this(new SimpleStringProperty(null), new SimpleStringProperty(null));
    }

    public Person(StringProperty firstName, StringProperty lastName) {
        this.firstName = new SimpleStringProperty(firstName.toString());
        this.lastName = new SimpleStringProperty(lastName.toString());

        this.street = new SimpleStringProperty("some street");
        this.postalCode = new SimpleIntegerProperty(1234);
        this.city = new SimpleStringProperty("some city");
        this.birthday = new SimpleObjectProperty<LocalDate>(LocalDate.of(1999,
                2, 21));
    }

    public String getFirstName() {
        return this.firstName.get();
    }

    public void setFirstName(String firstName) {
        this.firstName.set(firstName);
    }

    public StringProperty firstNameProperty() {
        return this.firstName;
    }

    public String getLastName() {
        return this.lastName.get();
    }

    public void setLastName(String lastName) {
        this.lastName.set(lastName);
    }

    public StringProperty lastNameProperty() {
        return this.lastName;
    }

    public String getStreet() {
        return this.street.get();
    }

    public void setStreet(String street) {
        this.street.set(street);
    }

    public StringProperty streetProperty() {
        return this.street;
    }

    public int getPostalCode() {
        return this.postalCode.get();
    }

    public void setPostalCode(int postalCode) {
        this.postalCode.set(postalCode);
    }

    public IntegerProperty postalCodeProperty() {
        return this.postalCode;
    }

    public String getCity() {
        return this.city.get();
    }

    public void setCity(String city) {
        this.city.set(city);
    }

    public StringProperty cityProperty() {
        return this.city;
    }

    public LocalDate getBirthday() {
        return this.birthday.get();
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday.set(birthday);
    }

    public ObjectProperty<LocalDate> birthdayProperty() {
        return this.birthday;
    }
}

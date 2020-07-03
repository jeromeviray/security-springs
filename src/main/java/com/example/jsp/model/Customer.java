package com.example.jsp.model;

import javax.persistence.*;

@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String name;
    private String email;
    private long number;
    private String city;
    private String province;
    private int house;
    private String street;
    private int postal;
    private String brgy;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "customerUser", joinColumns = @JoinColumn(name = "cusId", referencedColumnName = "id"),
                                        inverseJoinColumns = @JoinColumn(name = "userId", referencedColumnName = "id")
                )
    private User user;

    public Customer() {
    }

    public Customer(String name, String email, int number, String city, String province, int house, String street, int postal, String brgy) {
        this.name = name;
        this.email = email;
        this.number = number;
        this.city = city;
        this.province = province;
        this.house = house;
        this.street = street;
        this.postal = postal;
        this.brgy = brgy;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getNumber() {
        return number;
    }

    public void setNumber(long number) {
        this.number = number;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public int getHouse() {
        return house;
    }

    public void setHouse(int house) {
        this.house = house;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public int getPostal() {
        return postal;
    }

    public void setPostal(int postal) {
        this.postal = postal;
    }

    public String getBrgy() {
        return brgy;
    }

    public void setBrgy(String brgy) {
        this.brgy = brgy;
    }
}

package com.mvc.bankingsystem.dto;

public class User {
    private String username;
    private  String email;
    private String password;
    private String banktype;
    private Integer age;
    private double amount;

    public User(String username, String email, String password, String banktype, Integer age, double amount) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.banktype = banktype;
        this.age = age;
        this.amount = amount;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBanktype() {
        return banktype;
    }

    public void setBanktype(String banktype) {
        this.banktype = banktype;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }
}

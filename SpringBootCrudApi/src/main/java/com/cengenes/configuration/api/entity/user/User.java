package com.cengenes.configuration.api.entity.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {
    @Id
    private String userId;
    private String password;
    private String firstName;
    private String lastName;
    private String email;
    private String address1;
    private String address2;
    private String country;
    private String postal;
    private String role;
    private String otherRoles;
    private Integer isActive;
    private Integer isBlocked;
    private String secretQuestion;
    private String secretAnswer;
    private Integer enableBetaTesting;
    private Integer enableRenewal;
    private String phone;
    private Integer securityProviderId;
    private Integer defaultCustomerId;
    private String company;


    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getId() {
        return userId;
    }

    public void setId(String id) {
        this.userId = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPostal() {
        return postal;
    }

    public void setPostal(String postal) {
        this.postal = postal;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getOtherRoles() {
        return otherRoles;
    }

    public void setOtherRoles(String otherRoles) {
        this.otherRoles = otherRoles;
    }

    public Integer getIsActive() {
        return isActive;
    }

    public void setIsActive(Integer isActive) {
        this.isActive = isActive;
    }

    public Integer getIsBlocked() {
        return isBlocked;
    }

    public void setIsBlocked(Integer isBlocked) {
        this.isBlocked = isBlocked;
    }

    public String getSecretQuestion() {
        return secretQuestion;
    }

    public void setSecretQuestion(String secretQuestion) {
        this.secretQuestion = secretQuestion;
    }

    public String getSecretAnswer() {
        return secretAnswer;
    }

    public void setSecretAnswer(String secretAnswer) {
        this.secretAnswer = secretAnswer;
    }

    public Integer getEnableBetaTesting() {
        return enableBetaTesting;
    }

    public void setEnableBetaTesting(Integer enableBetaTesting) {
        this.enableBetaTesting = enableBetaTesting;
    }

    public Integer getEnableRenewal() {
        return enableRenewal;
    }

    public void setEnableRenewal(Integer enableRenewal) {
        this.enableRenewal = enableRenewal;
    }

    public Integer getSecurityProviderId() {
        return securityProviderId;
    }

    public void setSecurityProviderId(Integer securityProviderId) {
        this.securityProviderId = securityProviderId;
    }

    public Integer getDefaultCustomerId() {
        return defaultCustomerId;
    }

    public void setDefaultCustomerId(Integer defaultCustomerId) {
        this.defaultCustomerId = defaultCustomerId;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", password='" + password + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", address1='" + address1 + '\'' +
                ", address2='" + address2 + '\'' +
                ", country='" + country + '\'' +
                ", postal='" + postal + '\'' +
                ", role='" + role + '\'' +
                ", otherRoles='" + otherRoles + '\'' +
                ", isActive=" + isActive +
                ", isBlocked=" + isBlocked +
                ", secretQuestion='" + secretQuestion + '\'' +
                ", secretAnswer='" + secretAnswer + '\'' +
                ", enableBetaTesting=" + enableBetaTesting +
                ", enableRenewal=" + enableRenewal +
                ", phone='" + phone + '\'' +
                ", securityProviderId=" + securityProviderId +
                ", defaultCustomerId=" + defaultCustomerId +
                ", company='" + company + '\'' +
                '}';
    }
}

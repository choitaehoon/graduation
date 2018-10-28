package net.skhu.domain;

import lombok.Data;

@Data
public class Student
{
    int id;
    String name;
    String password;
    String email;
    String phone;
    String comment;
    double totalCredit;
    double avgGrade;
    double avgMajor;
    String question;
    Department department;
    int graduationRule_id;
    int type;

    public int getGraduationRule_id() {
        return graduationRule_id;
    }

    public void setGraduationRule_id(int graduationRule_id) {
        this.graduationRule_id = graduationRule_id;
    }

    int department_Id;
    String departmentName;

    public int getDepartment_Id() {
        return department_Id;
    }

    public void setDepartment_Id(int department_Id) {
        this.department_Id = department_Id;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }


    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public double getTotalCredit() {
        return totalCredit;
    }

    public void setTotalCredit(double totalCredit) {
        this.totalCredit = totalCredit;
    }

    public double getAvgGrade() {
        return avgGrade;
    }

    public void setAvgGrade(double avgGrade) {
        this.avgGrade = avgGrade;
    }

    public double getAvgMajor() {
        return avgMajor;
    }

    public void setAvgMajor(double avgMajor) {
        this.avgMajor = avgMajor;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }



}


package com.model;


public class Login {
    
    private int ID;
    private String Login;
    private String Password;
    private String Name;
    private String Adresse;
    private long Telephone;

    public Login(int ID, String Login, String Password, String Name, String Adresse, long Telephone) {
        this.ID = ID;
        this.Login = Login;
        this.Password = Password;
        this.Name = Name;
        this.Adresse = Adresse;
        this.Telephone = Telephone;
    }

    public Login(String Login, String Password, String Name, String Adresse, long Telephone) {
        this.Login = Login;
        this.Password = Password;
        this.Name = Name;
        this.Adresse = Adresse;
        this.Telephone = Telephone;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getLogin() {
        return Login;
    }

    public void setLogin(String Login) {
        this.Login = Login;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getAdresse() {
        return Adresse;
    }

    public void setAdresse(String Adresse) {
        this.Adresse = Adresse;
    }

    public long getTelephone() {
        return Telephone;
    }

    public void setTelephone(long Telephone) {
        this.Telephone = Telephone;
    }

    @Override
    public String toString() {
        return "Users{" + "ID=" + ID + ", Login=" + Login + ", Password=" + Password + ", Name=" + Name + ", Adresse=" + Adresse + ", Telephone=" + Telephone + '}';
    }
    
    
}

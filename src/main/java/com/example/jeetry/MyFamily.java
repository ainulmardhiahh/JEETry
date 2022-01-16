package com.example.jeetry;

public class MyFamily extends MySelf implements MyVehicle
{
    public String MyDad;
    public String MyMom;
    public String MySiblings;

    public MyFamily(String myName, String myAge, String myHobbies, String myDad, String myMom, String mySiblings) {
        super(myName, myAge, myHobbies);
        MyDad = myDad;
        MyMom = myMom;
        MySiblings = mySiblings;
    }

    public String getMyDad() {
        return MyDad;
    }

    public void setMyDad(String myDad) {
        MyDad = myDad;
    }

    public String getMyMom() {
        return MyMom;
    }

    public void setMyMom(String myMom) {
        MyMom = myMom;
    }

    public String getMySiblings() {
        return MySiblings;
    }

    public void setMySiblings(String mySiblings) {
        MySiblings = mySiblings;
    }

    public void PrintInfo()
    {
        System.out.println("\nName: " + super.MyName + "\nAge: " + super.MyAge + "\nHobbies: " + super.MyHobbies +
                "\nFather's Name: " + MyDad + "\nMother's Name: " + MyMom + "\nMy Siblings: " + MySiblings +
                "\nVehicle: " + MyVehicleType + "\nVehicle Brand: " + MyVehicleBrand + "\nVehicle Id: " + MyVehicleId);
    }
}

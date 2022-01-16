package com.example.jeetry;

public class MyStudent extends MySelf implements MyVehicle
{
    public String MyMatricNo;
    public String MyProgramCode;
    public String MyCampus;

    public MyStudent(String myName, String myAge, String myHobbies, String myMatricNo, String myProgramCode, String myCampus)
    {

        super(myName, myAge, myHobbies);
        MyMatricNo = myMatricNo;
        MyProgramCode = myProgramCode;
        MyCampus = myCampus;
    }

    public String getMyMatricNo() {
        return MyMatricNo;
    }

    public void setMyMatricNo(String myMatricNo) {
        MyMatricNo = myMatricNo;
    }

    public String getMyProgramCode() {
        return MyProgramCode;
    }

    public void setMyProgramCode(String myProgramCode) {
        MyProgramCode = myProgramCode;
    }

    public String getMyCampus() {
        return MyCampus;
    }

    public void setMyCampus(String myCampus) {
        MyCampus = myCampus;
    }

    public void PrintInfo()
    {
        System.out.println("\nName: " + super.MyName + "\nAge: " + super.MyAge + "\nHobbies: " + super.MyHobbies +
                "\nMatric No: " + MyMatricNo + "\nProgram Code: " + MyProgramCode + "\nCampus: " + MyCampus +
                "\nVehicle: " + MyVehicleType + "\nVehicle Brand: " + MyVehicleBrand + "\nVehicle Id: " + MyVehicleId);
    }
}

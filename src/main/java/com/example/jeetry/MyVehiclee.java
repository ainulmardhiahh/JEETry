package com.example.jeetry;

public class MyVehiclee extends MySelf implements MyVehicle
{
    public String MyVehicleType;
    public String MyVehicleBrand;
    public String MyVehicleId;

    public MyVehiclee(String myName, String myAge, String myHobbies, String myVehicleType, String myVehicleBrand, String myVehicleId)
    {

        super(myName, myAge, myHobbies);
        MyVehicleType = myVehicleType;
        MyVehicleBrand = myVehicleBrand;
        MyVehicleId = myVehicleId;
    }

    public String getMyVehicleType() {
        return MyVehicleType;
    }

    public void setMyVehicleType(String myVehicleType) {
        MyVehicleType = myVehicleType;
    }

    public String getMyVehicleBrand() {
        return MyVehicleBrand;
    }

    public void setMyVehicleBrand(String myVehicleBrand) {
        MyVehicleBrand = myVehicleBrand;
    }

    public String getMyVehicleId(){
        return MyVehicleId;
    }

    public void setMyVehicleId(String myVehicleId) {
        MyVehicleId = myVehicleId;
    }

    public void PrintInfo()
    {
        System.out.println("\nName: " + MyName + "\nAge: " + MyAge + "\nHobbies: " + MyHobbies + "\nVehicle: " + MyVehicleType +
                "\nVehicle Brand: " + MyVehicleBrand + "\nVehicle Id: " + MyVehicleId);
    }
}

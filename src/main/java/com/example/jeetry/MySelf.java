package com.example.jeetry;
public class MySelf implements MyVehicle
{
    public String MyName;
    public String MyAge;
    public String MyHobbies;
//    public String myVehicleType;
//    public String myVehicleBrand;
//    public String myVehicleId;


    public MySelf(String myName, String myAge, String myHobbies) {
        MyName = myName;
        MyAge = myAge;
        MyHobbies = myHobbies;
    }


    public String getMyName() { return MyName; }

    public void setMyName(String myName)
    {
        MyName = myName;
    }

    public String getMyAge()
    {
        return MyAge;
    }

    public void setMyAge(String myAge)
    {
        MyAge = myAge;
    }

    public String getMyHobbies()
    {
        return MyHobbies;
    }

    public void setMyHobbies(String myHobbies)
    {
        MyHobbies = myHobbies;
    }

//    public String getMyVehicleType() {
//        return myVehicleType;
//    }
//
//    public void setMyVehicleType(String myVehicleType) {
//        this.myVehicleType = myVehicleType;
//    }
//
//    public String getMyVehicleBrand() {
//        return myVehicleBrand;
//    }
//
//    public void setMyVehicleBrand(String myVehicleBrand) {
//        this.myVehicleBrand = myVehicleBrand;
//    }
//
//    public String getMyVehicleId(){
//        return myVehicleId;
//    }
//
//    public void setMyVehicleId(String myVehicleId) {
//        this.myVehicleId = myVehicleId;
//    }

    public void PrintInfo()
    {
        System.out.println("\nName: " + MyName + "\nAge: " + MyAge + "\nHobbies: " + MyHobbies + "\nVehicle: " + MyVehicleType +
                "\nVehicle Brand: " + MyVehicleBrand + "\nVehicle Id: " + MyVehicleId);
    }

}


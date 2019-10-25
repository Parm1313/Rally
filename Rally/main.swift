//
//  main.swift
//  Rally
//
//  Created by MacStudent on 2019-10-23.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Test part 1")
let grandprix=GrandPrix()
let grandprix2=GrandPrix()

var  name : String?; "Anonym"
var  speed : Double?; 130
var  weight : Int? ; 100
var  fuellevel : Int? ; 0
var  category : String?; ""
var  isTwoWheeled : Bool?; false
var  sidecar : Bool?; false
var setofparticipants = Set<Vehicle>()
var checkisrighttorace : Bool? ; false
print("Enter 1 choose car or 2 moto ")
let choose = readLine()
var choice = String(choose!)

for index in 1...2 {
    if choose == "1"  {
        print("Enter Car Name")
        name=readLine()
        print("Enter Car speed")
        speed=Double (readLine()!)
        print("Enter Car weight")
        weight=Int (readLine()!)
        print("Enter Car fuellevel")
        fuellevel = Int (readLine()!)
        
        print("Enter isTwoWheeled  true if  it has TwoWheeled else false")
        isTwoWheeled = Bool(readLine()!)
        
        print("Enter Car category")
        category = readLine()
        let car0 = Car(name:name!,speed:speed!,weight:weight!,fuellevel:fuellevel!,category :category!,isTwoWheeled :isTwoWheeled! )
        grandprix.add(vehicle: car0)
        
    }
    if choose == "2"  {
        print("Enter Moto Name")
        name=readLine()
        print("Enter Moto speed")
        speed=Double (readLine()!)
        print("Enter Moto weight")
        weight=Int (readLine()!)
        print("Enter Moto fuellevel")
        fuellevel = Int (readLine()!)
        print("Enter true if  Side car else false ")
        sidecar = Bool(readLine()!)
        print("Enter isTwoWheeled  true if  it has TwoWheeled else false")
        isTwoWheeled = Bool(readLine()!)
        
        let moto = Moto(name:name!,speed:speed!,weight:weight!,fuellevel:fuellevel!,sidecar :sidecar!,isTwoWheeled :isTwoWheeled! )
        grandprix.add(vehicle: moto)
        setofparticipants.insert(moto)
        
    }
    
}


grandprix.run()

print("Test part 2")
print("Enter 1 choose car or 2 moto ")

let choose1 = readLine()
var choice1 = String(choose1!)

for index in 1...2 {
    if choose1 == "1"  {
        
        print("Enter Car Name")
        name=readLine()
        print("Enter Car speed")
        speed=Double (readLine()!)
        print("Enter Car weight")
        weight=Int (readLine()!)
        print("Enter Car fuellevel")
        fuellevel = Int (readLine()!)
        
        print("Enter isTwoWheeled  true if  it has TwoWheeled else false")
        isTwoWheeled = Bool(readLine()!)
        print("Enter Car category")
        category = readLine()
        let car0 = Car(name:name!,speed:speed!,weight:weight!,fuellevel:fuellevel!,category :category!,isTwoWheeled :isTwoWheeled! )
        grandprix2.add(vehicle: car0)
        
    }
    if choose1 == "2"  {
        print("Enter Moto Name")
        name=readLine()
        print("Enter Moto speed")
        speed=Double (readLine()!)
        print("Enter Moto weight")
        weight=Int (readLine()!)
        print("Enter Moto fuellevel")
        fuellevel = Int (readLine()!)
        print("Enter true if  Side car else false ")
        sidecar = Bool(readLine()!)
        print("Enter isTwoWheeled  true if  it has TwoWheeled else false")
        isTwoWheeled = Bool(readLine()!)
        
        let moto = Moto(name:name!,speed:speed!,weight:weight!,fuellevel:fuellevel!,sidecar :sidecar!,isTwoWheeled :isTwoWheeled! )
        grandprix2.add(vehicle: moto)
        setofparticipants.insert(moto)
        
    }
    
}



grandprix2.run()

print("Test part 3")

let grandprix3=GrandPrix()

for vehicle in setofparticipants{
    
    if !vehicle.Righttorace {
        print("\n Not Grand Prix ")
        checkisrighttorace = false;
    }
    else {
        if (vehicle.isTwoWheeled) {
            let motoobj = vehicle as! Moto
            if motoobj.sidecar! {
                checkisrighttorace = false;
            }
        }
        else {
            let carobj = vehicle as! Car
            if carobj.isTwoWheeled {
                checkisrighttorace = false;
            }
        }
        print("\(checkisrighttorace)")
        
    }
    
}
print("Test part 4")
grandprix.winnerVehicle(testname : "First Round")
grandprix2.winnerVehicle(testname : "Second Round")

grandprix3.winnerVehicle(testname : "Third Round")




//
//  GrandPrix.swift
//  Rally
//
//  Created by MacStudent on 2019-10-23.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Cocoa
// rally is protocol
class GrandPrix: NSObject ,Rally {
var checkisrighttorace :Bool=false
func check() -> Bool {
    return checkisrighttorace;
}
var winnervehicle : Vehicle?
    
    //override constructor
override init() {
    
}
var setofparticipants = Set<Vehicle>()
func run() -> Int {
    if !setofparticipants.isEmpty{
        for vehicle in setofparticipants{
            if !vehicle.Righttorace {
                print("\n Not Grand Prix ")
                checkisrighttorace = false;
            }
            else{
                checkisrighttorace = true;
                
                let vehicletype=vehicle.isTwoWheeled
                if vehicletype {
                    let motoobj = vehicle as! Moto
                    if motoobj.Righttorace {
                        checkisrighttorace = true;
                        
                        winnervehicle = vehicle;
                        if vehicle.Weight > winnervehicle!.Weight && vehicle.Speed > winnervehicle!.Speed
                        {
                            winnervehicle = motoobj
                        }
                        if motoobj.sidecar! {
                            print("false ")
                        }
                        else {
                            print("\n \(vehicle.Name)-> speed max =\( vehicle.Speed)km/h, weight =\(vehicle.Weight) kg, \(motoobj.sidecarstr)")
                        }
                        
                    }
                    else {
                        checkisrighttorace = false;
                    }
                }
                else {
                    let carobj = vehicle as! Car
                    if carobj.Righttorace {
                        checkisrighttorace = true;
                        winnervehicle = vehicle;
                        if vehicle.Weight > winnervehicle!.Weight && vehicle.Speed > winnervehicle!.Speed
                        {
                            winnervehicle = carobj
                        }
                        if carobj.isTwoWheeled {
                            print(true)
                        }
                        else {
                            print("\n \(vehicle.Name)-> speed max =\( vehicle.Speed)km/h, weight =\(vehicle.Weight) kg,\(carobj.Category)")
                            
                        }
                    }
                    else {
                        checkisrighttorace = false;
                        
                    }
                }
            }
        }
    }
    return 0
}
func add(vehicle:Vehicle) -> Void {
    setofparticipants.insert(vehicle)
}
func winnerVehicle(testname : String   ) ->  Void {
    print("\(testname)");
    if (winnervehicle?.isTwoWheeled)! {
        let motoobj = winnervehicle as! Moto
        print("\n The winner of the Grand Prix is  " )
        
        print(" \(winnervehicle!.Name)-> speed max =\( winnervehicle!.Speed)km/h, weight =\(winnervehicle!.Weight) kg, \(String(describing: motoobj.sidecarstr))")
        
    }
    else {
        let carobj = winnervehicle as! Car
        print("\n The winner of the Grand Prix is  " )
        
        print("  \(winnervehicle!.Name)-> speed max =\( winnervehicle!.Speed)km/h, weight =\(winnervehicle!.Weight) kg,\(carobj.Category)")
        
        
    }
}
}

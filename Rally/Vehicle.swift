//
//  Vehicle.swift
//  Rally
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Cocoa

class Vehicle: NSObject {
    
    private var name: String? = "Anonym"
    private  var speed: Double? = 130
    private  var weight: Int? = 100
    private  var fuellevel: Int? = 0
    var isTwoWheeled : Bool
    private  var righttorace :Bool
     //constructor
    init(speed:Double,weight:Int,fuellevel:Int,name:String,isTwoWheeled : Bool) {
        
        //   print("\(self.name)-> speed max =\( self.speed)km/h, weight =\(self.weight) kg")
        
        if( self.weight! < weight)
        {
            if( self.speed! > speed)
            {
                print("The first car is better than the second")
            }
        }
        self.name=name
        self.speed=speed
        self.weight=weight
        self.fuellevel=fuellevel
        self.isTwoWheeled=false
        self.righttorace=true
        
        
    }
    
    func better() -> Bool {
        return true
    }
    // getter setter
    var Name: String {
        get {
            return name!
        }
    }
    var Speed: Double {
        get {
            return speed!
        }
    }
    
    var Weight: Int {
        get {
            return weight!
        }
    }
    var Fuellevel: Int {
        get {
            return fuellevel!
        }
    }
    var Righttorace: Bool {
        get {
            return righttorace
        }
    }
}

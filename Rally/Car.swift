//
//  Car.swift
//  Rally
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Car: Vehicle {
    var category:String? = ""
    private var name: String? = "Anonym"
    var speed: Double? = 130
    var weight: Int? = 100
    private  var fuellevel: Int? = 0
    // private  var isTwoWheeled : Bool?=false
    private  var righttorace :Bool?=true
    var Category: String {
        get {
            return category!
        }
    }
    //constructor
    init(name:String,speed:Double,weight:Int,fuellevel:Int,category :String,isTwoWheeled :Bool )
    {
        //superclass constructor
        super.init(speed: speed, weight: weight, fuellevel: fuellevel, name: name,isTwoWheeled: isTwoWheeled)
        self.name=name
        self.speed=speed
        self.weight=weight
        self.fuellevel=fuellevel
        self.category=category
        self.isTwoWheeled=false
        self.righttorace=true;
        //    print("\(self.name)-> speed max =\( self.speed)km/h, weight =\(self.weight) kg, car category =\(category)")
        
    }
}

//
//  Moto.swift
//  Rally
//
//  Created by MacStudent on 2019-10-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
// moto subclass of vehicle
class Moto: Vehicle  {
    var sidecar : Bool?=false
    var sidecarstr: String? = ""
    private var name: String? = "Anonym"
    var speed: Double? = 130
    var weight: Int? = 100
    private  var fuellevel: Int? = 0
    // var isTwoWheeled : Bool? = true
    var righttorace :Bool?=true
    
    // constructor
    init(name:String,speed:Double,weight:Int,fuellevel:Int,sidecar: Bool,isTwoWheeled: Bool)
    {
       // super class constructor
        super.init( speed: speed, weight: weight, fuellevel: fuellevel , name: name,isTwoWheeled: isTwoWheeled)
        
        self.isTwoWheeled=true
        self.name=name
        self.speed=speed
        self.weight=weight
        self.sidecar=true;
        
        self.fuellevel=fuellevel
        // print("\(self.name)-> speed max =\( self.speed)km/h, weight =\(self.weight) kg,  =\(sidecarstr)")
        if sidecar {
            sidecarstr="Moto, with sidecar"
            righttorace=false
        }
        else{
            sidecarstr="Moto"
            righttorace=true
            
        }
    }
    
    
}

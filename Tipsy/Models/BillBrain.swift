//
//  BillBrain.swift
//  Tipsy
//
//  Created by Nikita Shirobokov on 19.01.24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct BillBrain {
   
    var billValue: Double = 0.0;
    var tipText: String = "10%";
    let tipConvert: [String: Double] = ["0%": 0.0, "10%": 0.1, "20%": 0.2]
    var peopleCount: Double = 1.0;
    
    func getTip() -> Double{
        return tipConvert[tipText]!
    }
    
    mutating func updatePeopleCount(_ value: Double){
        peopleCount = value;
    }
    
    func calculateTotal() -> Double {
        let totalValue = (billValue + billValue * getTip())/peopleCount
        return totalValue
    }

    func getPeople() -> Int{
        return Int(peopleCount)
    }
    
}

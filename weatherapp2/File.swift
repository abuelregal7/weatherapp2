//
//  File.swift
//  weatherapp2
//
//  Created by Ahmed abu elregal on 11/16/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import Foundation
class Wether {
    
    
    
    
    
    var dt: Int!
    var temp: Double!
    var temp_min: Double!
    var temp_max: Double!
    var pressure: Double!
    var sea_level: Double!
    var grnd_level: Double!
    var humidity:Int!
    var temp_kf:Double!
    init(dt: Int!,temp: Double!,temp_min: Double!,temp_max: Double!,pressure: Double!,sea_level: Double!,grnd_level: Double!,humidity:Int!, temp_kf:Double!) {
        
        
        
        self.dt = dt
        self.temp = temp
        self.temp_min = temp_min
        self.temp_max = temp_max
        self.pressure = pressure
        self.sea_level = sea_level
        self.grnd_level = grnd_level
        self.humidity = humidity
        self.temp_kf = temp_kf
        
        
        
        
    }
    
}

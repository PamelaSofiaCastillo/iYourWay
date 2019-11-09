//
//  Place.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

struct Place: Codable {
    var name: String
    var lat: String
    var lng: String
    var active: Bool
    var sportType: Int
    
    init(){
        name = ""
        lat = ""
        lng = ""
        active = true
        sportType = 0
    }
}

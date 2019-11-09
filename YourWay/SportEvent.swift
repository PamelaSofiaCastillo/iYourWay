//
//  SportEvent.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

struct SportEvent: Codable {
    
    var title: String
    var description: String
    var userId: String
    var sportTypeId: String
    var privacityTypeId: String
    var placeId: String
    var active: String
    var date: String
    var sportEventByUsers: [SportEventUser]
    
    var rating: String
    var place: Place
    
    init(){
        title = "Unknowm"
        description = "Unknowm"
        userId = "Unknowm"
        sportTypeId = "Unknowm"
        privacityTypeId = "Unknowm"
        placeId = "Unknowm"
        active = "Unknowm"
        date = Date().description(with: .current)
        sportEventByUsers = []
        rating = ""
        place = Place()
    }
}
    

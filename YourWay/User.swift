//
//  User.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

struct User: Codable {
    var name: String
    var lastName: String
    var email: String
    var password: String
    var imageUrl: String
    var active: Bool

    init(){
        name = ""
        lastName = ""
        email = ""
        password = ""
        imageUrl = ""
        active = true
    }
}

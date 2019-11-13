//
//  RegisterViewModel.swift
//  iYourway
//
//  Created by Gabriela Antezana on 11/12/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import Foundation

class RegisterViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var name = ""
    @Published var lastName = ""
}

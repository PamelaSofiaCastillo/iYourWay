//
//  RegisterView.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    //@State var user: User
    
    var body: some View {
         Text("REgister")
        /*VStack(){
            TextField("Name", text: $user.name)
            TextField("Last Name", text: $user.lastName)
            TextField("Email", text: $user.email)
            SecureField("Password", text: $user.password)
        }*/
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

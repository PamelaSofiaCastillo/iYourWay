//
//  LoginView.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView{
            VStack(){
                Image("logo")
                    .resizable()
                    .frame(width: 75, height:75)
                    .padding(Edge.Set.bottom, 20)
                Text("YourWay")
                    .bold().font(.title)
                TextField("Usuario", text: $username)
                    .padding()
                    .cornerRadius(4.0)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                SecureField("Password", text: $password)
                    .padding()
                    .cornerRadius(4.0)
                    .padding(.bottom, 10)
                Button(action: {}, label: {Text("Registrarse")})
                Button(action: {}, label: {Text("Click me")})
            }.padding()
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


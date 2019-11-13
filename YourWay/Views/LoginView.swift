//
//  ContentView.swift
//  iYourway
//
//  Created by Sofia Castillo on 11/11/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var loginVM = LoginViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("human-handsup")
                        .resizable()
                        .frame(width: CGFloat(150.0), height: CGFloat(150.0))
                    
                    Text("YourWay")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    CustomTextField(placeholder: Text("Correo")
                        .foregroundColor(.white), text: $loginVM.email)
                    
                    CustomSecureField(placeholder: Text("Contraseña")
                        .foregroundColor(.white), text: $loginVM.password)
                    
                    CustomButton(text: "Iniciar")
                        .padding(.top, 16)
                        .padding(.horizontal, 64)
                    
                    NavigationLink(destination: RegisterView(registerVM: RegisterViewModel())) {
                        HStack {
                            Text("Registrate")
                                .font(.body)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .foregroundColor(.white)
                        .background(Color(red: 33/255, green: 182/255, blue: 168/255, opacity: 1.0))
                        .cornerRadius(30)
                    }
                    .shadow(radius: 3)
                    .padding(.top, 16)
                    .padding(.horizontal, 64)
                }
            }
        }.navigationBarTitle("Login")
    }
    
}

struct LoginView_Previews: PreviewProvider {
    
    static var previews: some View {
        LoginView(loginVM: LoginViewModel())
    }
}

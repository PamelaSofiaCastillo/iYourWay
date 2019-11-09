//
//  ContentView.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI
class ValidateUser: ObservableObject  {
    @Published var showResults:Bool = validateUserFromDataCore()
}

struct ContentView: View {
    @State private var flag = false
    var body: some View {
        ViewApp().environmentObject(ValidateUser())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ViewApp: View {
    @EnvironmentObject var validateUser: ValidateUser
    
    var body: some View {
        VStack {
            if validateUser.showResults {
                MenuView()
            } else {
                LoginView()
            }
        }
    }
}

struct MenuView: View {
    var body: some View{
        NavigationView{
            TabView{
                TabEventView().tabItem(){
                    Image("tab1")
                    Text("Eventos")
                }
                TabInvitationView().tabItem(){
                    Image("tab2")
                    Text("Invitaciones")
                }
                TabFriendView().tabItem(){
                    Image("tab3")
                    Text("Amigos")
                }
                TabPlaceView().tabItem(){
                    Image("tab4")
                    Text("Lugares")
                }
                TabProfileView().tabItem(){
                    Image("tab5")
                    Text("Perfil")
                }
                
            }.navigationBarTitle(Text("YourWay App"))
        }
    }
}

func validateUserFromDataCore() -> Bool {
    return false
}

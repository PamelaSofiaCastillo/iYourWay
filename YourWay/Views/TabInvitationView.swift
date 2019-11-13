//
//  TabInvitationView.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct GodRow: View {
  var event: EventViewModel
  
  var body: some View {
    Text("event.title")
    //print(event.title)
  }
}

struct TabInvitationView: View {
    @ObservedObject private var eventListViewModel = EventListViewModel()
    
    var body: some View {
        List(self.eventListViewModel.events){
            event in
                NavigationLink(destination: InvitationDetalleView(event: event)){
                GodRow(event: event)
                
            
            }
        }.navigationBarTitle(Text("Event"), displayMode: .automatic)
    }
}

struct TabInvitationView_Previews: PreviewProvider {
    static var previews: some View {
        TabInvitationView()
    }
}



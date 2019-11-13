//
//  InvitationDetalleView.swift
//  YourWay
//
//  Created by Alumnos on 11/12/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct InvitationDetalleView: View {
    var event: EventViewModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

struct InvitationDetalleView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationDetalleView(event: EventViewModel(sportEvent: SportEvent()))
    }
}

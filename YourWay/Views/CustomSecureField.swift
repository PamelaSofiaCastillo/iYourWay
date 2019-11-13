//
//  CustomSecureField.swift
//  iYourway
//
//  Created by Gabriela Antezana on 11/12/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct CustomSecureField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .center) {
            if text.isEmpty { placeholder }
            SecureField("", text: $text, onCommit: commit)
                .multilineTextAlignment(.center)
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
        }
    }
}

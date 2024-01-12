//
//  ReusableTextfield.swift
//  Chat
//
//  Created by Pedro Thomas on 1/11/24.
//

import SwiftUI

struct ReusableTextfield: View {
    
    @State var isSecure: Bool
    
    @State var placeholder: String
    @Binding var text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: UIScreen.main.bounds.width / 1.2, height: 55)
            .foregroundColor(Color(uiColor: .systemGray6))
            .overlay {
                if isSecure {
                    SecureField(placeholder, text: $text)
                        .padding(.leading, 5)
                } else {
                    TextField(placeholder, text: $text)
                        .padding(.leading, 5)
                }
            }
    }
}

//
//struct ReusableTextfield_Previews: PreviewProvider {
//    @State var text = ""
//    
//    static var previews: some View {
//        ReusableTextfield(isSecure: true, placeholder: "Placeholder", text: $text)
//    }
//}

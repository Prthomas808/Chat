//
//  ReusableTextfield.swift
//  Chat
//
//  Created by Pedro Thomas on 1/11/24.
//

import SwiftUI

struct ReusableTextfield: View {
    
    @State var placeholder: String
    @State var binding: String = ""
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: UIScreen.main.bounds.width / 1.2, height: 55)
            .foregroundColor(Color(uiColor: .systemGray6))
            .overlay {
                TextField(placeholder, text: $binding)
                    .padding(.leading, 5)
            }
        
    }
}


struct ReusableTextfield_Previews: PreviewProvider {
    static var previews: some View {
        ReusableTextfield(placeholder: "Placeholder")
    }
}

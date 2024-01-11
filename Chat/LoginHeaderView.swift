//
//  LoginHeaderView.swift
//  Chat
//
//  Created by Pedro Thomas on 1/11/24.
//

import SwiftUI

struct LoginHeaderView: View {
    var body: some View {
        VStack {
            Image(systemName: "plus.bubble")
                .resizable()
                .frame(width: 125, height: 125)
                .foregroundColor(.red)
            
            Text("Sign In")
                .font(.system(size: 18).bold())
            
            Text("Enter Your Information")
                .font(.system(size: 15))
                .foregroundColor(.gray)
                .fontWeight(.light)
        }
    }
}

struct LoginHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoginHeaderView()
    }
}

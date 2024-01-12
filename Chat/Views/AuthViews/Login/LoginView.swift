//
//  LoginView.swift
//  Chat
//
//  Created by Pedro Thomas on 1/11/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                LoginHeaderView(task: "Sign In")
                
                ReusableTextfield(isSecure: false, placeholder: "E-Mail Address", text : $email)
                ReusableTextfield(isSecure: true, placeholder: "Password", text : $password)
                
                Button {
                    //
                } label: {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: UIScreen.main.bounds.width / 1.2, height: 50)
                        .foregroundColor(.red)
                        .overlay {
                            Text("Sign In")
                                .foregroundColor(Color(uiColor: .systemGray6))
                        }
                }
                
                HStack {
                    Spacer()
                    
                    Button("Forgot Password?") {
                        //
                    }
                    .foregroundColor(Color(uiColor: .systemGray2))
                }
                .padding(.trailing, 35)
                
                Spacer()
                
                HStack {
                    Text("New User?")
                    
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Create Account")
                            .foregroundColor(.red)
                            .underline()
                    }
                    
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(.dark)
    }
}

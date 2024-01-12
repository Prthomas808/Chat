//
//  RegisterView.swift
//  Chat
//
//  Created by Pedro Thomas on 1/11/24.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                LoginHeaderView(task: "Sign Up")
                
                ReusableTextfield(placeholder: "First Name", binding: firstName)
                ReusableTextfield(placeholder: "Lasr Name", binding: lastName)
                ReusableTextfield(placeholder: "E-Mail Address", binding: email)
                ReusableTextfield(placeholder: "Password", binding: password)
                
                Button {
                    //
                } label: {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: UIScreen.main.bounds.width / 1.2, height: 50)
                        .foregroundColor(.red)
                        .overlay {
                            Text("Sign Up")
                                .foregroundColor(Color(uiColor: .systemGray6))
                        }
                }
                
                Spacer()
                
                HStack {
                    Text("Have An Account")
                    
                    Button {
                        dismiss()
                    } label: {
                        Text("Log In")
                            .foregroundColor(.red)
                            .underline()
                    }

                    
                    
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .preferredColorScheme(.dark)
    }
}

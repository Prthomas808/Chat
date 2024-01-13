//
//  EditProfileView.swift
//  Chat
//
//  Created by Pedro Thomas on 1/12/24.
//

import SwiftUI

struct EditProfileView: View {
    
    var body: some View {
        ZStack {
            Color(.tertiarySystemBackground).ignoresSafeArea()
            
            NavigationStack {
                List {
                    EditProfileSectionView(header: "") {
                        EditProfileHeaderView()
                    }
                    
                    EditProfileSectionView(header: "E-Mail Address") {
                        Text("logan@gmail.com")
                    }
                    
                    EditProfileSectionView(header: "") {
                        Button("Sign Out") {
                            //
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
                .padding(.top, -20)
            }
            
            Spacer()
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

struct EditProfileSectionView<Content: View>: View {
    @State var header: String
    @State var content: () -> Content
    
    var body: some View {
        
        Section(content: content, header: {
            Text(header)
        })
    }
}



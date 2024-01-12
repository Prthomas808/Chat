//
//  AccountView.swift
//  Chat
//
//  Created by Pedro Thomas on 1/12/24.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground).ignoresSafeArea()
                
                VStack(spacing: 30) {
                    
                    AccountHeaderView()
                    
                    List {
                        AccountCellView(label: "Account", systemImage: "person.circle.fill", fgColor: .red, destination: EditProfileView())
                        AccountCellView(label: "Notifcations", systemImage: "bell.fill", fgColor: .green, destination: MessagesView())
                        AccountCellView(label: "Dark Mode", systemImage: "moon.fill", fgColor: .indigo, destination: MessagesView())
                        AccountCellView(label: "Privacy", systemImage: "lock.fill", fgColor: .cyan, destination: MessagesView())
                        
                    }
                    .listStyle(.plain)
                }
                .padding(.top)
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}




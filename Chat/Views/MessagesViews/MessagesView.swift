//
//  MessagesView.swift
//  Chat
//
//  Created by Pedro Thomas on 1/12/24.
//

import SwiftUI

struct MessagesView: View {
    
    @State var accountViewPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello")
            }
            .navigationTitle("Messages")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        accountViewPresented.toggle()
                    } label: {
                        Image(systemName: "person.circle")
                    }
                    .sheet(isPresented: $accountViewPresented) {
                        AccountView()
                    }

                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "bubble.right.fill")
                    }

                }
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}

//struct ToolbarItemsView: View {
//    
//    @State var accountViewPresented: Bool = false
//    
//    var body: some View {
//        
//        ToolbarItem(placement: .navigationBarLeading) {
//            <#code#>
//        }
//    }
//}

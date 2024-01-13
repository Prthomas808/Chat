//
//  MessagesView.swift
//  Chat
//
//  Created by Pedro Thomas on 1/12/24.
//

import SwiftUI

struct MessagesView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello")
            }
            .navigationTitle("Messages")
            .toolbar {
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



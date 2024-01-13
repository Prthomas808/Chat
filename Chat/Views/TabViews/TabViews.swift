//
//  TabViews.swift
//  Chat
//
//  Created by Pedro Thomas on 1/12/24.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
            MessagesView()
                .tabItem { Label("Messages", systemImage: "bubble.right") }
            
            AccountView()
                .tabItem { Label("Settings", systemImage: "gear") }
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}

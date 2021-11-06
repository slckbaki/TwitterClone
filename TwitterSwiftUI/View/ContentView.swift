//
//  ContentView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 2/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var textItem = "Baki"
    
    var body: some View {
        
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                
                SearchView()
                    .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                    }
                ConversationsView()
                    .tabItem {
                    Image(systemName: "envelope")
                    Text("Messages")
                }
            }
            .navigationBarTitle("Twitter", displayMode: NavigationBarItem.TitleDisplayMode.inline)
            .navigationBarItems(leading: Button(action: {
                textItem = "Welcome Selcuk"
            }, label: {
                Text("Check")
            }))
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


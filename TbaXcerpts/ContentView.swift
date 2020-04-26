//
//  ContentView.swift
//  TbaXcerpts
//
//  Created by Alex Burdiss on 4/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CompositionListView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Excerpts")
            }
            ComposerListView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Composers")
            }
            MoreView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("More")
            }
        }
        .accentColor(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


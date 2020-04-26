//
//  CompositionListView.swift
//  TbaXcerpts
//
//  Created by Alex Burdiss on 4/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct CompositionListView: View {
    
    var model = TubaContentModel().excerpts
    
    var body: some View {
        NavigationView {
            List {
                ForEach(model) { item in
                    NavigationLink(destination: CompositionDetailView(composition: item)) {
                        HStack {
                            Text(item.composerLast)
                                .bold()
                            Text(item.name)
                            Spacer()
                        }
                    }
                }
            }
            .navigationBarTitle("TbaXcerpts")
            .navigationBarItems(trailing: NavigationLink(destination: RandomCompositionView()) {
                HStack {
                    Image(systemName: "cube")
                    Text("Random")
                }
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CompositionListView_Previews: PreviewProvider {
    static var previews: some View {
        CompositionListView()
    }
}


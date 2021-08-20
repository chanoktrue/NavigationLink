//
//  ContentView.swift
//  TextNavigationLink
//
//  Created by Thongchai Subsaidee on 20/8/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                Button("Next Step") {
                    isActive = true
                }
                
                NavigationLink(
                    destination: Text("Destination"),
                    isActive: $isActive,
                    label: {
                        EmptyView()
                    })
            }
            .navigationBarTitle("Link")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

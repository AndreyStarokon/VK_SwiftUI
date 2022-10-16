//
//  TableView.swift
//  VK_swiftUI
//
//  Created by Ffhh Qerg on 16.10.2022.
//

import SwiftUI

struct MyTabView: View {

    var body: some View {
        TabView {
            LoginView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            ContentView()
                .tabItem {
                    Label("Universe", systemImage: "globe")
                }
            LoginView()
                .tabItem {
                    Label("Item 3", systemImage: "paperplane")
                }
            LoginView()
                .tabItem {
                    Label("Item 4", systemImage: "sun.min")
                }
            LoginView()
                .tabItem {
                    Label("Item 5", systemImage: "flame")
                }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}

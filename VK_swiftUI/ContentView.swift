//
//  ContentView.swift
//  VK_swiftUI
//
//  Created by Ffhh Qerg on 12.10.2022.
//

import SwiftUI


struct ContentView: View {
    
    struct Universe: Identifiable {
        
        var id: String {
            name
        }
        
        let name: String
    }
    
    @State var universe: Universe?
    
    var body: some View {
        VStack(spacing: 16) {
            Text("кто ты из смешариков").modifier(Header())
            Text("это будет сложно")
                .padding()
                .foregroundColor(Color.red)
                .font(.headline)
            Button("еж") {
                universe = .init(name: "еж")
            }
            Button("кар карыч") {
                universe = .init(name: "карыч")
            }
        }
        .alert(item: $universe) { universe in
            Alert(title: Text(universe.name),
                  message: Text("спасибо за выбор!"),
                  dismissButton: .cancel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.blue)
            .padding()
            .background(Color.white)
    }
}


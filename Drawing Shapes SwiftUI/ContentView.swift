//
//  ContentView.swift
//  Drawing Shapes SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BuiltInShapes()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Introducing Some Built in Shapes.
struct BuiltInShapes : View {
    var body: some View {
        Circle()
            .foregroundColor(.green)
            .frame(width: 200, height: 200, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 80, height: 80, alignment: .center)
                    .foregroundColor(.white)
            )
    }
}

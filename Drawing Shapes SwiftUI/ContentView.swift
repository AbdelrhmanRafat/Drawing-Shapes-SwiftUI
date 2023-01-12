//
//  ContentView.swift
//  Drawing Shapes SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Path is struct Containing the outline of 2d Shape.
        Path() { path in
            path.move(to: CGPoint(x: 20, y: 20))//Move the pointer to be (20,20)Starting Point.
            path.addLine(to: CGPoint(x: 300, y: 20))// Draw line from (20,20)'Starting point' to (300,20)
            path.addLine(to: CGPoint(x: 300, y: 200))// Draw line from (3000,20)'last point' to (300,200)
            path.addLine(to: CGPoint(x: 20, y: 200))
            // Draw line from (3000,200)'last point' to (20,200)
            path.closeSubpath()// This Automatically connect last point with the starting point.
        }
        .stroke(Color.green,lineWidth: 10)// Using Stroke to Draw borders.
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

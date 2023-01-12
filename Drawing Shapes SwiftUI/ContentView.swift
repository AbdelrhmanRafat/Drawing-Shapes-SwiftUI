//
//  ContentView.swift
//  Drawing Shapes SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Embed two Path Shapes in Z-Stack.
        ZStack {
            QuadCurve()
            BorderQuadCurve() // Adding Border to QuadCurve
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct QuadCurve: View {
    var body: some View {
        Path() { path in
            path.move(to: CGPoint(x: 20, y: 60))// starting point.
            path.addLine(to: CGPoint(x: 40, y: 60))// Adding Line
            path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))// Adding Quad Curve From Point (40,60) to pint (210,60)
            //Control Point is the point the curvature done.
            path.addLine(to: CGPoint(x: 230, y: 60))
            path.addLine(to: CGPoint(x: 230, y: 100))
            path.addLine(to: CGPoint(x: 20, y: 100))
        }
        .fill(Color.purple)
    }
}
struct BorderQuadCurve: View {
    var body: some View {
        Path() { path in
            path.move(to: CGPoint(x: 20, y: 60))// starting point.
            path.addLine(to: CGPoint(x: 40, y: 60))// Adding Line
            path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))// Adding Quad Curve From Point (40,60) to pint (210,60)
            //Control Point is the point the curvature done.
            path.addLine(to: CGPoint(x: 230, y: 60))
            path.addLine(to: CGPoint(x: 230, y: 100))
            path.addLine(to: CGPoint(x: 20, y: 100))
            path.closeSubpath()
        }
        .stroke(lineWidth: 5)
    }
}

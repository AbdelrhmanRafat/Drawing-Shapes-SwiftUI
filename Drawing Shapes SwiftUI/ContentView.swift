//
//  ContentView.swift
//  Drawing Shapes SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 20, y: 20))
            path.addQuadCurve(to: CGPoint(x: 220, y: 20), control: CGPoint(x: 110, y: 0))
            //Control Point (x) is in the middle
            //(y) 20 points higher Try Change value of (y) to be positive and negative numbers to observe the change.
            path.addLine(to: CGPoint(x: 220, y: 60))
            path.addLine(to: CGPoint(x: 20, y: 60))
        }
        .fill(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Drawing Shapes SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Drawing Arcs
        Path() { path in
            path.move(to: CGPoint(x: 200, y: 200))
            //Starting Point Equal Center Point
            //Start Angle at the Right (0,360) are same angle
            //To know position of 90 Degrees angle try to change clock wise to false and you will know the position of 90 Degrees angle.
            path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: .zero, endAngle: Angle(degrees: 90), clockwise: true)
            
        }
        .fill(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

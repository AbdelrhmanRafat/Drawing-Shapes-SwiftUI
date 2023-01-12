//
//  ContentView.swift
//  Drawing Shapes SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Pie Chart.
        ZStack {
            ArcView(startAngle: .zero, endAngle: Angle(degrees: 190.0), ArcColor: .init(.systemYellow))
            //The End Angle is the Start Angle for the next Arc.
            ArcView(startAngle: Angle(degrees: 190.0), endAngle: Angle(degrees: 110), ArcColor: .init(.systemTeal))
            ArcView(startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), ArcColor: .blue)
            ArcView(startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360), ArcColor: .purple)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ArcView: View {
    var startAngle : Angle
    var endAngle : Angle
    var ArcColor : Color
    var body: some View {
        Path() { path in
            path.move(to: CGPoint(x: 200, y: 200))
            path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: startAngle, endAngle: endAngle, clockwise: true)
            
        }
        .fill(ArcColor)
    }
}

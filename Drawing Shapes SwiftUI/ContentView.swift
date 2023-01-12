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
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 190.0), clockwise: true)
            }
            .fill(Color.init(.systemYellow))
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
            }
            .fill(Color.init(.systemTeal))
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
            }
            .fill(Color.blue)
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360.0), clockwise: true)
            }
            .fill(Color.purple)
            .offset(x: 20, y: 20) // Offset the position of Chart.
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360.0), clockwise: true)
                path.closeSubpath()
            }
            .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 10) // Add Border to Chart.with same offset
            .offset(x: 20, y: 20)
            .overlay( // OverLay Text on Chart
                 Text("25%")
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .offset(x: 80, y: -120) // Offset Position of Text to be inside Chart.
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

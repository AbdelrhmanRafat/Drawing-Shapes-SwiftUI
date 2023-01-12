//
//  ContentView.swift
//  Drawing Shapes SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Organize Pie Chart Code Using Shape Protocol.
        ZStack {
            ChartView(startAngle: 0, endAngle: 190.0).fill(Color.init(.systemYellow))
            ChartView(startAngle: 190.0, endAngle: 110.0) .fill(Color.init(.systemTeal))
            ChartView(startAngle: 110.0, endAngle: 90.0).fill(Color.blue)
            ChartView(startAngle: 90.0, endAngle: 360.0)
            .fill(Color.purple)
            .offset(x: 20, y: 20) // Offset the position of Chart.
            ChartView(startAngle: 90.0, endAngle: 360.0)
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
struct ChartView : Shape {
    var startAngle : Double
    var endAngle : Double
    func path(in rect: CGRect) -> Path {
        let path = Path { path in
            path.move(to: CGPoint(x: 200, y: 200))
            path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngle), clockwise: true)
            path.closeSubpath()
        }
        return path
    }
    
}

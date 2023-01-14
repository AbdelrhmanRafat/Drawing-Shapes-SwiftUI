//
//  ContentView.swift
//  Drawing Shapes SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [Color("LightPurple"), Color("DarkPurple")]), startPoint: .trailing, endPoint: .leading)
    var body: some View {
        //Creating Progress Indicator Using Shapes.
        ZStack {
            Circle()
                .stroke(Color(.systemGray6),lineWidth: 20)// Use Stroke Modifier to draw outline of circle.
                .frame(width: 300, height: 300, alignment: .center)
            Circle()
                .trim(from: 0.0, to: 0.85)// Trim Modifier is the trick to create an open Circle.
                .stroke(purpleGradient,lineWidth: 20)//The order is very important as the trim comes first then stroke then Frame.
                .frame(width: 300, height: 300, alignment: .center)
                .overlay(
                    VStack {
                        Text("85%")
                        .font(.system(size: 80, weight: .bold, design: .rounded))
                            .foregroundColor(Color(.systemGray))
                        Text("Complete")
                            .font(.system(.body, design: .rounded))
                            .bold()
                            .foregroundColor(Color(.systemGray))
                    }
                
                )
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

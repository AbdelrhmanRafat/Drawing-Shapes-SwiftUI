//
//  ContentView.swift
//  Drawing Shapes SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Hello World")
        }, label: {
            Text("Test")
                .font(.system(.title, design: .rounded))
                .bold()
                .foregroundColor(.white)
                .frame(width: 350, height: 50, alignment: .center)
                .background(Dome().fill(Color.red))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Understanding Shape Protocol
struct Dome : Shape {
    //Protocol Has Required Function
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path =  Path { path in
            path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
            path.addQuadCurve(to: CGPoint(x: rect.width, y: 0), control: CGPoint(x: rect.size.width / 2, y: -(rect.size.width * 0.1)))
         //The rect size is defined by the Button Frame.
        }
        return path
    }
}

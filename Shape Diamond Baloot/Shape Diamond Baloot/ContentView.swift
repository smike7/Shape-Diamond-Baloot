//
//  ContentView.swift
//  Shape Diamond Baloot
//
//  Created by Faisal on 28/09/2021.
//  www.swiftycat.com

import SwiftUI



struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.25), radius: 40, y: 20)
            
            
            Diamond()
                .fill(Color.red)
                .frame(width: 50, height: 90)
            
            VStack {
                VStack(spacing: 2) {
                    Text("A")
                        .font(.largeTitle.bold())
                        .foregroundColor(.red)
                    
                    Diamond()
                        .fill(Color.red)
                        .frame(width: 20, height: 30)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                Spacer()
                VStack(spacing: 2) {
                    Text("A")
                        .font(.largeTitle.bold())
                        .foregroundColor(.red)
                    
                    Diamond()
                        .fill(Color.red)
                        .frame(width: 20, height: 30)
                    
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
            }
            
        }.frame(width: 340, height: 450)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

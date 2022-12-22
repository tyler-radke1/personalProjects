//
//  ContentView.swift
//  landmarks
//
//  Created by Tyler Radke on 12/21/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
        
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
            
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About turtle rock")
                    .font(.title2)
                
                Text("Are there turtles? The world may never know")
            }
            
            .padding()
            Spacer()
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
        
    }
    
}

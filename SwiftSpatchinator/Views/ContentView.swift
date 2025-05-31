//
//  ContentView.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("One").navigationTitle("Title One")
            Text("Two").navigationTitle("Title Two")
            ZStack {
                Rectangle()
                    .foregroundStyle(.blue)
                    .frame(width: 10, height: 10)
                Image(systemName: "figure.skiing.downhill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                    .foregroundColor(.red)
            }
            
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 10, height: 10)
            Text("Main content here")
                .navigationTitle("Dispatcher")
                
        }
        
    }
}

#Preview {
    ContentView()
}

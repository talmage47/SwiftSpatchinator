//
//  ContentView.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("yuh")
            Rectangle()
                .foregroundStyle(.blue)
                .frame(width: 300, height: 300)
            Image(systemName: "figure.skiing.downhill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            Text("yuh")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

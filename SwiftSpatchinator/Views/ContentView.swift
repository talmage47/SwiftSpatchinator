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
            VStack {
                TaskLegend()
                GlobalView()
                ConcurrentView()
                SerialView()
            }
                
            Spacer()
            .navigationTitle(Text("SwiftSpatchinator"))
                
        }
        
    }
}

#Preview {
    ContentView()
}

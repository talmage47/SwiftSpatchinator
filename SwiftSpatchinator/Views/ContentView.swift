//
//  ContentView.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/18/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var qualityModel = QualitySelectionModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                TaskLegend()
                    .environmentObject(qualityModel)
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

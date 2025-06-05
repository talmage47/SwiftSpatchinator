//
//  ContentView.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/18/25.
//

import SwiftUI

struct ContentView: View {
    private var qualityModel = QualitySelectionModel.shared
    
    var body: some View {
        NavigationStack {
            VStack {
                TaskLegend(qualityModel: qualityModel)
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

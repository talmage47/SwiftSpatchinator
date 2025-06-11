//
//  ContentView.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/18/25.
//

import SwiftUI

struct ContentView: View {
    private var model = Model.shared
    
    var body: some View {
        NavigationStack {
            VStack {
                QualitySelector(model: model)
                GlobalView(model: model)
                ConcurrentView(model: model)
                SerialView(model: model)
            }
                
            Spacer()
            .navigationTitle(Text("SwiftSpatchinator"))
                
        }
        
    }
}

#Preview {
    ContentView()
}

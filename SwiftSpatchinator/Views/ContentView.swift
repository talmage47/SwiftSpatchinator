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

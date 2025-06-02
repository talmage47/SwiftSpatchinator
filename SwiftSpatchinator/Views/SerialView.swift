//
//  SerialView.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/1/25.
//

import SwiftUI

struct SerialView: View {
    var body: some View {
        VStack {
            HStack (alignment: .top){
                Text("Serial Dispatch Queue")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Button(action: {
                    startProcess()
                }) {
                    VStack(spacing: 4) {
                        Image(systemName: "plus.square.on.square")
                            .foregroundColor(.blue)
                            .font(.body)
                        Text("task")
                            .font(.caption)
                    }
                }
                Button(action: {
                    startProcess()
                }) {
                    VStack(spacing: 4) {
                        Image(systemName: "plus.square.fill.on.square.fill")
                            .foregroundColor(.blue)
                            .font(.body)
                        Text("barrier")
                            .font(.caption)
                    }
                }
            }
            HStack (alignment: .center){
                
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    SerialView()
}

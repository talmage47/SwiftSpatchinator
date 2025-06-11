//
//  GlobalView.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/1/25.
//

import SwiftUI

struct GlobalView: View {
    var model: Model
    
    let columns = [
            GridItem(.adaptive(minimum: 40), spacing: 5)
        ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Global Dispatch Queue")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Button(action: {
                    model.startGlobal()
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
                    model.startGlobal(flags: .barrier)
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
            LazyVGrid(columns: columns, alignment: .center, spacing: 5){
                ForEach(model.globalAvatar, id:\.self) { arrayValue
                    in
                    if arrayValue.barrier {
                        BarrierAvatar(
                            label: String(arrayValue.currentValue),
                            barrierColor: model.selectedQuality.color
                        )
                        .transition(.opacity)
                    }
                    else {
                        TaskAvatar(
                            label: String(arrayValue.currentValue),
                            bodyColor: model.selectedQuality.color
                        )
                        .transition(.opacity)
                    }
                }
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    GlobalView(model: Model())
}

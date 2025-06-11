//
//  SerialView.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/1/25.
//

import SwiftUI

struct SerialView: View {
    var model: Model
    
    var body: some View {
        VStack {
            HStack (alignment: .top){
                Text("Serial Dispatch Queue")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Button(action: {
                    model.startSerial()
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
                    model.startSerial(flags: .barrier)
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
                ForEach(model.serialAvatar, id:\.self) { arrayValue
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
    SerialView(model: Model())
}

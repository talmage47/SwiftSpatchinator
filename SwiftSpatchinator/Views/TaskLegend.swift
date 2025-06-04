//
//  TaskLegend.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/31/25.
//

import SwiftUI

let dictKeys: [QualitySelection] = Array(qualityDict.keys)

struct TaskLegend: View {
    @EnvironmentObject var selectedQuality: QualitySelectionModel
    
    var body: some View {
        VStack {
            Text("Quality of Service")
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack (alignment: .center){
                Button(action: {
                    selectedQuality = QualitySelection.userinitiated
                }) {
                    
                }
                
//                ForEach(dictKeys, id: \.self) { qos in
//                    if let qualityInformation = qualityDict[qos] {
//                        Button(action: {
//                            selectedQuality = qos
//                        }) {
//                            QualityButton(
//                                label: qualityInformation.abbreviation,
//                                buttonColor: qualityInformation.color,
//                                isSelected: selectedQuality == qos
//                            )
//                        }
//                    }
//                }
                
//                TaskAvatar(label: "UI", bodyColor: .blue)
//                TaskAvatar(label: "IN", bodyColor: .red)
//                TaskAvatar(label: "UT", bodyColor: .green)
//                TaskAvatar(label: "BG", bodyColor: .purple)
//                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    TaskLegend()
}

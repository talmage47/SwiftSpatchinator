//
//  TaskLegend.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/31/25.
//

import SwiftUI


struct QualitySelector: View {
    var model: Model
    
    var body: some View {
        VStack {
            Text("Quality of Service")
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack (alignment: .center){
//                Button(action: {
//                    QualitySelectionModel.selectedQuality = QualitySelection.userinitiated
//                }) {
//                    
//                }
                
                ForEach(model.qualityInformation, id:\.self) { arrayValue in
                        Button(action: {
                            model.selectedQuality = arrayValue
                        }) {
                            QualityButton(
                                label: arrayValue.abbreviation,
                                buttonColor: arrayValue.color,
                                isSelected: model.selectedQuality.qos == arrayValue.qos
                            )
                        }
                    }
                
                
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
    QualitySelector(model: Model())
}

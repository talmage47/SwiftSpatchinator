//
//  TaskLegend.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/31/25.
//

import SwiftUI

struct TaskLegend: View {
    var body: some View {
        VStack {
            Text("Quality of Service")
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack (alignment: .center){
                TaskAvatar(label: "UI", bodyColor: .blue)
                TaskAvatar(label: "IN", bodyColor: .red)
                TaskAvatar(label: "UT", bodyColor: .green)
                TaskAvatar(label: "BG", bodyColor: .purple)
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    TaskLegend()
}

//
//  TaskLegend.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/31/25.
//

import SwiftUI

struct TaskLegend: View {
    var body: some View {
        HStack {
            TaskAvatar(label: "UI", bodyColor: .blue)
            TaskAvatar(label: "IN", bodyColor: .red)
            TaskAvatar(label: "UT", bodyColor: .green)
            TaskAvatar(label: "BG", bodyColor: .purple)
            
        }
    }
}

#Preview {
    TaskLegend()
}

//
//  TaskAvatar.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 5/31/25.
//

import SwiftUI

struct TaskAvatar: View {
    var label: String = ""
    @State var bodyColor: Color = .blue
    var cornerRadius: CGFloat = 10
    var size: CGFloat = 40
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .circular)
                .fill(bodyColor)
                .frame(width: size, height: size)
            Text(label)
                .font(.system(size: size * 0.5, weight: .bold, design: .rounded))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    TaskAvatar(label: "A", bodyColor: .green)
}

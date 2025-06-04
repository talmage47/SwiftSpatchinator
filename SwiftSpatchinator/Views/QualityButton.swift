//
//  QualityButton.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/3/25.
//

import SwiftUI

struct QualityButton: View {
    let label: String
    let buttonColor: Color
    var isSelected: Bool = false
    let cornerRadius: CGFloat = 10
    let size: CGFloat = 40

    
    var body: some View {
        TaskAvatar(label: label, bodyColor: buttonColor, cornerRadius: cornerRadius, size: size)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius, style: .circular)
                    .fill(isSelected ? Color.clear : Color.gray.opacity(0.5))
                    .frame(width: size, height: size)
            )
    }
}

#Preview {
    QualityButton(label: "UT", buttonColor: .blue, isSelected: true)
}

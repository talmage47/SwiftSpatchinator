//
//  BarrierAvatar.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/10/25.
//

import SwiftUI

struct BarrierAvatar: View {
    let label: String
    let barrierColor: Color
    let cornerRadius: CGFloat = 10
    let size: CGFloat = 40
    
    
    var body: some View {
        ZStack (alignment: .bottom){
            TaskAvatar(label: label, bodyColor: barrierColor, cornerRadius: cornerRadius, size: size)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius, style: .circular)
                        .stroke(Color.primary, lineWidth: 3)
                        .frame(width: size, height: size)
                )
            Text("barrier")
                .font(.system(size:10))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    BarrierAvatar(label: "10", barrierColor: .blue)
}

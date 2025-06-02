//
//  GlobalView.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/1/25.
//

import SwiftUI

struct GlobalView: View {
    var body: some View {
        VStack {
            Text("Global Dispatch Queue")
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack (alignment: .center){
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    GlobalView()
}

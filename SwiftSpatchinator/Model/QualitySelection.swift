//
//  QualitySelection.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/3/25.
//

import Foundation

enum QualitySelection: Int, CaseIterable, Identifiable {
    case userinteractive = 1
    case userinitiated = 2
    case defaultquality = 3
    case utility = 4
    case background = 5
    
    var id: Int {
        self.rawValue
    }
    
    var label: String {
        return String(self.rawValue)
    }
    
}

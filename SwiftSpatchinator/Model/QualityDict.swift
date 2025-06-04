//
//  QualityColors.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/3/25.
//

import Foundation
import SwiftUI

struct QualityInformation {
    let color: Color
    let abbreviation: String
}

let qualityDict: [QualitySelection: QualityInformation] = [
    QualitySelection.userinteractive: QualityInformation(color: .red, abbreviation: "UI"),
    QualitySelection.userinitiated: QualityInformation(color: .orange, abbreviation: "IN"),
    QualitySelection.defaultquality: QualityInformation(color: .green, abbreviation: "DF"),
    QualitySelection.utility: QualityInformation(color: .blue, abbreviation: "UT"),
    QualitySelection.background: QualityInformation(color: .purple, abbreviation: "BG"),
]
    

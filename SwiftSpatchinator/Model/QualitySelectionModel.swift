//
//  QualitySelectionModel.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/3/25.
//

import Foundation
import SwiftUI

class QualitySelectionModel: ObservableObject {
    @Published var selectedQuality: QualitySelection = QualitySelection.defaultquality
        
}

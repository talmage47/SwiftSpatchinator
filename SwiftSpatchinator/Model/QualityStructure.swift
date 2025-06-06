//
//  QualityStructure.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/3/25.
//

import Foundation
import SwiftUI
import Dispatch

struct QualityStructure: Hashable {
    let qos: DispatchQoS.QoSClass
    let color: Color
    let abbreviation: String
}
    

//
//  Model.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/3/25.
//

import Foundation
import SwiftUI

@Observable
class Model: QueueItemProtocol {
    static let shared = Model()
    
    var selectedQuality: DispatchQoS.QoSClass = DispatchQoS.QoSClass.default
    
    let qualityInformation: [QualityStructure] = [
        QualityStructure(qos: .userInteractive, color: .red, abbreviation: "UI"),
        QualityStructure(qos: .userInitiated, color: .orange, abbreviation: "IN"),
        QualityStructure(qos: .default, color: .green, abbreviation: "DF"),
        QualityStructure(qos: .utility, color: .blue, abbreviation: "UT"),
        QualityStructure(qos: .background, color: .purple, abbreviation: "BG")
        ]
    
    let serialQueue = DispatchQueue(label: "com.talmage.swiftspatchinator.serial")
    
    var globalAvatar: [QueueItem] = []
    var concurrentAvatar: [QueueItem] = []
    var serialAvatar: [QueueItem] = []
    
    
    func startMain() {
        var newQueueItem: QueueItem = QueueItem()
        
        DispatchQueue.main(qos: selectedQuality).async{
            newQueueItem.run()
        }
    }
    
    func startConcurrent() {
        
        
        
        DispatchQueue.global(qos: selectedQuality).async {}
    }
    
    func startSerial() {
        
        
        serialQueue(qos: selectedQuality).sync {}
        
    }
    
    // MARK: QueueItemProtocol Methods
    
    func queueItemFinished(_ item: QueueItem) {
        <#code#>
    }
    
}


// TODO:
// move all of the functions from queue item to model
// declare queues in the model
// consider a queue manager
// make avatars reference the queues



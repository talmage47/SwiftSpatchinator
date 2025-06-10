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
    
    let serialQueue = DispatchQueue(
        label: "com.SwiftSpatchinator.serialQueue",
        qos: .background
    )
    
    let concurrentQueue = DispatchQueue(
        label: "com.SwiftSpatchinator.concurrentQueue",
        qos: .background,
        attributes: .concurrent
    )
    
    var globalAvatar: [QueueItem] = []
    var concurrentAvatar: [QueueItem] = []
    var serialAvatar: [QueueItem] = []
    
    
    func startGlobal() {
        
        var newQueueItem: QueueItem = QueueItem()
        let newWorkItem: DispatchWorkItem = DispatchWorkItem(qos: DispatchQoS(qosClass:selectedQuality, relativePriority: 0)) {
            newQueueItem.run()
        }
        
        DispatchQueue.global(qos: .default).async(execute: newWorkItem)
        
        
    }
    
    func startConcurrent() {
        
        var newQueueItem: QueueItem = QueueItem()
        let newWorkItem: DispatchWorkItem = DispatchWorkItem(qos: DispatchQoS(qosClass:selectedQuality, relativePriority: 0)) {
            newQueueItem.run()
        }
        
        concurrentQueue.async(execute: newWorkItem)
        
    }
    
    func startSerial() {
        
        var newQueueItem: QueueItem = QueueItem()
        let newWorkItem: DispatchWorkItem = DispatchWorkItem(qos: DispatchQoS(qosClass:selectedQuality, relativePriority: 0)) {
            newQueueItem.run()
        }
        
        serialQueue.async(execute: newWorkItem)
        
    }
    
    // MARK: QueueItemProtocol Methods
    
    func queueItemFinished(_ item: QueueItem) {
        if let index = globalAvatar.firstIndex(of: item) {
            globalAvatar.remove(at: index)
        }
        if let index = concurrentAvatar.firstIndex(of: item) {
            concurrentAvatar.remove(at: index)
        }
        if let index = serialAvatar.firstIndex(of: item) {
            serialAvatar.remove(at: index)
        }
    }
    
}


// TODO:
// move all of the functions from queue item to model
// declare queues in the model
// consider a queue manager
// make avatars reference the queues



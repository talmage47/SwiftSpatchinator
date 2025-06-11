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
    
    var selectedQuality: QualityStructure = QualityStructure(qos: .default, color: .green, abbreviation: "DF")
    
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
    
    
    func startGlobal(flags: DispatchWorkItemFlags = []) {
        
        let newQueueItem: QueueItem = QueueItem(selectedQuality.qos,flags, self)
        let newWorkItem: DispatchWorkItem = DispatchWorkItem(qos: DispatchQoS(qosClass:selectedQuality.qos, relativePriority: 0), flags: flags) {
            newQueueItem.run()
        }
        
        DispatchQueue.global(qos: .default).async(execute: newWorkItem)
        globalAvatar.append(newQueueItem)
        
        
    }
    
    func startConcurrent(flags: DispatchWorkItemFlags = []) {
        
        let newQueueItem: QueueItem = QueueItem(selectedQuality.qos,flags, self)
        let newWorkItem: DispatchWorkItem = DispatchWorkItem(qos: DispatchQoS(qosClass: selectedQuality.qos, relativePriority: 0), flags: flags) {
            newQueueItem.run()
        }
        
        concurrentQueue.async(execute: newWorkItem)
        concurrentAvatar.append(newQueueItem)
        
    }
    
    func startSerial(flags: DispatchWorkItemFlags = []) {
        
        let newQueueItem: QueueItem = QueueItem(selectedQuality.qos,flags, self)
        let newWorkItem: DispatchWorkItem = DispatchWorkItem(qos: DispatchQoS(qosClass:selectedQuality.qos, relativePriority: 0), flags: flags) {
            newQueueItem.run()
        }
        
        serialQueue.async(execute: newWorkItem)
        serialAvatar.append(newQueueItem)
        
    }
    
    // MARK: QueueItemProtocol Methods
    
    func queueItemFinished(_ item: QueueItem) {
        DispatchQueue.main.async { [weak self] in
            if let self = self {
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
    }
    
}


// TODO:
// move all of the functions from queue item to model
// declare queues in the model
// consider a queue manager
// make avatars reference the queues



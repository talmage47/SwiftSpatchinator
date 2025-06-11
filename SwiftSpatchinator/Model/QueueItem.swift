//
//  QueueItem.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/1/25.
//

import Foundation

protocol QueueItemProtocol {
    func queueItemFinished(_ item: QueueItem)
}

@Observable
class QueueItem: Equatable, Hashable {
    
    let priority: DispatchQoS.QoSClass
    private(set) var currentValue: Int
    let initialValue: Int
    let barrier: Bool
    let delegate: QueueItemProtocol?

    init(_ priority: DispatchQoS.QoSClass, _ flags: DispatchWorkItemFlags = [], _ delegate: QueueItemProtocol? = nil) {
        self.priority = priority
        self.initialValue = Int.random(in: 5...15)
        self.currentValue = initialValue
        self.delegate = delegate
        
        if !flags.isEmpty {
            self.barrier = true
        }
        else{
            self.barrier = false
        }
    }

    func run() {
        while self.currentValue > 0 {
            DispatchQueue.main.sync {
                self.currentValue -= 1
            }
            sleep(1)
            
        }
        if let delegate {
            delegate.queueItemFinished(self)
        }
    }
    
    static func == (lhs: QueueItem, rhs: QueueItem) -> Bool {
            return lhs === rhs
        }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(ObjectIdentifier(self))
        }
}

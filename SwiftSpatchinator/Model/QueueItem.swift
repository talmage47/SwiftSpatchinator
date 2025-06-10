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

class QueueItem: Equatable {
    
    private(set) var currentValue: Int
    let initialValue: Int
    let delegate: QueueItemProtocol?

    init(delegate: QueueItemProtocol? = nil) {
        self.initialValue = Int.random(in: 5...15)
        self.currentValue = initialValue
        self.delegate = delegate
    }

    func run() {
        while self.currentValue > 0 {
            self.currentValue -= 1
            sleep(1)
            
        }
        if let delegate {
            delegate.queueItemFinished(self)
        }
    }
    
    static func == (lhs: QueueItem, rhs: QueueItem) -> Bool {
            return lhs === rhs
        }
}

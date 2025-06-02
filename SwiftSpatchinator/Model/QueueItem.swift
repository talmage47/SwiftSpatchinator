//
//  QueueItem.swift
//  SwiftSpatchinator
//
//  Created by Talmage Gaisford on 6/1/25.
//

import Foundation

class QueueItem {
    private var timer: Timer?
    private(set) var currentValue: Int
    let initialValue: Int

    init(range: ClosedRange<Int> = 5...15) {
        self.initialValue = Int.random(in: range)
        self.currentValue = initialValue
    }

    func startOnMain() {
        DispatchQueue.main.async{
            while self.currentValue > 0 {
                self.currentValue -= 1
                sleep(1)
            }

        }
    }
}

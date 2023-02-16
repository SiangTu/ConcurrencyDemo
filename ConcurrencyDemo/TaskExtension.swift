//
//  TaskExtension.swift
//  ConcurrencyDemo
//
//  Created by 杜襄 on 2023/2/8.
//

import Foundation

extension Task where Success == Never, Failure == Never  {
    
    public static func sleep(seconds duration: Double) async throws {
        let nanoSeconds = UInt64(duration * 1_000_000_000)
        try await sleep(nanoseconds: nanoSeconds)
    }
}


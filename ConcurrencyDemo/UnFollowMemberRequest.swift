//
//  UnFollowMemberRequest.swift
//  ConcurrencyDemo
//
//  Created by 杜襄 on 2023/2/15.
//

import Foundation

class UnFollowMemberRequest {
    func unfollow() async throws {
        try await Task.sleep(seconds: 1)
    }
}

//
//  MemberForumDataRequest.swift
//  ConcurrencyDemo
//
//  Created by 杜襄 on 2023/2/15.
//

import Foundation

class MemberForumDataRequest {
    
    struct Data {
        let memberID: Int
        var following: Int
        var follower: Int
        var article: Int
        var getReaction: Int
    }
    
    func fetchData(memberID: Int) async -> Data {
        try? await Task.sleep(seconds: 2)
        return Data(memberID: memberID, following: 10, follower: 10, article: 15, getReaction: 200)
    }
}

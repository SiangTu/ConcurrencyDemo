//
//  MemberBasicDataRequest.swift
//  ConcurrencyDemo
//
//  Created by 杜襄 on 2023/2/15.
//

import Foundation

class MemberBasicDataRequest {
    
    struct Data {
        let memberID: Int
        var name: String
        var phone: String
        var level: Int
    }
    
    func fetchData(memberID: Int) async -> Data {
        try? await Task.sleep(seconds: 2)
        return Data(memberID: memberID, name: "Sean", phone: "0900001111", level: 100)
    }
}

//
//  AccountModel.swift
//  ConcurrencyDemo
//
//  Created by 杜襄 on 2023/2/15.
//

import Foundation

class AccountModel {

    func getAccountMemberData(completion: @escaping ((MemberData) async -> Void)) {
        Task {
            let data = await MemberDataManager.shared.getData()
            await completion(data)
        }
    }
    
}

//
//  MemberDataManager.swift
//  ConcurrencyDemo
//
//  Created by 杜襄 on 2023/2/15.
//

import Foundation

struct MemberData {
    let memberID: Int
    var name: String
    var phone: String
    var level: Int
    var followingMember: Int
    var follower: Int
    var article: Int
    var getReaction: Int
}

actor MemberDataManager {

    static let shared = MemberDataManager()
    
    private var cacheData: MemberData?
    
    private let basicDataRequest = MemberBasicDataRequest()
    
    private let forumDataRequest = MemberForumDataRequest()

    private var memberID: Int {
        LoginManager.shared.memberID
    }
    
    private init() {}
    
    func getData() async -> MemberData {
        if let cacheData = cacheData {
            return cacheData
        }
        async let basicData = basicDataRequest.fetchData(memberID: memberID)
        async let forumData = forumDataRequest.fetchData(memberID: memberID)
        cacheData = await MemberData(memberID: memberID, name: basicData.name, phone: basicData.phone, level: basicData.level, followingMember: forumData.following, follower: forumData.follower, article: forumData.article, getReaction: forumData.getReaction)
        return cacheData!
    }
    
    func didUnFollowAMember() {
        cacheData?.followingMember -= 1
    }
    
    func cleanData() {
        cacheData = nil
    }
}

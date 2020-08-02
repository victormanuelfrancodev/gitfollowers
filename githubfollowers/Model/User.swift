
//
//  User.swift
//  githubfollowers
//
//  Created by Victor Manuel Lagunas Franco on 01/07/20.
//  Copyright © 2020 Victor Manuel Lagunas Franco. All rights reserved.
//

import Foundation

struct User:Codable {
    var login:String
    var avatarUrl:String
    var name:String?
    var location:String?
    var bio:String
    var publicRepos:Int
    var publicGists:Int
    var htmlUrl:String
    var following:Int
    var followers:Int
    var createdAt:String
}

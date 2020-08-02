//
//  ErrorMessage.swift
//  githubfollowers
//
//  Created by Victor Manuel Lagunas Franco on 20/07/20.
//  Copyright © 2020 Victor Manuel Lagunas Franco. All rights reserved.
//

import Foundation

enum GFError:String,Error{
    case invalidUsername = "This user name created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your interent connection"
    case invalidResponse = "Invalid response from the server. Please try again"
    case invalidData = "The data received from the server was invalid. Please try again."
}

//
//  CustomError.swift
//  TheGamesAppMVVM
//
//  Created by Reza Ramadhan Irianto on 23/04/21.
//

import Foundation

enum URLError: LocalizedError{
    case invalidResponse
    case addressUnReachable(URL)
    
    var errorDescription: String?{
        switch self {
        case .invalidResponse:
            return "The server responses not match with models"
        case .addressUnReachable(let url):
            return "\(url) is unreachable"
            
        }
    }
}


enum DatabaseError: LocalizedError{
    case requestFailed
    case invalidInstance    
    
    var errorDescription: String?{
        switch self {
        case .requestFailed:
            return "Request Failed"
        case .invalidInstance:
            return "Invalid Instance"
            
        }
    }
}

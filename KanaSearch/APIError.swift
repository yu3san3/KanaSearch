//
//  APIError.swift
//  KanaSearch
//
//  Created by 丹羽雄一朗 on 2023/05/27.
//

import Foundation

enum APIError: Error {
    case network
    case response
    case jsonDecode
    case statusCode(statusCode: String)
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .network:
            return "Network Error"
        case .response:
            return "Response Error"
        case .jsonDecode:
            return "json convert failed in JSONDecoder"
        case .statusCode(let statusCode):
            return "Error! StatusCode: " + String(statusCode)
        }
    }
}

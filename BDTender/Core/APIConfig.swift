//
//  APIConfig.swift
//  BDTender
//
//  Created by Md Khorshed Alam on 14/5/24.
//

import Foundation
struct APIConfig {
    static let baseURL = ""
    static var loginURL: String {return "\(baseURL)login-new"}
    static var favoriteURL: String {return "\(baseURL)show-wish-list"}
    static var todaysURL: String {return "\(baseURL)my-profile"}
    static var todayCountURL: String {return "\(baseURL)count-todays-tender"}
    static var todayCountDetailsURL: String {return "\(baseURL)today-tender"}
    static var liveCountURL: String {return "\(baseURL)count-live-tender"}
    static var liveCountDetailsURL: String {return "\(baseURL)live-tender"}
    static var corrugendumCountURL: String {return "\(baseURL)count-corrigendum-tender"}
    static var corrugendumCountDetailsURL: String {return "\(baseURL)today-corrigendum"}
    static var privateCountURL: String {return "\(baseURL)count-private_tenders"}
    static var privateCountDetailsURL: String {return "\(baseURL)own-tender-notice"}
}

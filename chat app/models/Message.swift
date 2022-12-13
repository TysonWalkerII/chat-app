//
//  message.swift
//  chat app
//
//  Created by Tyson Laroyce Walker II on 12/12/22.
//

import Foundation
struct Message: Identifiable,Codable{
var id:String
    var text:String
    var received: Bool
    var timestamp:Date
}

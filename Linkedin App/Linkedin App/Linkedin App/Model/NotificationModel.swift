//
//  NotificationModel.swift
//  Linkedin App
//
//  Created by Mohammad Khajavi on 2024-10-22.
//

import Foundation

struct NotificationModel: Identifiable {
    var id = UUID()  
    var title: String
    var message: String
    var aviablity: Bool
    var image: String
}

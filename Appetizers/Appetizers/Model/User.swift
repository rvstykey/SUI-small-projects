//
//  User.swift
//  Appetizers
//
//  Created by Rostislav Zapolsky on 19.01.23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthday = Date()
    var extraNapkins = false
    var frequentRefills = false
}

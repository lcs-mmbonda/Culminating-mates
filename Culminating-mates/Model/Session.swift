//
//  Session.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-12.
//

import Foundation

struct Session: Identifiable {
    //Mark: Stored properties
    let id = UUID()
    let name: String
    let teacher: String
    let subject: String
    let module: Int
    let dateAvailable: Date
    let mateMessage: String
    
}

let physics = Session(
    name: "Add Session using plus (example attached)",
    teacher: "Braeckman",
    subject: "Pre AP Physics 11",
    module: 1,
    dateAvailable: Date(timeIntervalSinceNow: TimeInterval.random(in: 0...1000000)),
    mateMessage: "Looking forward to studying together!")

let exampleSessions = [
    physics
]

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
    name: "Physics Study Group",
    teacher: "Braeckman",
    subject: "Pre AP Physics 11",
    module: 1,
    dateAvailable: Date(timeIntervalSinceNow: TimeInterval.random(in: 0...1000000)),
    mateMessage: "Looking forward to studying together!")

let math = Session(
    name: "Math Study Group",
    teacher: "Sparkman",
    subject: "Math 10",
    module: 2,dateAvailable: Date(timeIntervalSinceNow: TimeInterval.random(in: 0...1000000)),
    mateMessage: "Let's conquer math together!"
)

let english = Session(
    name: "English Study Group",
    teacher: "Fraser",
    subject: "English 10",
    module: Int.random(in: 1...10),
    dateAvailable: Date(timeIntervalSinceNow: TimeInterval.random(in: 0...1000000)),
    mateMessage: "Excited to dive into literature!"
)

let exampleSessions = [
    physics,
    math,
    english
]

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
    let module: Int
    let dateAvailable: Date
    let matrMessage: String
    
}

//
//  Culminating_matesApp.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-04.
//

import SwiftUI

@main
struct Culminating_matesApp: App {
    
    @State var currentTab: Int = 1
    var body: some Scene {
        WindowGroup {
            LandingView(currentTab: $currentTab)
        }
    }
}

//
//  AddSessionView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-11.
//

import SwiftUI

struct AddSessionView: View {
    
    // Mark: Stored properties
    @State private var title: String = ""
    @State private var author: String = ""
    @State private var genre: String = ""
    @State private var dateStarted:  Date = Date()
    @State private var dataFinished: Date = Date()
    @State private var starRating: Int = 0
    @State private var review: String = ""
    
    
    //Mark: Computed properties
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AddSessionView()
}

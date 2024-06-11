//
//  AddSessionView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-11.
//

import SwiftUI

struct AddSessionView: View {
    
    // Mark: Stored properties
    @State private var name: String = ""
    @State private var teacher: String = ""
    @State private var subject: Int = 0
    @State private var dateAvailable:  Date = Date()
    @State private var review: String = ""
    
    
    //Mark: Computed properties
    var body: some View {
        Form {
            Section(header: Text("Session Details")) {
                
                TextField("Name", text: $name)
                TextField("Teacher", text: $teacher)
                Picker("Subject", selection: $subject){
                    Text("Science").tag(1)
                    Text("English").tag(2)
                }
                
            }
            Section(header: Text("Booking Details")) {
                DatePicker("Date Available ", selection:
                $dateAvailable)
            }
            
            
        }
    }
}


#Preview {
    AddSessionView()
}

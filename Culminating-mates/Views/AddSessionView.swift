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
    @State private var dateAvailable =  Date()
    @State private var mateMessage: String = ""
    
    @Binding var isShowing: Bool
    
    //Mark: Computed properties
    var body: some View {
        NavigationStack {
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
                    DatePicker("Date Available ", selection: $dateAvailable, in: Date()...)
                }
                
                Section(header: Text("Optional Message for studymate")) {
                    TextEditor(text: $mateMessage)
                        .frame(height: 200)
                }
                
                
                
            }
            .navigationTitle("Add Session")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        // Hide the sheet
                        isShowing = false
                        // Save the new study session
                        // TODO: Get the database working, hopefully!
                    } label: {
                        Text("Done")
                    }

                }
            }
        }
        
        
        
    }
}


#Preview {
    AddSessionView(isShowing: Binding.constant(true))
}

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
    @State private var module: String = ""
    @State private var subject: String = ""
    @State private var dateAvailable =  Date()
    @State private var mateMessage: String = ""
    
    //Allows us to dismiss the sheet
    @Binding var isShowing: Bool
    
    //Obtain a reference from the source of truth for our session
    @Binding var sessions: [Session]
    
    

    
    //Mark: Computed properties
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Session Details")) {
                    
                    TextField("Name", text: $name)
                    TextField("Teacher", text: $teacher)
                    
                    Picker("Subject", selection: $module){
                        Text("Science 10").tag("Science 10")
                        Text("Math 10").tag("Math 10")
                        Text("Physics 11").tag("Physics 10")
                    }
                    
                    Picker("Module", selection: $module){
                        Text("Odd (1, 3..").tag(1)
                        Text("Even (2, 4..").tag(2)
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
                        
                        //Add new session
                        let newSession = Session(
                            name: name,
                            teacher: teacher,
                            subject: subject,
                            module: module,
                            dateAvailable: dateAvailable,
                            mateMessage: mateMessage
                        )
                        sessions.append(newSession)
                        
                        
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
    AddSessionView(
        isShowing: Binding.constant(true),
        sessions: Binding.constant(exampleSessions))
    
}

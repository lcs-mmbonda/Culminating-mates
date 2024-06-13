
//  DetailView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-04.
//

import SwiftUI

struct ClassDetailView: View {
    @State private var mod1: Bool = false
    @State private var mod2: Bool = false
    
    //Whether the sheet to add a new review is showing
    @State private var isAddSessionViewShowing = false
    
    //Source of truth for our list of reviews
    @State private var sessions: [Session] = exampleSessions
    
    
    
    let item: Class
    
    // Store a list of study sessions in memory
//    @State private var sessions: [Session] = []
    
    var body: some View {
        VStack {
            
            Image(item.image)
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
            
            Text(item.description)
                .padding(.horizontal)
            
            Toggle("Do you have this class mod 1?", isOn: $mod1)
                .padding()
            
            Toggle("Do you have this class mod 2?", isOn: $mod2)
                .padding()
            
            List(sessions) { currentSession in
                
                VStack {
                    Text(currentSession.name)
                        .bold()
                    Text(currentSession.dateAvailable.formatted(date: .abbreviated, time: .shortened))
                        .font(.subheadline)

                }
                //Text(Session.dateAvailable)
                
            }
            
            
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    isAddSessionViewShowing = true
                } label:{
                    Image(systemName: "plus")
                }

            }
        }
        .sheet(isPresented: $isAddSessionViewShowing) {
            AddSessionView(isShowing: $isAddSessionViewShowing, sessions: $sessions )
                .presentationDetents([.fraction(0.75)])
        }
        .navigationTitle(item.course_name)
        
        
    }
    
    
    
}

#Preview {
    
    NavigationStack {
        
        ClassDetailView(item: ap_prep_functions_Block_C)
        
    }
    
}

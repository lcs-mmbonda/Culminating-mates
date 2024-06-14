//
//  SessionDetailView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-13.
//

import SwiftUI

struct SessionDetailView: View {
    
    //Mark: Stored properties
    //Receive a review to display
    let sessionToShow: Session
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                Text("by \(sessionToShow.name)")
                    .font(.title2)
                    .foregroundColor(.secondary)
                
                Divider()
                HStack {
                    VStack(alignment: .leading) {
                        Group{
                            Text("Module")
                                .font(.headline)
                            Text(sessionToShow.module)
                                .padding(.bottom, 16)
                            Text("Teacher")
                                .font(.headline)
                            Text(sessionToShow.teacher)
                                .padding(.bottom, 16)
                            Text("Date available")
                                .font(.headline)
                            Text(sessionToShow.dateAvailable.formatted(date: .abbreviated, time: .shortened))
                                .padding(.bottom, 16)
                        }
                        
                        Group {
                            Text("Message from Mate")
                                .font(.headline)
                            Text(sessionToShow.mateMessage)
                        }
                        Spacer()
                    }
                    .padding()
                }
                .navigationTitle(sessionToShow.subject)
                
            }
            
        }
    }
    
    
    
    
}
#Preview {
    NavigationStack {
        SessionDetailView(sessionToShow: physics)
    }
}


//  DetailView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-04.
//

import SwiftUI

struct ClassDetailView: View {
    @State private var mod1: Bool = false
    @State private var mod2: Bool = false
    
    @State private var isAddSessionViewShowing = false
    
    let item: Class
    
    // Store a list of study sessions in memory
//    @State private var sessions: [Session] = []
    
    var body: some View {
        ScrollView {
            
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
            AddSessionView(isShowing: $isAddSessionViewShowing)
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

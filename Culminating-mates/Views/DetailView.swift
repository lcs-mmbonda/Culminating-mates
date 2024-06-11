
//  DetailView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-04.
//

import SwiftUI



struct DetailView: View {
    @State private var mod1: Bool = false
    @State private var mod2: Bool = false

    
    let item: Classes
    
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
            
            
            
            
            
            
            
            
            
        
        
            .navigationTitle(item.course_name)
        
    }
    
    
    
}

#Preview {

    NavigationStack {

        DetailView(item: ap_prep_functions_Block_C)

    }

}

//
//  ListView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-06.
//

import SwiftUI



struct ListView: View {

    var body: some View {

        

        NavigationStack {

            

            List(allClasses) { currentClass in

                

                NavigationLink {

                    DetailView(item: currentClass)

                } label: {

                    ListItemView(item: currentClass)

                }

                

            }

            .navigationTitle("Available Gr.10 Classes")

                        

        }

        

        

        

    }

}



#Preview {
    ContentView(currentTab: .constant(3))
}

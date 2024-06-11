//
//  ListView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-06.
//

import SwiftUI

struct ClassListView: View {

    var body: some View {

        NavigationStack {

            List(allClasses) { currentClass in
                NavigationLink {
                    ClassDetailView(item: currentClass)
                } label: {
                    ClassListItemView(item: currentClass)
                }

            }
            .navigationTitle("Available Gr.10 Classes")
                        

        }

    }

}

#Preview {
    LandingView(currentTab: .constant(3))
}

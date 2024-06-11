//
//  LandingView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-04.
//

import SwiftUI

struct LandingView: View {

    @Binding var currentTab: Int

    var body: some View {

        TabView(selection: $currentTab) {

            ClassListView()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Courses")
                }
                .tag(2)
        }
        .accentColor(.red)
        .preferredColorScheme(.light)

    }

}

#Preview {
    LandingView(currentTab: .constant(3))
}

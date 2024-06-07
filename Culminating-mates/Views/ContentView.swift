//
//  ContentView.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-04.
//

import SwiftUI

struct ContentView: View {

    

    @Binding var currentTab: Int

    

    var body: some View {

        TabView(selection: $currentTab) {

            Text("What's your full name?")
                .tabItem {

                    Image(systemName: "person.crop.circle.fill")

                    Text("Account")

                }

                .tag(1)

            


            ListView()

                .tabItem {

                    Image(systemName: "books.vertical.fill")

                    Text("Courses")

                }

                .tag(2)
                
            
            Text("My Matches")
            
                .tabItem {

                    Image(systemName: "person.line.dotted.person")

                    Text("My matches")

                }

                .tag(3)

            

                

        }

        .accentColor(.red)

        .preferredColorScheme(.light)

    }

}



#Preview {

    ContentView(currentTab: .constant(3))

}

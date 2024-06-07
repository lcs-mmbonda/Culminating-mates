//
//  ListItemVIew.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-04.
//

import SwiftUI



struct ListItemView: View {

    let item: Classes

    

    var body: some View {

        

        HStack {

            Image(item.image)

                .resizable()

                .frame(width: 75, height: 75, alignment: .center)

                .scaledToFit()

                .clipShape(

                    RoundedRectangle(cornerRadius: 15.0)

                )

            

            VStack(alignment: .leading) {

                Text(item.course_name)
                

                    .font(.headline)

                    .multilineTextAlignment(.center)

                

            }

            

        }

        

    }

}



#Preview {

    ListItemView(item: ap_prep_functions_Block_C)

        .padding()

}

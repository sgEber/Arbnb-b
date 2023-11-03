//
//  ContentView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:50){
                    Category(icon: "airplane.circle.fill", text: "OMG!")
                    Category(icon: "beach.umbrella", text: "Beaches")
                    Category(icon: "house.fill", text: "Try Homes")
                    Category(icon: "figure.golf", text: "Golfing")
                    Category(icon: "photo.tv", text: "Amazing")
                }
            }.padding(.horizontal)
            
            Divider()
            
            List{
                VStack(alignment: .leading, spacing: 10){
                    Image("item1")
                        .frame(width: 342, height: 323)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(12)
                    HStack{
                        Text("Harlinger, Netherlands")
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "star.fill")
                            .font(.system(size: 11))
                        Text("4.76")
                    }
                    Text("Professional Host")
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                    Text("18-23 Dec")
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                    Text("$ 1,065")
                        .fontWeight(.semibold)
                }
            }.listStyle(.inset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//item(PostImage: "item1", TextLocation: "Harlinger, Netherlands", icon: "star.fill", StarPoints: "4.76", host: "Professional Host", fecha: "18-23 Dec", precio: "$ 1,065")

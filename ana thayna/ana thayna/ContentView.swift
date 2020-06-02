//
//  ContentView.swift
//  ana thayna
//
//  Created by Ana Thayna Franca on 02/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.91, green: 0.58, blue: 0.65)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("anathayna")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Ana Thayna")
                    .font(Font.custom("Montserrat-ExtraBold", size: 45))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(Font.custom("Montserrat-SemiBold", size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+55 11 98765-4321", imageName: "phone.circle.fill")
                InfoView(text: "anathayna@gmail.com", imageName: "envelope.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

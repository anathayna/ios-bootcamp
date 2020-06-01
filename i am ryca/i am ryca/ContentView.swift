//
//  ContentView.swift
//  i am ryca
//
//  Created by Ana Thayna Franca on 01/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("i am ryca")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Image("diamond").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "IPhone SE"))
    }
}

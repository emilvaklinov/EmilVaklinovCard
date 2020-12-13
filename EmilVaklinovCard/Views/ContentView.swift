//
//  ContentView.swift
//  EmilVaklinovCard
//
//  Created by Emil Vaklinov on 13/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.15, green: 0.74, blue: 0.61, opacity: 4.00).edgesIgnoringSafeArea(.all)
            VStack {
                Image("emil")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170, height: 170, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                Text("Emil Vaklinov")
                    .font(Font.custom("Pacifico-Regular", size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                Text("London, UK")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                
                Divider()
                InfoView(text: "+ 44 77 0691 0638", imageName: "phone.fill")
                InfoView(text: "emil_vaklinov@yahoo.com", imageName: "envelope.fill")
                
                Divider()
                Image("linkdincode")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .center)
                Text("LinkdIn")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//
//  ContentView.swift
//  TriviaGame
//
//  Created by Zeynep Demirtaş on 3.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
                   VStack(spacing: 40) {
                       VStack(spacing: 20) {
                           Text("BilMobil")
                               .lilacTitle()
                           
                           Text("Are you ready to test out your computer science skills?")
                               .foregroundColor(Color("AccentColor"))
                       }
                       
                       NavigationLink {
                           TriviaView()
                               .environmentObject(triviaManager)
                       } label: {
                           PrimaryButton(text: "Let's go!")
                       }
                   }
                   .frame(maxWidth: .infinity, maxHeight: .infinity)
                   .edgesIgnoringSafeArea(.all)
                   .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
               }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

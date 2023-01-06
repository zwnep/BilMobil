//
//  Extensions.swift
//  TriviaGame
//
//  Created by Zeynep Demirtaş on 3.12.2022.
//

import Foundation
import SwiftUI

//Metin başlığını her oluşturduğumuzda aşağıdaki üç değiştirici eklemek yerine, tek satırda özellikleri çağırmak için.
extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}

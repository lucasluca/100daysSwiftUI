//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Lucas Mendes on 24/08/21.
//

import SwiftUI

struct FlagImage: View {
    
    var countries: Array<String>
    var selectedFlag: Int
    var onClickFlag: (_ flagNumber: Int) -> Void
    
    var body: some View {
        Button(action: {
            self.onClickFlag(selectedFlag)
        }) {
            Image(self.countries[selectedFlag])
                .renderingMode(.original)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                .shadow(color: .black, radius: 2)
        }
    }
}



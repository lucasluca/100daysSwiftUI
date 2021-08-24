//
//  BlueTitle.swift
//  ViewsAndModifiers
//
//  Created by Lucas Mendes on 24/08/21.
//

import SwiftUI

struct BlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

extension View {
    func blueTitle() -> some View {
        self.modifier(BlueTitle())
    }
}


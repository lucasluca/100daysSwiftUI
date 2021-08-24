//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Lucas Mendes on 22/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Text("Ola mundo")
        .blueTitle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

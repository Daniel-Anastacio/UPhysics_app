//
//  ContentView.swift
//  UPhysics_app
//
//  Created by Luiz Henrique da Silva Bezerra on 03/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .padding()
                .foregroundColor(cor.branco)
            Text("")
                .font(.largeTitle)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

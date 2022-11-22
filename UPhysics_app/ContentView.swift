//
//  ContentView.swift
//  UPhysics_app
//
//  Created by Luiz Henrique da Silva Bezerra on 03/11/22.
//

import SwiftUI





func carregaDados (nomeArquivo: String) {
    if let path = Bundle.main.url(forResource: nomeArquivo, withExtension: "json") {
        print(path)
    }
    
    
    else {
        print("Arquivo não encontrado")
    }
}




struct ContentView: View {
    var body: some View {
    
        Text("Teste")
        
        .onAppear{
            carregaDados(nomeArquivo: "dados_app")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

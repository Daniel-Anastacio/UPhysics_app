//
//  ContentView.swift
//  UPhysics_app
//
//  Created by Luiz Henrique da Silva Bezerra on 03/11/22.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
    
        Text("Teste")
        
        .onAppear{
            if let result = carregaDados(nomeArquivo: "dados_app", tipoDado: DadosApp.self) {
                print(result)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

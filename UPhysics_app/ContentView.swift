//
//  ContentView.swift
//  UPhysics_app
//
//  Created by Luiz Henrique da Silva Bezerra on 03/11/22.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
    
        TelaInicial().onAppear{
            
            let diario = Diarios(data: "13/12/2022", preenchido: true, intensidade: 3, motivacao: 2, tipo_exercicio: "Anaeróbico", humor: 4)
                
            let diarios = DiariosSemanais(diarios: [diario])
            
            salvaDados(nome_arquivo: "DiariosSemanais", objeto: diarios)
            
            if let diarios = carregaDados(nomeArquivo: "DiariosSemanais", tipoDado: DiariosSemanais.self) {
                print(diarios)
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

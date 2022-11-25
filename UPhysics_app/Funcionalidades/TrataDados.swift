//
//  LeitorDados.swift
//  UPhysics_app
//
//  Created by Nícolas Aguiar Ribeiro de Carvalho on 22/11/22.
//

import Foundation


func carregaDados<T: Codable>(nomeArquivo: String, tipoDado: T.Type) -> T? {
    
    
    guard let path = Bundle.main.url(forResource: nomeArquivo, withExtension: "json") else {
        print("Arquivo \(nomeArquivo) não encontrado")
        return nil
    }
    
    guard let dados = try? Data(contentsOf: path) else {
        print("Não foi possível ler o arquivo \(nomeArquivo)")
        return nil
    }
    
    guard let json = try? JSONDecoder().decode(T.self, from: dados) else {
        print("Não foi possível decodificar o arquivo \(nomeArquivo)")
        return nil
    }
    
    print("Sucesso ao carregar o arquivo \(nomeArquivo) completo")
    return json
    
    
}


func salvaDados<T: Codable>(nomeArquivo: String, tipoDado: T.Type) -> Void {
    print("Salvando os dados...")
}

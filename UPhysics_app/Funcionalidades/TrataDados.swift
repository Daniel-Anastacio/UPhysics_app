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


func salvaDados<T: Encodable>(nome_arquivo: String, objeto: T) -> Void {
    
    let jsonEncoder = JSONEncoder()
    
    do {
        
        // Transforma objeto json para bytes
        let jsonData = try jsonEncoder.encode(objeto)
        
        
        // Transforma bytes para string
        guard let jsonString = String(data: jsonData, encoding: String.Encoding.utf8)
        else {
            print("Falha na codificação para string de \(nome_arquivo).json")
            return
        }
        
        
        // Transformando string json para bytes e procurando diretório
        guard let jsonData = jsonString.data(using: .utf8), let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        else {
            print("Falha ao converter string json para bytes ou ao encontrar diretório")
            return
        }
        
        
        let pathWithFileName = documentDirectory.appendingPathComponent(nome_arquivo)
        
        do {
            try jsonData.write(to: pathWithFileName)
            print("\(nome_arquivo) foi salvo com sucesso")
        } catch {
            print("Falha ao escrever e salvar \(nome_arquivo).json")
            return
        }
        
        
        
    }
    
    
    catch {
        print("Falha na codificação para bytes de \(nome_arquivo)")
        return
    }
    
}

//
//  LeitorDados.swift
//  UPhysics_app
//
//  Created by Nícolas Aguiar Ribeiro de Carvalho on 22/11/22.
//

import Foundation



func carregaDados<T: Codable>(nomeArquivo: String, tipoDado: T.Type) -> T? {
    
    
    
    // Tetando abrir a url do file manager
    guard let URL = FileManager.default.urls (for: .documentDirectory, in: .userDomainMask).first else {
        print("Falha ao carregar URL no FileManager de \(nomeArquivo).json")
        return nil
    }
    
    let filePath = URL.appendingPathComponent(nomeArquivo)
    
    
    
    // Tentando ler o arquivo e transformar bytes para string
    guard let fileText = try? String(contentsOf: filePath, encoding: .utf8) else {
        print("Falha ao transformar de bytes para string o arquivo \(nomeArquivo).json")
        return nil
    }
    
    
    
    // Tentando transformar string para data
    guard let data = fileText.data(using: .utf8) else {
        print("Falha ao conveter string para data no arquivo \(nomeArquivo)")
        return nil
    }
    
    
    
    // Tentando transformar data para objeto json
    guard let json = try? JSONDecoder().decode(T.self, from: data) else {
        print("Falha ao transformar string para tipo o arquivo \(nomeArquivo).json")
        return nil
    }

    return json
    
}



func salvaDados<T: Encodable>(nome_arquivo: String, objeto: T) -> Void {
    
    
    
    // Transforma objeto json para bytes
    guard let jsonData = try? JSONEncoder().encode(objeto) else {
        print("Falha na transformação de dados para bytes no arquivo \(nome_arquivo)")
        return
    }
    
    
    
    // Transforma bytes para string
    guard let jsonString = String(data: jsonData, encoding: String.Encoding.utf8)
    else {
        print("Falha na transformação de bytes para sring não \(nome_arquivo).json")
        return
    }
    
    
    
    // Transformando string json para bytes e procurando diretório
    guard let jsonData = jsonString.data(using: .utf8), let URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    else {
        print("Falha ao converter string json para bytes ou ao encontrar diretório")
        return
    }
    
    
    
    let filePath = URL.appendingPathComponent(nome_arquivo)
    
    
    
    // Tentando escrever o arquivo
    do {
        try jsonData.write(to: filePath)
        print("\(nome_arquivo) foi salvo com sucesso")
    } catch {
        print("Falha ao escrever e salvar \(nome_arquivo).json")
        return
    }

    
}



func dateParaString () -> String {
    
    // Criando o objeto date
    let date = Date()

    // Criando o formatador de data
    let dateFormatter = DateFormatter()

    // Definindo o formato de data
    dateFormatter.dateFormat = "dd/MM/YY"

    // Convertendo Date para String
    return dateFormatter.string(from: date)
    
}

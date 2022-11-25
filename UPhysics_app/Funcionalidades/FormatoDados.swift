struct DadosApp: Codable {
    
    var dia: String
    var hora: Int
    var minuto: Int
    var PMouAM: String
    
}


struct MetasSemanais: Codable {
    
    var id: Int
    var feito: Bool
    var titulo: String
    
}


struct FraseDiarias: Codable {
    
    var dicas: [String]
    var motivacao: [String]
    
}

struct DiariosSemanais: Codable {
    
    var dia: String
    var preenchido: Bool
    var intensidade: Int
    var motivacao: Int
    var tipo_exercicio: String
    var humor: Int
    
}

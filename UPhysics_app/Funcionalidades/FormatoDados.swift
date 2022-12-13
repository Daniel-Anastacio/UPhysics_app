// dia em Int (1: domingo, 2: segunda, ...)
// PM ou AM em Int (1: AM, 2: PM)

struct DadosApp: Codable {
    
    var dia: Int
    var hora: Int
    var minuto: Int
    var PMouAM: Int
    
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


struct Diarios: Codable {
    var data: String
    var preenchido: Bool
    var intensidade: Int
    var motivacao: Int
    var tipo_exercicio: String
    var humor: Int
}

struct DiariosSemanais: Codable {
    
    let diarios: [Diarios]
    
}

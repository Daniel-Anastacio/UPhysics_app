//
//  ButtonCreate.swift
//  Estudo
//
//  Created by Luiz Henrique da Silva Bezerra on 22/11/22.
//

import SwiftUI

struct ButtonCreate: View {
    
    
    @State var isSelected: Bool = false
    @Binding var Alarme: [String:Int]
    
    var body: some View {
        
        ZStack{
            
            Button( action: {
                
                        isSelected = isSelected == true ? false : true
                
                        let dados_app = DadosApp(dia: Alarme["Dia da semana"]!, hora: Alarme["Hora"]!, minuto: Alarme["Minuto"]!, PMouAM: Alarme["Período"]!)
                
                        salvaDados(nome_arquivo: "DadosApp", objeto: dados_app)
                        
                        if let dados = carregaDados(nomeArquivo: "DadosApp", tipoDado: DadosApp.self) {
                            print(dados)
                        } else {
                            print("deu ruim")
                        }
                
                        
                
                    },
                    label: {
                        ZStack{
                            Circle()
                                .strokeBorder(Cores.marrom)
                                .frame(width: 50, height: 50)
                                .background(Circle().foregroundColor(isSelected ? Cores.marrom : .clear))
                            Image(systemName: "plus")
                                .resizable()
                                .foregroundColor(isSelected ? Cores.laranja : Cores.marrom)
                                .frame(width: 35, height: 35)
                        }
                    }
            )
        }
    }
}

/*struct ButtonCreate_Previews: PreviewProvider {
    @State var teste : [String:Int] = ["a":1]
    static var previews: some View {
        
        ButtonCreate(Alarme: $teste)
    }
}*/

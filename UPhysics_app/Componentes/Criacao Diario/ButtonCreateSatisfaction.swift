//
//  ButtonCreateSatisfaction.swift
//  UPhysics_app
//
//  Created by Luiz Henrique da Silva Bezerra on 01/12/22.
//

import SwiftUI

struct ButtonCreateSatisfaction: View {
    
    @State var button: Bool = false
    @Binding var diario: [String:Int]
    
    var body: some View {
        ZStack{
            Button(
                action: {
                    button = button == true ? false : true
                    
                    print("Diário criado")
                    
                    if let diariosCarregados = carregaDados(nomeArquivo: "DiariosSemanais", tipoDado: DiariosSemanais.self) {
                        
                        var diariosCarregados_mutaveis = diariosCarregados
                        
                        let diario_criado = Diarios(data: dateParaString(), preenchido: true, intensidade: diario["Intensidade"]!, motivacao: diario[" Motivação "]!, tipo_exercicio: diario["Tipo de Exercicio"]!, satisfacao: diario["Satisfação"]!)
                        
                        diariosCarregados_mutaveis.diarios.append(diario_criado)
                        
                        salvaDados(nome_arquivo: "DiariosSemanais", objeto: diariosCarregados_mutaveis)
                        
                        print(diariosCarregados_mutaveis)
                        
                    }
                    
                },
                label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 11)
                            .strokeBorder(Cores.marrom)
                            .frame(width: 126, height: 46)
                            .background(Rectangle().cornerRadius(11).foregroundColor(button ? Cores.marrom : .clear))
                        Text("Criar")
                            .foregroundColor(button ? Cores.branco : Cores.marrom)
                            .font(Font.system(size: 19))
                            .bold()
                    }
                }
            )
        }
    }
}

/*
struct ButtonCreateSatisfaction_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCreateSatisfaction()
    }
}
*/

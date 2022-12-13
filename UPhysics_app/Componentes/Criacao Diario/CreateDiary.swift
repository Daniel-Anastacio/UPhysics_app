//
//  CreateDiary.swift
//  Estudo
//
//  Created by Luiz Henrique da Silva Bezerra on 24/11/22.
//
import UIKit
import SwiftUI

struct CreateDiary: View {
    @State var Exercicio = "Escolha o Exercício"
    var body: some View {
        
       ZStack{
            Cores.branco.ignoresSafeArea()
           VStack(spacing: 44) {
               Spacer().frame(maxHeight: 82)
                Text("Criar Diário")
                    .font(Font.system(size: 20))
                    .foregroundColor(Cores.marrom).bold()
//                Spacer()
//                    .frame(height: 44)
                DropDown(tipo: "Intensidade", Pesquisa: "Escolha a Intensidade", cinco: "🔥🔥🔥🔥🔥", quatro: "🔥🔥🔥🔥", tres: "🔥🔥🔥", dois: "🔥🔥", um: "🔥")
//                Spacer()
//                    .frame(height: 44)
                DropDown(tipo: " Motivação ", Pesquisa: "Escolha a Motivação", cinco: "⭐️⭐️⭐️⭐️⭐️", quatro: "⭐️⭐️⭐️⭐️", tres: "⭐️⭐️⭐️", dois: "⭐️⭐️", um: "⭐️")
//                Spacer()
//                    .frame(height: 44)
                HStack{
                    Spacer()
                        .frame(width: 25)
                    Text("Tipo de exercício")
                        .font(Font.system(size: 19))
                    Spacer()
                        .frame(width: 15)
                    ZStack{
                        Rectangle()
                            .frame(width: 166, height: 60)
                            .cornerRadius(8)
                            .foregroundColor(Cores.branco)
                            .shadow(color: Color.black.opacity(0.10), radius:14)
                        
                        Spacer()
                            .frame(height: 30)
                        HStack{
                            Menu{
                                Button(action: {
                                    Exercicio = "🏋️ Anaeróbico"
                                }, label: {
                                    Text("🏋️ Anaeróbico").font(Font.system(size: 12)).foregroundColor(.black)
                                })
                                Button(action: {
                                    Exercicio = "🏃 Aeróbico"
                                }, label: {
                                    Text("🏃 Aeróbico").font(Font.system(size: 12)).foregroundColor(.black)
                                })
                            } label: {
                                Label(
                                    title: {
                                        Text("\(Exercicio)").font(Font.system(size: 15)).foregroundColor(.gray)
                                    },
                                    icon: {}
                                )
                            }
                        }
                    }
                }
//                Spacer()
//                    .frame(height: 44)
               TabSatisfaction()
               Spacer().frame(maxHeight: 20)
               ButtonCreateSatisfaction()
               Spacer().frame(maxHeight: 41)
               Rectangle()
                   .frame(width: 345, height: 50)
                   .cornerRadius(25)
                   .foregroundColor(.white)
                   .shadow(color: Color.black.opacity(0.05), radius:5)
               //Spacer().frame(maxHeight: 0)
            }
        }
    }
}

struct CreateDiary_Previews: PreviewProvider {
    static var previews: some View {
        CreateDiary()
    }
}



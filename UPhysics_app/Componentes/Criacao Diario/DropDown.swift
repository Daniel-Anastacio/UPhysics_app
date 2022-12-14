//
//  DropDown.swift
//  Estudo
//
//  Created by Luiz Henrique da Silva Bezerra on 24/11/22.
//

import SwiftUI

struct DropDown: View {
    
    @State var isSelected = true
    @State var tipo: String = ""
    @State var Pesquisa: String = ""
    @State var cinco: String = ""
    @State var quatro: String = ""
    @State var tres: String = ""
    @State var dois: String = ""
    @State var um: String = ""
    @Binding public var diario: [String:Int]
    
    var body: some View {
        HStack{
            Text(tipo).font(Font.system(size: 19))
            Spacer().frame(width: 85)
            ZStack{
                Rectangle()
                    .frame(width: 166, height: 60)
                    .cornerRadius(8)
                    .foregroundColor(Cores.branco)
                    .shadow(color: Color.black.opacity(0.10), radius:14)
                HStack{
                    
                    Menu{
                        Button(action: {
                            Pesquisa = cinco
                            diario[tipo] = 5
                        }, label: {
                            Text(cinco)
                        })
                        Button(action: {
                            Pesquisa = quatro
                            diario[tipo] = 4
                        }, label: {
                            Text(quatro)
                        })
                        Button(action: {
                            Pesquisa = tres
                            diario[tipo] = 3
                        }, label: {
                            Text(tres)
                        })
                        Button(action: {
                            Pesquisa = dois
                            diario[tipo] = 2
                        }, label: {
                            Text(dois)
                        })
                        Button(action: {
                            Pesquisa = um
                            diario[tipo] = 1
                        }, label: {
                            Text(um)
                        })
                    } label: {
                        Label(
                            title: {
                                Text("\(Pesquisa)").font(Font.system(size: 15)).foregroundColor(.gray)
                            },
                            icon: {}
                        )
                    }
                }
            }
        }
    }
}
/*
struct DropDown_Previews: PreviewProvider {
    static var previews: some View {
        DropDown(Pesquisa: "", cinco: "", quatro: "", tres: "", dois: "", um: "", diario: [String:Int])
    }
}
*/

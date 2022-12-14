//
//  TabSatisfaction.swift
//  Estudo
//
//  Created by Luiz Henrique da Silva Bezerra on 01/12/22.
//

import SwiftUI

struct TabSatisfaction: View {
    
    @State private var buttonA = false
    @State private var buttonB = false
    @State private var buttonC = false
    @State private var buttonD = false
    @State private var buttonE = false
    @Binding public var diario: [String:Int]
    
    
    var body: some View {
        
        HStack{
            Text("Satisfação").font(Font.system(size: 19))
            Spacer().frame(width: 10)
            ZStack{
                Rectangle()
                    .frame(width: 241, height: 60)
                    .foregroundColor(Cores.branco)
                    .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                    .shadow(color: Color.black.opacity(0.10), radius:14)
                HStack{
                    
                    ButtonTabSatisfaction(buttonsZ: $buttonA, texto: "😴")
                        .onTapGesture {
                            buttonA.toggle()
                            
                            if buttonA {
                                buttonB = false
                                buttonC = false
                                buttonD = false
                                buttonE = false
                            }
                            
                            diario["Satisfação"] = 1
                        }
                    
                    ButtonTabSatisfaction(buttonsZ: $buttonB, texto: "🙁")
                        .onTapGesture {
                            buttonB.toggle()
                            
                            if buttonB {
                                buttonA = false
                                buttonC = false
                                buttonD = false
                                buttonE = false
                            }
                            
                            diario["Satisfação"] = 2
                        }
                    
                    ButtonTabSatisfaction(buttonsZ: $buttonC, texto: "😐")
                        .onTapGesture {
                            buttonC.toggle()
                            
                            if buttonC {
                                buttonB = false
                                buttonA = false
                                buttonD = false
                                buttonE = false
                            }
                            
                            diario["Satisfação"] = 3
                        }
                    
                    ButtonTabSatisfaction(buttonsZ: $buttonD, texto: "🙂")
                        .onTapGesture {
                            buttonD.toggle()
                            
                            if buttonD {
                                buttonB = false
                                buttonC = false
                                buttonA = false
                                buttonE = false
                            }
                            
                            diario["Satisfação"] = 4
                        }
                    
                    ButtonTabSatisfaction(buttonsZ: $buttonE, texto: "😃")
                        .onTapGesture {
                            buttonE.toggle()
                            
                            if buttonE {
                                buttonB = false
                                buttonC = false
                                buttonD = false
                                buttonA = false
                            }
                            
                            diario["Satisfação"] = 5
                        }
                }
            }
            
        }
        .frame(height: 60)
    }
}
/*

struct TabSatisfaction_Previews: PreviewProvider {
    static var previews: some View {
        TabSatisfaction()
    }
}

*/

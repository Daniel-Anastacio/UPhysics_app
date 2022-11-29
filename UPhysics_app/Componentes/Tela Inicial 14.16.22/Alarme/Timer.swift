//
//  ContentView.swift
//  picker
//
//  Created by Daniel Anastácio Gomes Cunha on 17/11/22.
//

import SwiftUI

struct Timer: View {
    
    @State private var isOnam : Bool = false
    
    @State private var isOnpm : Bool = false
    
    @State var intVal1 = 0
    
    @State var intVal2 = 0
    
    @State public var Alarme : [String:Int] = ["Dia da semana": 0, "Hora":0, "Minuto":0, "Período": 0]
    
    var body: some View {
        HStack{
            ZStack{
                Rectangle()
                    .frame(width: 221, height: 244)
                    .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                    .foregroundColor(Cores.laranja)
                    .shadow(color: Color.black.opacity(0.25), radius:20)
                Spacer(minLength: 0).frame(maxWidth: 0)
                HStack (){
                    Horas(pos: 1, height: 100, value: intVal1, updateModel: { valorhrs, pos in
                        intVal1 = valorhrs
                        Alarme["Hora"] = valorhrs
                        
                    })
                    Text(":")
                        .font(Font.system(size:30))
                    
                    Minutos(pos: 1, height: 100, value: intVal2, updateModel: { valormnts, pos in
                        intVal2 = valormnts
                        Alarme["Minuto"] = valormnts
                    })
                }
            }
            HStack{
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 106, height: 244)
                            .cornerRadius(20, corners: [.topRight, .bottomRight])
                            .foregroundColor(Cores.laranja)
                            .shadow(color: Color.black.opacity(0.25), radius:20)
                        VStack{
    //                        Text(Alarme["Período"]!.formatted())
                            Btns(texto: "AM", isOn: $isOnam, isOff:$isOnpm , radius:.topRight)
                            Spacer(minLength: 0).frame(maxHeight: 0)
                            Btns(texto: "PM", isOn: $isOnpm, isOff:$isOnam , radius:.bottomRight)
                        }
                    }
                    .onChange(of: isOnam) { newValue in
                        if newValue == true {
                            Alarme["Período"] = 1
                        } else {
                            Alarme["Período"] = 2
                        }
                    }
                }
            }
        }
    }
    

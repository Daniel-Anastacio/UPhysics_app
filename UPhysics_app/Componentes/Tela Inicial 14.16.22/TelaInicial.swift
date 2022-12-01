//
//  ContentView.swift
//  Estudo
//
//  Created by Luiz Henrique da Silva Bezerra on 10/11/22.
//

import SwiftUI

struct TelaInicial: View {
    
    @State public var Alarme : [String:Int] = ["Dia da semana": 0, "Hora":0, "Minuto":0, "Período": 0]
    
    var body: some View {
        ZStack {
            Cores.laranja.ignoresSafeArea()
            VStack {
                Spacer().frame(maxHeight: 124)
                //Text("\(Alarme["Hora"]!)")
                Text("Quando você pode praticar\n exercícios físicos?").multilineTextAlignment(.center).font(Font.system(size: 18)).bold()
                Spacer().frame(maxHeight: 54)
                Timer(Alarme: $Alarme)
                Spacer().frame(maxHeight: 48)
                TabWeek(Alarme: $Alarme)
                Spacer().frame(maxHeight: 37)
                ButtonCreate(Alarme: $Alarme)
                Spacer().frame(maxHeight: 173)
               
                
            }
        }
        
    }
}

struct TelaInicial_Previews: PreviewProvider {
    static var previews: some View {
        TelaInicial()
    }
}

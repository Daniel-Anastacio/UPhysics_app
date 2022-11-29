//
//  buttonView.swift
//  Estudo
//
//  Created by Luiz Henrique da Silva Bezerra on 17/11/22.
//

import SwiftUI

struct buttonTabWeek: View {
    
    @Binding var isSelected: Bool
    @State var texto: String
    
    // transformar esses dois states em um só (isSelected) onde as cores são mudadas a partir dele - "ok"
    
    var body: some View {
        
        ZStack{
            Circle()
                .strokeBorder(Cores.marrom)
                .background(Circle().foregroundColor(isSelected ? Cores.marrom : .clear))
                .frame(width: 35)
            Text(texto)
                .font(Font.system(size: 12))
                .foregroundColor(isSelected ? Cores.laranja : Cores.marrom)
        }
    }
}
    


struct buttonView_Previews: PreviewProvider {
    static var previews: some View {
        buttonTabWeek(isSelected: .constant(false), texto: "semana")
    }
}

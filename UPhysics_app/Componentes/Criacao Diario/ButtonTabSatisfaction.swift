//
//  ButtonTabSatisfaction.swift
//  Estudo
//
//  Created by Luiz Henrique da Silva Bezerra on 01/12/22.
//

import SwiftUI

struct ButtonTabSatisfaction: View {
    
    @Binding var buttonsZ: Bool
    @State var texto: String
    
    var body: some View {
        ZStack{
            
            Circle()
                .strokeBorder(Cores.marrom)
                .background(Circle().foregroundColor(buttonsZ ? Cores.marrom : .clear))
                .frame(width: 35)
            Text(texto)
                .font(Font.system(size: 12))
            
        }
    }
}

struct ButtonTabSatisfaction_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTabSatisfaction(buttonsZ: .constant(false), texto: "")
    }
}

//
//  ButtonCreateSatisfaction.swift
//  UPhysics_app
//
//  Created by Luiz Henrique da Silva Bezerra on 01/12/22.
//

import SwiftUI

struct ButtonCreateSatisfaction: View {
    
    @State var button: Bool = false
    
    var body: some View {
        ZStack{
            Button(
                action: {
                    button = button == true ? false : true
                    
                    print("Diário criado")
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

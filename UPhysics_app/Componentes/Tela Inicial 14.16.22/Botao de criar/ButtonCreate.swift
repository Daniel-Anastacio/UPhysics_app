//
//  ButtonCreate.swift
//  Estudo
//
//  Created by Luiz Henrique da Silva Bezerra on 22/11/22.
//

import SwiftUI

struct ButtonCreate: View {
    
    
    @State var isSelected: Bool = false

    var body: some View {
        
        ZStack{
            
            Button( action: {
                        isSelected = isSelected == true ? false : true
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

struct ButtonCreate_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCreate()
    }
}

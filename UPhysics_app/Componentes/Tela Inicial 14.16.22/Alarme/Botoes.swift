//
//  btnsAMPM.swift
//  picker
//
//  Created by Daniel Anastácio Gomes Cunha on 22/11/22.
//

import SwiftUI

/*struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity

    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {

        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))

        return Path(path.cgPath)

    }

}

extension View {

    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {

        clipShape( RoundedCorner(radius: radius, corners: corners) )

    }

}*/

struct Btns : View{
    var texto: String
    @Binding var isOn: Bool 
    @Binding var isOff: Bool
    var radius: UIRectCorner.ArrayLiteralElement
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(isOn ? Cores.marrom : Cores.marrom_claro)
                    .cornerRadius(20, corners: [radius])
                    .frame(width: 106, height: 122, alignment: .center)
                
                Text(texto)
                    .font(Font.system(size:30))
                    .frame(alignment:.center)
                    .foregroundColor(isOn ? Cores.laranja : Cores.branco)
            }
        }
        .onTapGesture {
            isOn.toggle()
            if isOn{
                isOff = false
            }
        }
    }
}

/*struct BTs : View{
    @Binding var On1: Bool
    @Binding var On2: Bool
    var checa: (Bool)-> Void
    var body: some View{
        VStack{
            Button(action: {
                On1.toggle()
                if On1{
                    On2 = false
                }
            }, label: {
                ZStack{
                    Rectangle()
                        .foregroundColor(On1 ? .blue.opacity(0.5) : .clear)
                        .cornerRadius(20, corners: [.topRight])
                        .frame(width: 106, height: 122, alignment: .center)
                        
                    Text("AM")
                        .font(Font.system(size:30))
                        .frame(alignment:.center)
                        .foregroundColor(.black)
                }
            })
            Button(action: <#T##() -> Void#>, label: <#T##() -> View#>)
        }
    }
}*/

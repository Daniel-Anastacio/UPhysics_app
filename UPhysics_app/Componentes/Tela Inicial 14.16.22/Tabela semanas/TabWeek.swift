//
//  TabWeek.swift
//  Estudo
//
//  Created by Luiz Henrique da Silva Bezerra on 22/11/22.
//

import SwiftUI

struct TabWeek: View {
    
    @State private var selectedDay = ""
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    @State private var isSelected5 = false
    @State private var isSelected6 = false
    @State private var isSelected7 = false
    
    var body: some View {
        ZStack{
            Cores.laranja.ignoresSafeArea()
            Rectangle()
                .frame(width: 327, height: 60)
                .foregroundColor(Cores.laranja)
                .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                .shadow(color: Color.black.opacity(0.25), radius:20)
            HStack{
                buttonTabWeek(
                    isSelected: $isSelected,
                    texto: "Dom.")
                    .onTapGesture {
                        isSelected.toggle()

                        if isSelected {
                            isSelected2 = false
                            isSelected3 = false
                            isSelected4 = false
                            isSelected5 = false
                            isSelected6 = false
                            isSelected7 = false
                        }
                    }
                buttonTabWeek(
                    isSelected: $isSelected2,
                    texto: "Seg.")
                    .onTapGesture {
                        isSelected2.toggle()
                        if isSelected2 {
                            isSelected = false
                            isSelected3 = false
                            isSelected4 = false
                            isSelected5 = false
                            isSelected6 = false
                            isSelected7 = false
                        }
                    }
                buttonTabWeek(
                    isSelected: $isSelected3,
                    texto: "Ter.")
                    .onTapGesture {
                        isSelected3.toggle()
                        if isSelected3 {
                            isSelected2 = false
                            isSelected = false
                            isSelected4 = false
                            isSelected5 = false
                            isSelected6 = false
                            isSelected7 = false
                        }
                    }
                buttonTabWeek(
                    isSelected: $isSelected4,
                    texto: "Qua.")
                    .onTapGesture {
                        isSelected4.toggle()
                        if isSelected4 {
                            isSelected2 = false
                            isSelected3 = false
                            isSelected = false
                            isSelected5 = false
                            isSelected6 = false
                            isSelected7 = false
                        }
                    }
                buttonTabWeek(
                    isSelected: $isSelected5,
                    texto: "Qui.")
                    .onTapGesture {
                        isSelected5.toggle()
                        if isSelected5 {
                            isSelected2 = false
                            isSelected3 = false
                            isSelected4 = false
                            isSelected = false
                            isSelected6 = false
                            isSelected7 = false
                        }
                    }
                buttonTabWeek(
                    isSelected: $isSelected6,
                    texto: "Sex.")
                    .onTapGesture {
                        isSelected6.toggle()
                        if isSelected6 {
                            isSelected2 = false
                            isSelected3 = false
                            isSelected4 = false
                            isSelected5 = false
                            isSelected = false
                            isSelected7 = false
                        }
                    }
                buttonTabWeek(
                    isSelected: $isSelected7,
                    texto: "Sáb.")
                    .onTapGesture {
                        isSelected7.toggle()
                        if isSelected7 {
                            isSelected2 = false
                            isSelected3 = false
                            isSelected4 = false
                            isSelected5 = false
                            isSelected6 = false
                            isSelected = false
                        }
                    }
            }
        }
    }
}

struct RoundedCorner: Shape {

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
}

struct TabWeek_Previews: PreviewProvider {
    static var previews: some View {
        TabWeek()
    }
}

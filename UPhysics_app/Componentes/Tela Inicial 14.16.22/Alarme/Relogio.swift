//
//  Minutos-Horas.swift
//  picker
//
//  Created by Daniel Anastácio Gomes Cunha on 24/11/22.
//

import SwiftUI

struct Horas : View {

    var pos: Int

    var height: CGFloat

    var value: Int

    var updateModel: (Int, Int)->Void
    

    var body: some View {

        Picker("", selection: Binding( get: { value },

                                       set: { val in updateModel(val, pos) })

        ) {

            ForEach(1 ..< 13, id: \.self) { i in
                if i > 9{
                    Text("\(i)")
                        .font(Font.system(size:30))
                }else{
                    Text("0\(i)")
                        .font(Font.system(size:30))
                }

            }

        }

        .font(.title)
        
        .pickerStyle(.wheel)

        .labelsHidden()

        .frame(width: 70)

        .frame(idealHeight: height, maxHeight: .infinity)

        .clipped()
        
        

    }

}

struct Minutos: View {

    var pos: Int

    var height: CGFloat

    var value: Int

    var updateModel: (Int, Int)->Void

    

    var body: some View {

        Picker("", selection: Binding( get: { value },

                                       set: { val in updateModel(val, pos) })

        ) {

            ForEach(0 ..< 60, id: \.self) { i in
                if i > 9{
                    Text("\(i)")
                        .font(Font.system(size:30))
                        .foregroundColor(Cores.marrom)
                }else{
                    Text("0\(i)")
                        .font(Font.system(size:30))
                        .foregroundColor(Cores.marrom)
                }

            }

        }

        .font(.title)
        
        .pickerStyle(.wheel)

        .labelsHidden()

        .frame(width: 70)

        .frame(idealHeight: height, maxHeight: .infinity)

        .clipped()
        
        

    }

}


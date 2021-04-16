//
//  UnderlineTF.swift
//  LoginRegister
//
//  Created by mac book pro on 4/12/21.
//

import SwiftUI

extension View {
    func Underline(color: Color = Color(.systemGroupedBackground)) -> some View {
        VStack {
            self
                .padding(.bottom, 10)
            Rectangle().fill(color).frame(height: 1)
        }
        
    }
    

}


struct CustomButton: ButtonStyle {
    let selected: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        VStack{
            configuration.label
                .frame(width: 60)
                .font(.system(size: 17, weight: selected ? Font.Weight.bold : Font.Weight.regular))
            
            if selected{
                Capsule()
                    .fill(Color.black)
                    .frame(width: 30, height: 3)
                
            }
        }
        
    }
}

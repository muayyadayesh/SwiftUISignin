//
//  MainController.swift
//  LoginRegister
//
//  Created by mac book pro on 4/16/21.
//

import SwiftUI

struct MainController: View {
    
    @State var ShowLogin = true
    
    var body: some View {
        
        VStack(spacing: 0){
            HStack(alignment: .top, spacing: 20){
                
                Button(action: {
                    ShowLogin = true
                }) {
                    Text("Login")
                        .foregroundColor(ShowLogin ? .blue : .primary)
                    
                    
                }.buttonStyle(CustomButton(selected: ShowLogin))
                
                Button(action: {
                    ShowLogin = false
                }) {
                    Text("Signup")
                        .foregroundColor(ShowLogin ? .primary : .blue)
                    
                }.buttonStyle(CustomButton(selected: !ShowLogin))
                
                Spacer()
            }
            .padding(.horizontal)
            
            Spacer()
            
            if ShowLogin {
                Login()
            }
            else {
                Signup()
            }
        }.animation(.easeOut(duration: 0.5))
        
        
    }
}

struct MainController_Previews: PreviewProvider {
    static var previews: some View {
        MainController()
    }
}


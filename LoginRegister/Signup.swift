//
//  Signup.swift
//  LoginRegister
//
//  Created by mac book pro on 4/12/21.
//

import SwiftUI

struct Signup: View {
    @State var Email = ""
    @State var Password = ""
    @State var ConfirmPassword = ""

    var body: some View {
        GeometryReader {reader
            in
            VStack(alignment: .leading){
                
                Group {
                    
                    VStack(alignment: .leading){
                        HStack(alignment: .top){
                            Text("Hello,").font(.system(size: 40, weight: Font.Weight.light, design: Font.Design.default))
                            
                            Text("Sparrow").font(.system(size: 40, weight: Font.Weight.bold, design: Font.Design.default))
                            
                        }
                        
                        Text("Fill all blank fields below!")
                            .padding(.top,1)
                        
                    }
                    .frame(minHeight: 100, maxHeight: 100)
                    .padding(.top, reader.size.height / 5)

                    
                    VStack(spacing: 60){
                        TextField("Email", text: $Email)
                            .Underline()
                        
                        SecureField("Password", text: $Password).Underline()
                        
                        SecureField("Password again", text: $ConfirmPassword).Underline()
                    }.padding(.top, 30)

                    
                    HStack{
                        Spacer()
                        Button(action: {
                            
                        }) {
                            
                            Image(systemName: "arrow.forward")
                                .frame(width: 100, height: 50)
                                .foregroundColor(.white)
                                .background(Color.red)
                                .clipShape(Capsule())
                                .font(.title3)
                        }
                    }.padding(.top)
                    
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("Forgot password!").font(.system(size: 16, weight: Font.Weight.bold, design: Font.Design.default))
                        }
                        .foregroundColor(.primary)
                        .font(.system(.body))
                        
                        Spacer()
                        
                        
                    }
                }
                .padding(.horizontal)
                
                
                HStack{
                    Spacer()
                }.frame(height: 50)
                .background(Color(.systemGroupedBackground))
            }
            
        }
    }}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}

//
//  Overview.swift
//  cfao_ios
//
//  Created by Smartcodes on 10/11/2021.
//

import SwiftUI

struct Overview: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            Image("cfao-logo")
                .resizable()
                .frame(width: 85, height: 28)
                .padding(.top, 80)
            
            Text("Please select the what you want cfao to help you today")
                .font(Font.custom("Poppins-Light", size: 16 ))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 50)
                .foregroundColor(.black)
                .padding(.top,30)
            Text("")
                .clipShape(Rectangle())
                .frame(width: 65, height: 5)
                .background(Color("SplashBg"))
                .cornerRadius(20)
                .padding(.top,20)
                 
            Image("2cars")
                    .resizable()
                    .frame(width: 274, height: 135)
                    .padding()
                    .padding(.top, 60)
            Button(action: {
                withAnimation(){
                    viewRouter.currentPage = .page3
                }
            }, label: {
                Text("Cfao showroom")
                    .font(Font.custom("Poppins-Regular", size: 16 ))
                    .padding(.horizontal, 80)
                    .padding(.vertical, 25)
                    .foregroundColor(.black)
                    .clipShape(Rectangle())
                    .background(Color.white)
                    .clipShape(Rectangle())
                    .cornerRadius(10)
                    .shadow(color: Color("Background"), radius: 10, x: 2, y: 2)
                    
            })
                .background(Color.white)
                .padding()
            Button(action: {
                withAnimation(){
                    viewRouter.currentPage = .page4
                }
               
            }, label: {
                Text("Maintanance")
                    .font(Font.custom("Poppins-Regular", size: 16 ))
                    .padding(.horizontal, 90)
                    .padding(.vertical, 25)
                    .foregroundColor(.black)
                    .clipShape(Rectangle())
                    .background(Color.white)
                    .clipShape(Rectangle())
                    .cornerRadius(10)
                    .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                    
            })
                .background(Color.white)
                .padding()
            Spacer()
            
        }.background(Color.white)
            .padding(.horizontal, -30)
            .ignoresSafeArea()
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview(viewRouter: ViewRouter())
    }
}

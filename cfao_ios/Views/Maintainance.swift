//
//  Maintainance.swift
//  cfao_ios
//
//  Created by Smartcodes on 12/11/2021.
//

import SwiftUI

struct Maintainance: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    withAnimation(){
                        viewRouter.currentPage = .page2
                    }
                }, label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.black)
                }).padding(.leading, 20)
                Spacer()
                Image("cfao-logo")
                    .resizable()
                    .frame(width: 85, height: 28)
                    .padding(.top, 0)
                    .padding(.leading, -40)
                Spacer()
                
            }.padding(.top, 20)
            Spacer()
            ZStack{
                Image("maintainance")
                    .resizable()
                    .frame(width: .infinity, height: 250)
                    .cornerRadius(20)
                VStack{
                    Text("Take a  rest,")
                        .font(Font.custom("Poppins-Bold", size: 20 ))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 220)
                    Text("we take the stress")
                        .font(Font.custom("Poppins-Bold", size: 20 ))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 155)
                        .padding(.top, -25)
                    Text("GENUINE PARTS • QUALIFIED MECHANIC • INTERNATIONAL STANDARDS")
                        .font(Font.custom("Poppins-Light", size:8 ))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 80)
                    
                }.padding(.top, 150)
               
                
            }.padding(.horizontal, 20)
            VStack{
                Text("Did you purchase your Suzuki")
                    .font(Font.custom("Poppins-Light", size:14 ))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.top, 80)
                Text("at CFAO Motors?")
                    .font(Font.custom("Poppins-Light", size:14 ))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.top, -15)
                
            }.padding(.top, 20)
            Text("")
                .clipShape(Rectangle())
                .frame(width: 65, height: 5)
                .background(Color("SplashBg"))
                .cornerRadius(20)
                .padding(.top,20)
            HStack{
                VStack{
                    Image("yes")
                        .resizable()
                        .frame(width: 37, height: 23)
                        .padding(.top, 40)
                    Button(action: {
                        withAnimation(){
                            viewRouter.currentPage = .page8
                        }
                    }, label: {
                        Text("YES")
                            .font(Font.custom("Poppins-Regular", size:14 ))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                            .padding(.horizontal, 45)
                    })
                  
                }.clipShape(Rectangle())
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                VStack{
                    Image("no")
                        .resizable()
                        .frame(width: 37, height: 23)
                        .padding(.top, 40)
                    
                    Button(action: {
                        withAnimation(){
                            viewRouter.currentPage = .page8
                        }
                    }, label: {
                        Text("NO")
                            .font(Font.custom("Poppins-Regular", size:14 ))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                            .padding(.horizontal, 45)
                    })
                  
                }.clipShape(Rectangle())
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                    
            }.padding(.top, 40)
            
                
            Spacer()
        }.background(Color.white)
    }
}

struct Maintainance_Previews: PreviewProvider {
    static var previews: some View {
        Maintainance(viewRouter: ViewRouter())
    }
}

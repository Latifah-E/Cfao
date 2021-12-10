//
//  SelectMake.swift
//  cfao_ios
//
//  Created by Smartcodes on 10/11/2021.
//

import SwiftUI

struct SelectMake: View {
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
            Text("Please select the car make and model")
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
            
            ScrollView(.vertical, showsIndicators: false){
                CardView( viewRouter: viewRouter)
            }.padding(.bottom, 25)
                .padding(.top, 30)
            
            Spacer()
        }  .background(.white)
    }
}
struct CardView: View{
    @StateObject var viewRouter: ViewRouter
    @State var index = 0
    var body: some View{
        VStack( spacing: 20, content: {
            HStack{
                Image("Suzuki")
                    .resizable()
                    .frame(width: 52, height: 58)
                    .padding(.leading, 40)
                Spacer()
                Button(action: {
                    withAnimation(){
                        viewRouter.currentPage = .page5
                    }
                }, label: {
                    Text("Suzuki")
                        .font(Font.custom("Poppins-regular", size: 16 ))
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(.black)
                        .padding(.trailing, 20)
                })
            }
            .padding(.vertical, 30)
            .background(Color.white)
            .clipShape(Rectangle())
            .cornerRadius(20)
            .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
       HStack{
            Image("VWagon")
                .resizable()
                .frame(width: 57, height: 56)
                .padding(.leading, 40)
           Spacer()
            Button(action: {
                withAnimation(){
                    viewRouter.currentPage = .page5
                }
            }, label: {
                Text("Volkswagen")
                    .font(Font.custom("Poppins-regular", size: 16 ))
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.black)
                    .padding(.trailing, 20)
                    
            })
        }
            .padding(.vertical, 33)
            .background(Color.white)
            .clipShape(Rectangle())
            .cornerRadius(20)
            .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
        HStack{
            Image("Mercedes")
                .resizable()
                .frame(width:49, height: 49)
                .padding(.leading, 40)
            Spacer()
            Button(action: {
                withAnimation(){
                    viewRouter.currentPage = .page5
                }
            }, label: {
                Text("Mercedes Benz")
                    .font(Font.custom("Poppins-regular", size: 16 ))
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.black)
                    .padding(.trailing, 20)
            })
        }
            .padding(.vertical, 35)
            .background(Color.white)
            .clipShape(Rectangle())
            .cornerRadius(20)
            .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
            
        }).padding(.horizontal, 40)

            .padding()
       
    
}
}
struct SelectMake_Previews: PreviewProvider {
    static var previews: some View {
        SelectMake( viewRouter: ViewRouter())
    }
}

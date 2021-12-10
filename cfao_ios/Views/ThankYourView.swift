//
//  ThankYourView.swift
//  cfao_ios
//
//  Created by Smartcodes on 12/11/2021.
//

import SwiftUI

struct ThankYourView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            Image("cfao-logo")
                .resizable()
                .frame(width: 85, height: 28)
                .padding(.top, 40)
            Spacer()
            VStack{
                Image("success")
                    .resizable()
                    .frame(width: 93, height: 93)
                    .padding(.top, 60)
                    .padding(.bottom, 30)
                Text("Thank you for contacting CFAO motors, our Administrator will contact you shortly")
                    .font(Font.custom("Poppins-Light", size: 14 ))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 50)
            }.padding(20)
                .background(Color.white)
                .clipShape(Rectangle())
                .cornerRadius(25)
                .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                .padding(.horizontal)
                
            
            Spacer()
            Button(action: {
                withAnimation(){
                    viewRouter.currentPage = .page2
                }
            }, label: {
                Text("Back Home")
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 50)
                    .padding(.vertical)
            })
            
        }.background(Color.white)
    }
}

struct ThankYourView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYourView(viewRouter: ViewRouter())
    }
}

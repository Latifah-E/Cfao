//
//  SplashScreen.swift
//  cfao_ios
//
//  Created by Smartcodes on 10/11/2021.
//

import SwiftUI

struct SplashScreen: View {
    @State var isSplashScreen:Bool = false
    @State var fadeInOut:Bool = false
    @State private var scale: CGFloat = 0
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            if self.isSplashScreen{
                Overview(viewRouter: viewRouter)
            }else{
                VStack{
                    Spacer()
                    ZStack{
                        Image("logo-ellipse")
                            .resizable()
                            .frame(maxWidth: .infinity, maxHeight:650, alignment: .center)
                        ZStack{
                            Image("logo-container")
                                .resizable()
                                .frame(maxWidth: .infinity, maxHeight:440, alignment: .center)
                            
                            Image("cfao-logo")
                                .resizable()
                                .frame(width: 170, height: 55, alignment: .center)
                                .scaleEffect(scale)
                                .onAppear(){
                                    withAnimation(Animation.easeIn(duration: 2)){
                                        fadeInOut.toggle()
                                        scale += 1
                                    }
                                   
                                }.opacity(fadeInOut ? 1 : 0)
                            
                        }
                    }
                   Spacer()
                }.background(Color("SplashBg"))
                    .ignoresSafeArea()
                    .transition(.move(edge: .top))
            }
           

        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                       withAnimation {
                           self.isSplashScreen = true
                       }
                   }
               }

    }

    
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen(viewRouter: ViewRouter())
    }
}

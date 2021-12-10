//
//  SelectModel.swift
//  cfao_ios
//
//  Created by Smartcodes on 11/11/2021.
//

import SwiftUI

struct SelectModel: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var selected: SelectedObject
    var body: some View {
        VStack{
            HStack{
                
                Image("cfao-logo")
                    .resizable()
                    .frame(width: 85, height: 28)
                    .padding(.top, 0)
              
                
            }.padding(.top, 20)
          
            Text("Please select Suzuki your Model")
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
                ModelView(viewRouter: viewRouter, selected: selected)
            }.padding(.bottom, 0)
                .padding(.top, 0)
               
     
            
            Spacer()
        }            .background(.white)
    }
}
struct ModelView: View{
    @StateObject var viewRouter: ViewRouter
    @StateObject var selected: SelectedObject
    @State var index = 0
    var body: some View{
        VStack( spacing: 25, content: {
            HStack(spacing: -10, content: {
                ZStack{
                    HStack{
                        Text("")
                            .font(Font.custom("Poppins-Light", size: 17 ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top,10)
                            .padding(.horizontal, 55)
                            .padding(.vertical, 60)
                    }.clipShape(Rectangle())
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                    VStack{
                        Image("image0")
                            .resizable()
                            .frame(width: 129, height: 86)
                            .padding(.trailing,30)
                        Button(action: {
                            withAnimation(){
                                viewRouter.currentPage = .page6
                                selected.currentObject = .object1
                            }
                        }, label: {
                            Text("Swift")
                                .font(Font.custom("Poppins-Regular", size: 14 ))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .padding(.top,0)
                        })
                        
                    }
  
                }
                
                ZStack{
                    HStack{
                        Text("")
                            .font(Font.custom("Poppins-Light", size: 17 ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top,10)
                            .padding(.horizontal, 55)
                            .padding(.vertical, 60)
                    }.clipShape(Rectangle())
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                    VStack{
                        Image("image1")
                            .resizable()
                            .frame(width: 129, height: 86)
                            .padding(.trailing,40)
                        Button(action: {
                            withAnimation(){
                                viewRouter.currentPage = .page6
                                selected.currentObject = .object2
                            }
                        }, label: {
                            Text("Alto")
                                .font(Font.custom("Poppins-Regular", size: 14 ))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .padding(.top,0)
                        })
                    }
  
                }
                
            })
            HStack(spacing: -10, content: {
                ZStack{
                    HStack{
                        Text("")
                            .font(Font.custom("Poppins-Light", size: 17 ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top,10)
                            .padding(.horizontal, 55)
                            .padding(.vertical, 60)
                    }.clipShape(Rectangle())
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                    VStack{
                        Image("image2")
                            .resizable()
                            .frame(width: 125, height: 73)
                            .padding(.trailing,40)
                        Button(action: {
                            withAnimation(){
                                viewRouter.currentPage = .page6
                                selected.currentObject = .object3
                            }
                        }, label: {
                            Text("Swift")
                                .font(Font.custom("Poppins-Regular", size: 14 ))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .padding(.top,0)
                        })
                    }
  
                }
                ZStack{
                    HStack{
                        Text("")
                            .font(Font.custom("Poppins-Light", size: 17 ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top,10)
                            .padding(.horizontal, 55)
                            .padding(.vertical, 60)
                    }.clipShape(Rectangle())
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                    VStack{
                        Image("image3")
                            .resizable()
                            .frame(width: 129, height: 86)
                            .padding(.trailing,40)
                        Button(action: {
                            withAnimation(){
                                viewRouter.currentPage = .page6
                                selected.currentObject = .object4
                            }
                        }, label: {
                            Text("Jimny")
                                .font(Font.custom("Poppins-Regular", size: 14 ))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .padding(.top,0)
                        })
                    }
  
                }
            })
            HStack(spacing: -10, content: {
                ZStack{
                    HStack{
                        Text("")
                            .font(Font.custom("Poppins-Light", size: 17 ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top,10)
                            .padding(.horizontal, 55)
                            .padding(.vertical, 60)
                    }.clipShape(Rectangle())
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                    VStack{
                        Image("image4")
                            .resizable()
                            .frame(width: 129, height: 86)
                            .padding(.trailing,40)
                        Button(action: {
                            withAnimation(){
                                viewRouter.currentPage = .page6
                                selected.currentObject = .object5
                            }
                        }, label: {
                            Text("Maruti")
                                .font(Font.custom("Poppins-Regular", size: 14 ))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .padding(.top,0)
                        })
                    }
  
                }
                ZStack{
                    HStack{
                        Text("")
                            .font(Font.custom("Poppins-Light", size: 17 ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top,10)
                            .padding(.horizontal, 55)
                            .padding(.vertical, 60)
                    }.clipShape(Rectangle())
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                    VStack{
                        Image("image5")
                            .resizable()
                            .frame(width: 129, height: 86)
                            .padding(.trailing,40)
                        Button(action: {
                            withAnimation(){
                                viewRouter.currentPage = .page6
                                selected.currentObject = .object6
                            }
                        }, label: {
                            Text("Swift RS")
                                .font(Font.custom("Poppins-Regular", size: 14 ))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .padding(.top,0)
                        })
                    }
  
                }
            })
        }).padding(.horizontal, 50)
            .padding()
    }
}
struct SelectModel_Previews: PreviewProvider {
    static var previews: some View {
        SelectModel( viewRouter: ViewRouter(), selected: SelectedObject())
    }
}

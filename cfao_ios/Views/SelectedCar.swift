//
//  SelectedCar.swift
//  cfao_ios
//
//  Created by Smartcodes on 12/11/2021.
//

import SwiftUI

struct SelectedCar: View {
    @State private var image: String = "image1"
    @State private var logo: String = "altologo"
    @State private var feature1: String = "1.5 litre engine"
    @State private var feature2: String = " Ample body angles and clearance"
    @State private var feature3: String = " Brake LSD Traction Control"
    @State private var feature4: String = "Hill Hold Controle"
    @State private var feature5: String = " High Beam Assist"
    @State private var feature6: String = "Traffic sign recognition"
    @State private var slogan: String = "Crafted for adventure"
    @StateObject var viewRouter: ViewRouter
    @StateObject var selected: SelectedObject
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    withAnimation(){
                        viewRouter.currentPage = .page3
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
            
            VStack{
                
                Image(logo)
                    .resizable()
                    .frame(width: 112, height: 43, alignment: .leading)
                Text(slogan)
                    .font(Font.custom("Poppins-Light", size: 14 ))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Image(image)
                    .resizable()
                    .frame(width:254, height: 150)
                    .padding()
                HStack{
                    Button(action: {
                        withAnimation(){
                            viewRouter.currentPage = .page7
                        }
                    }, label: {
                        Text("Test Drive")
                            .font(Font.custom("Poppins-Light", size: 14 ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 8)
                            
                    }).background(Color("button"))
                        .cornerRadius(5)
                        
                        
                    Button(action: {
                        
                    }, label: {
                        Text("Brochure")
                            .font(Font.custom("Poppins-Light", size: 14 ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .background(Color("button"))
                            .padding(.horizontal, 20)
                                .padding(.vertical, 8)
                            
                    }).background(Color("button"))
                        .cornerRadius(5)
                }
                .padding(.bottom, 20)
            }.clipShape(Rectangle())
                .padding(.horizontal, 45)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                .padding(.top, 30)
            
            
            VStack{
                HStack{
                   
                    Text("FEATURES")
                        .font(Font.custom("Poppins-SemiBold", size: 14 ))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.horizontal, 30)
                        .padding(.top, 20)
                        .padding(.bottom, -10)
                    Spacer()
                }
                
                HStack{
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 3, height: 3)
                        .padding(.leading, 40)
                        .padding(.top, 15)
                        .foregroundColor(.gray)
                    Text(feature1)
                        .font(Font.custom("Poppins-Light", size: 12 ))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                            .padding(.bottom, -15)
                    Spacer()
                }.padding(.vertical, -3)
                HStack{
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 3, height: 3)
                        .padding(.leading, 40)
                        .padding(.top, 15)
                        .foregroundColor(.gray)
                    Text(feature2)
                        .font(Font.custom("Poppins-Light", size: 12 ))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                            .padding(.bottom, -15)
                    Spacer()
                }.padding(.vertical, -3)
                HStack{
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 3, height: 3)
                        .padding(.leading, 40)
                        .padding(.top, 15)
                        .foregroundColor(.gray)
                    Text(feature3)
                        .font(Font.custom("Poppins-Light", size: 12 ))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                            .padding(.bottom, -15)
                    Spacer()
                }.padding(.vertical, -3)
                HStack{
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 3, height: 3)
                        .padding(.leading, 40)
                        .padding(.top, 15)
                        .foregroundColor(.gray)
                    Text(feature4)
                        .font(Font.custom("Poppins-Light", size: 12 ))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                            .padding(.bottom, -15)
                    Spacer()
                }.padding(.vertical, -3)
                HStack{
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 3, height: 3)
                        .padding(.leading, 40)
                        .padding(.top, 15)
                        .foregroundColor(.gray)
                    Text(feature5)
                        .font(Font.custom("Poppins-Light", size: 12 ))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                            .padding(.bottom, -15)
                    Spacer()
                }.padding(.vertical, -3)
                HStack{
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 3, height: 3)
                        .padding(.leading, 40)
                        .padding(.top, 15)
                        .foregroundColor(.gray)
                    Text(feature6)
                        .font(Font.custom("Poppins-Light", size: 12 ))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                            .padding(.bottom, -15)
                    Spacer()
                }.padding(.bottom, 20)
                
               
              
            }.clipShape(Rectangle())
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                .onAppear {
                    switchObjects()
                       }
                
            
            Spacer()
                
        }
            .background(.white)
    }
    func switchObjects(){
        switch selected.currentObject  {
            case .object1:
            self.image = cars[0].self.image
            self.logo = cars[0].self.logo
            self.feature1 = cars[0].self.feature1
            self.feature2 = cars[0].self.feature2
            self.feature3 = cars[0].self.feature3
            self.feature4 = cars[0].self.feature4
            self.feature5 = cars[0].self.feature5
            self.feature6 = cars[0].self.feature6
            self.slogan = cars[0].self.slogan
          
        case .object2:
        self.image = cars[1].self.image
        self.logo = cars[1].self.logo
        self.feature1 = cars[1].self.feature1
        self.feature2 = cars[1].self.feature2
        self.feature3 = cars[1].self.feature3
        self.feature4 = cars[1].self.feature4
        self.feature5 = cars[1].self.feature5
        self.feature6 = cars[1].self.feature6
        self.slogan = cars[1].self.slogan
            
        case .object3:
        self.image = cars[2].self.image
        self.logo = cars[2].self.logo
        self.feature1 = cars[2].self.feature1
        self.feature2 = cars[2].self.feature2
        self.feature3 = cars[2].self.feature3
        self.feature4 = cars[2].self.feature4
        self.feature5 = cars[2].self.feature5
        self.feature6 = cars[2].self.feature6
        self.slogan = cars[2].self.slogan
            
        case .object4:
        self.image = cars[3].self.image
        self.logo = cars[3].self.logo
        self.feature1 = cars[3].self.feature1
        self.feature2 = cars[3].self.feature2
        self.feature3 = cars[3].self.feature3
        self.feature4 = cars[3].self.feature4
        self.feature5 = cars[3].self.feature5
        self.feature6 = cars[3].self.feature6
        self.slogan = cars[3].self.slogan
            
        case .object5:
        self.image = cars[4].self.image
        self.logo = cars[4].self.logo
        self.feature1 = cars[4].self.feature1
        self.feature2 = cars[4].self.feature2
        self.feature3 = cars[4].self.feature3
        self.feature4 = cars[4].self.feature4
        self.feature5 = cars[4].self.feature5
        self.feature6 = cars[4].self.feature6
        self.slogan = cars[4].self.slogan
            
            case .object6:
            self.image = cars[5].self.image
            self.logo = cars[5].self.logo
            self.feature1 = cars[5].self.feature2
            self.feature3 = cars[5].self.feature3
            self.feature4 = cars[5].self.feature4
            self.feature5 = cars[5].self.feature5
            self.feature6 = cars[5].self.feature6
            self.slogan = cars[5].self.slogan
            
            }
    }
}

struct SelectedCar_Previews: PreviewProvider {
    static var previews: some View {
        SelectedCar(viewRouter: ViewRouter(), selected: SelectedObject())
    }
}

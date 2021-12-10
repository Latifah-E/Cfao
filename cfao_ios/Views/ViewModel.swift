//
//  ViewModel.swift
//  cfao_ios
//
//  Created by Smartcodes on 11/11/2021.
//

import SwiftUI

struct ViewModel: View {

    @State private var searcher: String = ""
    @State private var image: String = "image0"
    @State private var logo: String = "altologo"
    @State private var feature1: String = "1.5 litre engine"
    @State private var feature2: String = " Ample body angles and clearance"
    @State private var feature3: String = " Brake LSD Traction Control"
    @State private var feature4: String = "Hill Hold Controle"
    @State private var feature5: String = " High Beam Assist"
    @State private var feature6: String = "Traffic sign recognition"
    @State private var slogan: String = "Crafted for adventure"
    @State private var selectedCard: Int = 0
    @State var show = false
    @State var isNotFoundMessage:Bool = false
    @StateObject var viewRouter: ViewRouter
    var body: some View {
       
        VStack{
            HStack{
                if !self.show{
                    Button(action: {
                        withAnimation(){
                            viewRouter.currentPage = .page3
                        }
                    }, label: {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.black)
                    }).padding(.leading, 0)
                }
                Spacer()
                HStack{
                    if self.show{
                        Image(systemName: "magnifyingglass").padding(.horizontal, 8)
                            .foregroundColor(.black)
                        TextField("", text: self.$searcher)
                            .font(Font.custom("Poppins-Light", size: 13 ))
                            .placeholder2(when: searcher.isEmpty) {
                                Text("Search").opacity(0.3)
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal,0)
                        
                        Button(action: {
                            
                            withAnimation {
                                
                                self.searcher = ""
                                self.show.toggle()
                                UIApplication.shared.dismissKeyboard()
                            }
                            
                        }) {
                            
                            Image(systemName: "xmark").foregroundColor(.black)
                                
                        }
                        .padding(.horizontal, 0)
                        .font(Font.custom("Poppins-Light", size: 12 ))
                    }
                    else{
                        
                        Button(action: {
                            
                            withAnimation {
                                
                                self.show.toggle()
                            }
                            
                        }) {
                            
                            Image(systemName: "magnifyingglass").foregroundColor(.black)
                                .padding(10)
                            
                            
                                
                            
                            
                        }
                    }
                }.padding(self.show ? 10 : 0)
                    .padding(5)
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
            }
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false){         
                HStack(spacing: -20, content: {

                    ForEach(cars.indices.filter {cars[$0].name.localizedCaseInsensitiveContains(searcher) || searcher.isEmpty }, id: \.self){
                            index in
                            
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
                                    .background(self.selectedCard == index ? Color("Accent") : Color.white)
                                    .cornerRadius(15)
                                    .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                                VStack{
                                    Image(cars[index].self.image)
                                        .resizable()
                                        .frame(width: 129, height: 86)
                                        .padding(.trailing,30)
                                    Text(cars[index].self.name)
                                        .font(Font.custom("Poppins-Regular", size: 14 ))
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(self.selectedCard == index ? Color.white : Color.black)
                                        .padding(.top,0)
                                }
              
                            }.padding(.vertical)
                            .onAppear{
                                
                            }
                              .onTapGesture{
                                    withAnimation{
                                        self.selectedCard = index
                                        self.image = cars[index].self.image
                                        self.logo = cars[index].self.logo
                                        self.feature1 = cars[index].self.feature1
                                        self.feature2 = cars[index].self.feature2
                                        self.feature3 = cars[index].self.feature3
                                        self.feature4 = cars[index].self.feature4
                                        self.feature5 = cars[index].self.feature5
                                        self.feature6 = cars[index].self.feature6
                                        self.slogan = cars[index].self.slogan
                                    }
                                   
                                }
                        
                                
                          
                        }
               
                })
              
            }.padding(.bottom, 0)
                .padding(.top, 10)
          
           
            ScrollView(.vertical, showsIndicators: false){
            
            VStack{
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
                    }.padding(.bottom, 10)
                   
                   
                  
                }.clipShape(Rectangle())
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    
            }.padding(.top)
            
            }.padding(.top, 20)
            
    
            
        }.background(Color.white)

        
        
    }
    

}
extension View {
    func placeholder2<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
                .foregroundColor(.black)
                .padding(.leading,0)
                .font(Font.custom("Poppins-Light", size: 14 ))
            self
        }
    }
}

extension UIApplication {
      func dismissKeyboard() {
          sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
      }
  }


extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
                .foregroundColor(.black)
                .padding(.leading,15)
                .font(Font.custom("Poppins-Light", size: 14 ))
            self
        }
    }
}
struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel(viewRouter: ViewRouter())
    }
}

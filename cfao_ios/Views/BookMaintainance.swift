//
//  BookMaintainance.swift
//  cfao_ios
//
//  Created by Smartcodes on 12/11/2021.
//

import SwiftUI

struct BookMaintainance: View {
    @State private var fname: String = ""
    @State private var lname: String = ""
    @State private var phone: String = ""
    @State private var email: String = ""
    @State private var border: String = "Background"
    @StateObject var viewRouter: ViewRouter
    var holder = "Suzuki"
    var dropDownList = ["Suzuki", "Alto", "Suzuki XS", "Alto XS"]
    @State var value = ""
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    withAnimation(){
                        viewRouter.currentPage = .page4
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
            VStack(alignment: .leading, content: {
                
                   
                    
                    ScrollView(.vertical, showsIndicators: false){
                 
                        VStack{
                            HStack{
                                Text("First Name")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .cornerRadius(18)
                                Spacer()
                            }
                            TextField("", text: $fname)
                                .padding(.leading, 15)
                                .placeholder(when: fname.isEmpty) {
                                    Text("Enter Your First Name").opacity(0.3)
                                }
                                .padding(10)
                                .font(Font.custom("Poppins-Light", size: 14 ))
                                .foregroundColor(.black)
                                .background(Color.white)
                                .clipShape(Rectangle())
                                .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(fname.isEmpty ? Color(border) : Color("SplashBg"), lineWidth: 1)
                                        )
                                
                                
                        
                        }.padding(.horizontal, 25)
                            .padding(.vertical, 0)
                        VStack{
                            HStack{
                                Text("Last Name")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .cornerRadius(18)
                                Spacer()
                            }
                            TextField("", text: $lname)
                                .padding(.leading, 15)
                                .placeholder(when: lname.isEmpty) {
                                    Text("Enter Your Last Name").opacity(0.3)
                                }
                                .padding(10)
                                .font(Font.custom("Poppins-Light", size: 14 ))
                                .foregroundColor(.black)
                                .background(Color.white)
                                .clipShape(Rectangle())
                                .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(lname.isEmpty ? Color(border) : Color("SplashBg"), lineWidth: 1)
                                        )
                                
                        
                        }.padding(.horizontal, 25)
                            .padding(.vertical, 0)
                        VStack{
                            HStack{
                                Text("Phone Number")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .cornerRadius(18)
                                Spacer()
                            }
                            TextField("", text: $phone)
                                .padding(.leading, 15)
                                .placeholder(when: phone.isEmpty) {
                                    Text("Enter Your Phone Number").opacity(0.3)
                                }
                                .padding(10)
                                .font(Font.custom("Poppins-Light", size: 14 ))
                                .foregroundColor(.black)
                                .background(Color.white)
                                .clipShape(Rectangle())
                                .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(phone.isEmpty ? Color(border) : Color("SplashBg"), lineWidth: 1)
                                        )
                                
                        
                        }.padding(.horizontal, 25)
                            .padding(.vertical, 0)
                        VStack{
                            HStack{
                                Text("Email")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .cornerRadius(18)
                                Spacer()
                            }
                            TextField("", text: $email)
                                .padding(.leading, 15)
                                .placeholder(when: email.isEmpty) {
                                    Text("Enter Your Email Address").opacity(0.3)
                                }
                                .padding(10)
                                .font(Font.custom("Poppins-Light", size: 14 ))
                                .foregroundColor(.black)
                                .background(Color.white)
                                .clipShape(Rectangle())
                                .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(email.isEmpty ? Color(border) : Color("SplashBg"), lineWidth: 1)
                                        )
                                
                        
                        }.padding(.horizontal, 25)
                            .padding(.vertical, 0)
                        VStack{
                            HStack{
                                Text("Car Model")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .cornerRadius(20)
                                Spacer()
                            }
                            Menu {
                                        ForEach(dropDownList, id: \.self){ client in
                                            Button(client) {
                                                self.value = client
                                            }
                                        }
                            } label: {
                                       VStack(spacing: 5){
                                           HStack{
                                               Text(value.isEmpty ? holder : value)
                                                   .foregroundColor(value.isEmpty ? .gray : .black)
                                                   .font(Font.custom("Poppins-Light", size: 14 ))
                                               Spacer()
                                               Image(systemName: "chevron.down")
                                                   .foregroundColor(Color.gray)
                                                   .font(Font.system(size: 18))
                                           }
                                           .padding(.horizontal)
                                           .padding(10)
                                           .overlay(
                                                       RoundedRectangle(cornerRadius: 10)
                                                           .stroke(value.isEmpty ? Color(border) : Color("SplashBg"), lineWidth: 1)
                                                   )
                                           
                                       }
                                   }
                                
                        
                        }.padding(.horizontal, 25)
                            .padding(.vertical, 0)
                         
                     
                     
                    }.padding(.top, 40)
                
            })
            Button(action: {
                withAnimation(){
                    viewRouter.currentPage = .page9
                }
            }, label: {
                Text("SCHEDULE MAINTENANCE")
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 50)
                    .padding(.vertical)
            }).background(Color("Accent"))
                .cornerRadius(10)
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
            Spacer()
        }.background(Color.white)
    }
}

struct BookMaintainance_Previews: PreviewProvider {
    static var previews: some View {
        BookMaintainance(viewRouter: ViewRouter())
    }
}

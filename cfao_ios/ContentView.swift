//
//  ContentView.swift
//  cfao_ios
//
//  Created by Smartcodes on 10/11/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var selected: SelectedObject
    
    var body: some View {
        switch viewRouter.currentPage  {
            case .page1:
                SplashScreen(viewRouter: viewRouter)
            case .page2:
                Overview(viewRouter: viewRouter)
            case .page3:
            BottomBar(viewRouter: viewRouter, selected: selected)
            case .page4:
                Maintainance(viewRouter: viewRouter)
            case .page5:
               ViewModel(viewRouter: viewRouter)
            case .page6:
            SelectedCar(viewRouter: viewRouter, selected: selected)
            case .page7:
                BookDrive(viewRouter: viewRouter)
            case .page8:
                BookMaintainance(viewRouter: viewRouter)
            case .page9:
                ThankYourView(viewRouter: viewRouter)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter(), selected: SelectedObject())
    }
}

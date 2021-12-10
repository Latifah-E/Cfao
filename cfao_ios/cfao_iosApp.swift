//
//  cfao_iosApp.swift
//  cfao_ios
//
//  Created by Smartcodes on 10/11/2021.
//

import SwiftUI

@main
struct cfao_iosApp: App {
    @StateObject var viewRouter = ViewRouter()
    @StateObject var selected = SelectedObject()
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter, selected: selected)
        }
    }
}

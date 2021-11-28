//
//  ContentView.swift
//  MishkaCmsiOS
//
//  Created by shahryar on 9/6/1400 AP.
//

import SwiftUI
struct MainController: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack {
            Router(horizontalSizeClass: horizontalSizeClass)
        }
    }
}

struct MainController_Previews: PreviewProvider {
    static var previews: some View {
        MainController()
    }
}

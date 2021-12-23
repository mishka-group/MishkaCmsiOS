//
//  TabBarRouter.swift
//  MishkaCmsiOS
//
//  Created by shahryar on 9/7/1400 AP.
//

import SwiftUI

// This View Struct is just loaded one time in MainController()
struct Router: View {
    @State var horizontalSizeClass: UserInterfaceSizeClass?
    var body: some View {
        VStack {
            // Using SideBar Or TabBar in different resolution like iPhone or iPad
            if horizontalSizeClass == .compact {
                CustomTabBarStyleOne()
            } else {
                // TODO: I think it would be good if it is same as iPhone or iPad, but with resize and some changes
                SideBarView()
            }
        }
    }
}

// This is a SideBar which is loaded when you have a iPad and you want to use Landscape mode
struct SideBarView: View {
    @State var selectNavigation: SelectNavigation = .home
    var body: some View {
        NavigationView {
            List {
                ForEach(routers) {item in
                    NavigationLink(destination: getNavigation(nav: item.nav)) {
                        Label(item.title, systemImage: item.icon)
                    }
                    .onTapGesture {
                        selectNavigation = item.nav
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action: {}) {
                        Image(systemName: "person.crop.circle")
                    }
                }
            }
            .listStyle(SidebarListStyle())
            
            getNavigation(nav: selectNavigation)
        }
    }
}

// This extension make a router in our View which is Repeated all the pages
extension View {
    @ViewBuilder func getNavigation(nav: SelectNavigation) -> some View {
        switch nav {
        case .home:
            HomeController()
        case .blogs:
            BlogsControllers()
        case .login:
            PostControllers()
        }
    }
}

//
//  RouterSchema.swift
//  MishkaCmsiOS
//
//  Created by shahryar on 9/7/1400 AP.
//

import Foundation
struct RouterSchema: Identifiable {
    var id = UUID()
    var title: String
    var icon: String
    var nav: SelectNavigation
}

var routers = [
    RouterSchema(title: "Home", icon: "house", nav: .home),
    RouterSchema(title: "Blogs", icon: "square.3.stack.3d", nav: .blogs),
    RouterSchema(title: "Login", icon: "lock", nav: .login)
]

enum SelectNavigation {
    case home
    case blogs
    case login
}

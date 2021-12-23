//
//  CustomTabBarStyleOne.swift
//  MishkaCmsiOS
//
//  Created by shahryar on 10/1/1400 AP.
//
// This is a TabBar which is loaded when you have a iPad or iPhon and you want to use Portrait mode
import SwiftUI

struct CustomTabBarStyleOne: View {
    let tabbarTextIconColor: UIColor = UIColor(red: 0.35, green: 0.35, blue: 0.35, alpha: 1.00)
    @State var selectNavigation: SelectNavigation = .home
    var body: some View {
        ZStack(alignment: .bottom) {
            getNavigation(nav: selectNavigation)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack {
                ForEach(routers) { item in
                    Button {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                            selectNavigation = item.nav
                        }
                    } label: {
                        VStack(spacing: 0) {
                            Image(systemName: item.icon)
                                .frame(width: 60, height: 29)
                            Text(item.title)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .foregroundStyle(selectNavigation == item.nav ? .primary : Color(tabbarTextIconColor))
                }
            }
            .padding(.top, 10)
            .frame(height: 80, alignment: .top)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 1, trailing: 20))

    }
}

struct CustomTabBarStyleOne_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarStyleOne()
.previewInterfaceOrientation(.portrait)
    }
}
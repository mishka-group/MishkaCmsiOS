//
//  HomeTemplate.swift
//  MishkaCmsiOS
//
//  Created by shahryar on 10/3/1400 AP.
//

import SwiftUI
struct HomeTemplate: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    Text("Your Daily")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(Color.secondary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Recommendation")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(Color.primary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 22)
                .padding(.top, 30)
                
                ScrollViewListSlideStyleOne()
            }
        }
    }
}

struct HomeTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTemplate()
    }
}

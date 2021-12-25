//
//  ScrollViewListSlideStyleOne.swift
//  MishkaCmsiOS
//
//  Created by shahryar on 10/3/1400 AP.
//

import SwiftUI
struct ScrollViewListSlideStyleOne: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 50) {
                ForEach(1..<10) { num in
                    GeometryReader { proxy in
                        NavigationLink {
                            Image("1test")
                        } label: {
                            VStack {
                                let scale = getScale(proxy: proxy)
                                Image("1test")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5)
                                    )
                                    .overlay(
                                        Text("This is What it is")
                                            .font(.system(size: 20, weight: .bold))
                                            .padding(.horizontal, 10)
                                            .padding(.bottom, 10)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color.white)
                                        
                                        , alignment: .bottomLeading
                                    )
                                    .clipped()
                                    .cornerRadius(5)
                                    .shadow(radius: 4)
                                    .scaleEffect(CGSize(width: scale, height: scale))
                            }
                        }
                        
                    }
                    .frame(width: 150, height: 250)
                }
            }
            .padding(.all, 40)
        }
    }
    
    private func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        let x = proxy.frame(in: .global).minX
        let diff = abs(x - 32)
        if diff < 100 {
            scale = 1 + (120 - diff) / 500
        }
        return scale
    }
}

struct ScrollViewListSlideStyleOne_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewListSlideStyleOne()
    }
}

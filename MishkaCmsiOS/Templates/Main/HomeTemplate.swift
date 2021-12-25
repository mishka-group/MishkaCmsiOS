//
//  HomeTemplate.swift
//  MishkaCmsiOS
//
//  Created by shahryar on 10/3/1400 AP.
//

import SwiftUI
struct HomeTemplate: View {
    let contentListItemColor: UIColor = UIColor(red: 0.35, green: 0.35, blue: 0.35, alpha: 1.00)
    
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
                .padding(.top, 40)
                
                ScrollViewListSlideStyleOne()
                
                Spacer()
                
                HStack {
                    // TODO: it needs some state and a menu list, should be seperated to another view and called heare
                    Spacer()
                    Button { } label: {Text("Last")}
                    Spacer()
                    Button { } label: {Text("Like")}
                    Spacer()
                    Button { } label: {Text("Comment")}
                    Spacer()
                }
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(Color.secondary)
                .padding()
                Spacer()
                VStack(spacing: 17) {
                    LazyVGrid(
                        columns: [GridItem(.adaptive(minimum: .infinity), spacing: 16)],
                        spacing: 20
                    ) {
                        // TODO: Should be seperate and put it as a item in a new swiftui file, but it is not a componnet
                        ForEach(1..<10) { item in
                            HStack {
                                Image("1test")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 80, alignment: .leading)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5)
                                    )
                                    .clipped()
                                    .cornerRadius(5)
                                    .shadow(radius: 4)
                                
                                Spacer()
                                Spacer()
                                VStack {
                                    Text("this is a subject everytime wee need")
                                        .font(.system(size: 20, weight: .bold))
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color.primary)
                                        .frame(maxWidth: .infinity, alignment: .topLeading)
                                    
                                    Spacer()
                                    HStack {
                                        // TODO: should be replaced with {time, likes, comments}
                                        Text("time")
                                        Spacer()
                                        Text("time")
                                    }
                                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.all, 10)
                            .background(.white, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                            
                        }
                        .cornerRadius(3)
                        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 1, y: 2)
                    }
                    .padding(.top)
                    .frame(maxWidth: .infinity)
                }
                .padding(.horizontal, 5)
                .ignoresSafeArea()
            }
        }
    }
}

struct HomeTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTemplate()
    }
}

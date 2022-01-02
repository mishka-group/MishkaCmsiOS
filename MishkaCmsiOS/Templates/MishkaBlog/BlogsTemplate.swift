//
//  BlogsTemplate.swift
//  MishkaCmsiOS
//
//  Created by shahryar on 9/6/1400 AP.
//

import SwiftUI
struct BlogsTemplate: View {
    private var categoriesColumnGrid = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Categories")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(Color.primary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 10)
                
                HStack {
                    LazyVGrid(
                        columns: categoriesColumnGrid,
                        spacing: 40
                    ) {
//                        ForEach(1..<4) { item in
                            VStack {
                                Image(systemName: "suit.heart.fill")
                                    .font(.system(size: 30, weight: .ultraLight))
                                    .foregroundColor(.red)
                                Spacer()
                                Text("Heart")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.primary)
                            }
                            
                            VStack {
                                Image(systemName: "moon.fill")
                                    .font(.system(size: 30, weight: .ultraLight))
                                    .foregroundColor(.yellow)
                                Spacer()
                                Text("Moon")
                            }
                        
                            VStack {
                                Image(systemName: "cloud.moon.fill")
                                    .font(.system(size: 30, weight: .ultraLight))
                                    .foregroundColor(.purple)
                                Spacer()
                                Text("Cloud")
                            }
                            
                            VStack {
                                Image(systemName: "car.fill")
                                    .font(.system(size: 30, weight: .ultraLight))
                                    .foregroundColor(.brown)
                                Spacer()
                                Text("Car")
                            }
                        
//                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, minHeight: 80, alignment: .center)
                .clipped()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black.opacity(0.2), lineWidth: 1)
                )
                
            }
            .padding()
            .padding(.top, 50)
            .ignoresSafeArea()
        }
    }
}

struct BlogsTemplate_Previews: PreviewProvider {
    static var previews: some View {
        BlogsTemplate()
    }
}

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
                
                HStack {
                    Text("Categories")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(Color.primary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    
                    Button("More") {
                        print("hi")
                    }
                    .foregroundColor(Color.blue)
                }
                
                
                HStack {
                    LazyVGrid(
                        columns: categoriesColumnGrid,
                        spacing: 40
                    ) {
//                        ForEach(1..<4) { item in
                            Button(action: {
                                let _ = print("hi!")
                            }) {
                                VStack {
                                    Image(systemName: "suit.heart.fill")
                                        .font(.system(size: 30, weight: .ultraLight))
                                        .foregroundColor(.red)
                                    Spacer()
                                    Text("Heart")
                                        .font(.system(size: 18))
                                        .foregroundColor(Color.primary)
                                }
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
            
            
            VStack(spacing: 17) {
                LazyVGrid(
                    columns: [GridItem(.adaptive(minimum: .infinity), spacing: 16)],
                    spacing: 20
                ) {
                    // TODO: Should be seperate and put it as a item in a new swiftui file, but it is not a componnet
                    ForEach(1..<10) { item in
                        VStack {
                            
                            Text("This is a subject everytime wee need")
                                .font(.system(size: 20, weight: .bold))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.primary)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.bottom, 15)
                            
                            Spacer()
                            
                            Image("1test")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity, minHeight: 200, maxHeight: 200, alignment: .topLeading)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 9).stroke(lineWidth: 0.1)
                                )
                                .clipped()
                                .cornerRadius(11)
                                .shadow(radius: 4)
                            
                            Spacer()
                            Spacer()
                            VStack {
                                Text("This is a subject everytime wee need this is a subject everytime wee need this is a subject everytime wee need this is a subject everytime wee need")
                                
                                Spacer()
                                HStack {
                                    // TODO: should be replaced with {time, likes, comments}
                                    HStack {
                                        Image("shahryar-cat-profile")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 35, height: 35)
                                            .cornerRadius(50)
                                        Text("Shahryar")
                                            .bold()
                                            .font(.system(size: 15, weight: .bold))
                                            .foregroundColor(Color.secondary)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .multilineTextAlignment(.leading)
                                    }
                                    
                                    Spacer()
                                    Spacer()
                                    HStack {
                                        HStack {
                                            Image(systemName: "suit.heart")
                                            Text("100k")
                                                .font(.system(size: 14, weight: .light))
                                        }
                                        Image(systemName: "bookmark")
                                    }
                                }
                                .padding(.top, 30)
                                .frame(maxWidth: .infinity, alignment: .bottomLeading)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all, 10)
                        .background(.white, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                        
                    }
                    .padding(.horizontal, 5)
                    .cornerRadius(3)
                    .shadow(color: Color.black.opacity(0.2), radius: 4, x: 1, y: 2)
                }
                
                .frame(maxWidth: .infinity)
            }
            .padding()
            
            
        }
    }
}

struct BlogsTemplate_Previews: PreviewProvider {
    static var previews: some View {
        BlogsTemplate()
.previewInterfaceOrientation(.portrait)
    }
}

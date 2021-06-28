//
//  ContentView.swift
//  Bookify
//
//  Created by Lucky Osunbiyi on 2021-06-27.
//

import SwiftUI

struct BookifyHomeView: View {
    
    @EnvironmentObject var model : BookifyModel
    
    var body: some View {
        
        NavigationView {
            GeometryReader { geo in
                
                VStack(alignment: .leading) {
                   
                    ScrollView {
                        
                        LazyVStack(spacing: 30) {
                            ForEach(model.books) { b in
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    ZStack {
                                        
                                        Rectangle()
                                            .foregroundColor(.white)
                                        
                                        VStack(alignment: .leading) {
                                            HStack {
                                                Text(b.bookName)
                                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                                    .bold()
                                                
                                                Spacer()
                                                
                                                if(b.readLater == true) {
                                                    Image(systemName: "star.fill")
                                                        .foregroundColor(.yellow)
                                                }
                                                
                                               
                                            }
                                            
                                            Text(b.author)
                                            
                                            Image(b.bookCoverImage)
                                                .resizable()
                                                .scaledToFill()
                                                .clipped()
                                                .cornerRadius(8)
                                        }
                                        .padding()
                                    }.frame(width: geo.size.width - 30)
                                    .cornerRadius(10)
                                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.2), radius: 10, x: -5, y: 10)
                                    
                                    
                                }) .buttonStyle(PlainButtonStyle())
                                
                                
                                
                               
                            }
                        }
                        
                    }
                    
                } .navigationBarTitle("My Library")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookifyHomeView()
            .environmentObject(BookifyModel())
    }
}

//
//  RatingPageView.swift
//  Bookify
//
//  Created by Lucky Osunbiyi on 2021-06-27.
//

import SwiftUI

struct RatingPageView: View {
    
    var books:Bookify
    @State var selectedRatings = 3
    @State var read = false
    
    var body: some View {
       
        NavigationView {
            VStack(spacing: 25) {
                Text("Read Now!")
                    .font(.largeTitle)
                
                Image(books.bookCoverImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                
                Text("Mark for Later!")
                    .bold()
                
                Button(action: {
                    
                    if (read == false) {
                        read = true
                    } else if (read == true) {
                        read = false
                    }
                    
                    books.readLater = read
                    
                }, label: {
                    
                    if (read == false) {
                        Image(systemName: "star")
                              .foregroundColor(.yellow)
                    } else if ((read == true)) {
                        Image(systemName: "star.fill")
                              .foregroundColor(.yellow)
                    }
                    
                })
                
                
                Text("Rate Amazing Words")
                    .bold()
                
                Picker("Ratings", selection: $selectedRatings) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                } .pickerStyle(SegmentedPickerStyle())
                .frame(width: 250)
                
            }
            .navigationBarTitle(books.bookName)
        }
    }
}

struct RatingPageView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = BookifyModel()
        
        RatingPageView(books: model.books[1])
    }
}

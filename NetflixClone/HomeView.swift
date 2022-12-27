//
//  HomeView.swift
//  NetflixClone
//
//  Created by Abdoulaye Diallo on 12/27/22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            //main VStack
            ScrollView(showsIndicators: true) {
                LazyVStack {
                    ForEach(viewModel.allCategories, id:\.self){ category in
                        VStack {
                            HStack{
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(viewModel.getMovie(for: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

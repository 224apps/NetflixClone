//
//  StandardHomeMovie.swift
//  NetflixClone
//
//  Created by Abdoulaye Diallo on 12/27/22.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    //MARK: - Properties
    var movie: Movie
    
    //MARK: - Body
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: movie1)
            .frame(width: 200 , height: 300)
    }
}

//
//  AllMovies.swift
//  MovieList
//
//  Created by 陳正昇 on 2016/3/26.
//  Copyright © 2016年 Link Chen. All rights reserved.
//

import Foundation

class AllMovies {
    
    var arrayMovies: [Movie] = []
    
    init() {
        
        let movie1:Movie = Movie()
        movie1.movieCoverImage = "movie1"
        movie1.movieTitle = "Batman v Superman: Dawn of Justice"
        movie1.movieReleaseDate = "25 March 2016"
        movie1.movieDescription = "Fearing the actions of Superman are left unchecked, Batman takes on the man of steel, while the world wrestles with what kind of a hero it really needs. With Batman and Superman fighting each other, a new threat, Doomsday, is created by Lex Luthor. It's up to Superman and Batman to set aside their differences along with Wonder Woman to stop Lex Luthor and Doomsday from destroying Metropolis."
        
        let movie2:Movie = Movie()
        movie2.movieCoverImage = "movie2"
        movie2.movieTitle = "Zootopia"
        movie2.movieReleaseDate = "26 February 2016"
        movie2.movieDescription = "In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy."
        
        let movie3:Movie = Movie()
        movie3.movieCoverImage = "movie3"
        movie3.movieTitle = "Star Wars: Episode VII - The Force Awakens"
        movie3.movieReleaseDate = "17 December 2015"
        movie3.movieDescription = "Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance."

        let movie4:Movie = Movie()
        movie4.movieCoverImage = "movie4"
        movie4.movieTitle = "Mad Max: Fury Road"
        movie4.movieReleaseDate = "15 May 2015"
        movie4.movieDescription = "A woman rebels against a tyrannical ruler in postapocalyptic Australia in search for her home-land with the help of a group of female prisoners, a psychotic worshipper, and a drifter named Max."
        
        arrayMovies = [movie1, movie2, movie3, movie4]
    
    }
    
}
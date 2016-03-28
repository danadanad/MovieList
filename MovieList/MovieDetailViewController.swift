//
//  MovieDetailViewController.swift
//  MovieList
//
//  Created by 陳正昇 on 2016/3/27.
//  Copyright © 2016年 Link Chen. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var imageViewCover: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelReleaseDate: UILabel!
    @IBOutlet weak var textViewDescription: UITextView!
    
    var movieIndex = 0
    var movies:AllMovies = AllMovies()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imageViewCover.image = UIImage(named: movies.arrayMovies[movieIndex].movieCoverImage!)
        self.labelTitle.text = movies.arrayMovies[movieIndex].movieTitle
        self.labelReleaseDate.text = movies.arrayMovies[movieIndex].movieReleaseDate
        self.textViewDescription.text = movies.arrayMovies[movieIndex].movieDescription
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

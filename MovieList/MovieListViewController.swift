//
//  MovieListViewController.swift
//  MovieList
//
//  Created by 陳正昇 on 2016/3/26.
//  Copyright © 2016年 Link Chen. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let movies:AllMovies = AllMovies()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.arrayMovies.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("movieCell") as! MovieListTableViewCell
        
        cell.imageViewCover.image = UIImage(named: movies.arrayMovies[indexPath.row].movieCoverImage!)
        cell.labelTitle.text = movies.arrayMovies[indexPath.row].movieTitle
        cell.labelReleaseDate.text = movies.arrayMovies[indexPath.row].movieReleaseDate
        cell.textViewDescription.text = movies.arrayMovies[indexPath.row].movieDescription
        
        cell.buttonReadMore.tag = indexPath.row
        cell.buttonReadMore.addTarget(self, action: "goToDetail:", forControlEvents: .TouchUpInside)
        
        return cell
    }
    
    func goToDetail(button: UIButton) {
        performSegueWithIdentifier("showMovieDetail", sender: button)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let button = sender as! UIButton
        let destnationVC = segue.destinationViewController as! MovieDetailViewController
        
        destnationVC.movieIndex = button.tag
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

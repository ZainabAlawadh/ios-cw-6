//
//  movieDetailsVC.swift
//  Classwork6
//
//  Created by Mohammed on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class movieDetailsVC: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieRatingView: UILabel!
    @IBOutlet weak var movieRatedLabel: UILabel!
    @IBOutlet weak var movieRatedView: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var releaseDateView: UILabel!
    
    @IBOutlet weak var actorImageView1: UIImageView!
    @IBOutlet weak var actorLabel1: UILabel!
    @IBOutlet weak var actorImageView2: UIImageView!
    @IBOutlet weak var actorLabel2: UILabel!
    @IBOutlet weak var actorImageView3: UIImageView!
    @IBOutlet weak var actorLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
    }
        
        func setMovieDetails(){
            movieImageView.image = UIImage(named: selectedMovie.movieName)
            movieRatingView.text = "\(selectedMovie.rating)"
            movieRatedLabel.text = selectedMovie.pgRating
            releaseDateLabel.text = "\(selectedMovie.movieReleaseDate)"
            actorImageView1.image = UIImage(named: selectedMovie.actors[0])
            actorImageView2.image = UIImage(named: selectedMovie.actors[1])
            actorImageView3.image = UIImage(named: selectedMovie.actors[2])
            actorLabel1.text = selectedMovie.actors[0]
             actorLabel2.text = selectedMovie.actors[1]
             actorLabel3.text = selectedMovie.actors[2]
        }
        func configureUI (){
            movieRatedView.layer.cornerRadius = 12
             movieRatingView.layer.cornerRadius = 12
             releaseDateView.layer.cornerRadius = 12
        }
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



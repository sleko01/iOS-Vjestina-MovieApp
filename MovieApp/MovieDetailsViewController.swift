//
//  MovieDetailsViewController.swift
//  MovieApp
//
//  Created by Sven Leko on 29.03.2022..
//
import SwiftUI
import UIKit
import SnapKit
import Foundation

class MovieDetailsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //view.clipsToBounds = true
        
        let imageView = UIImageView(image: UIImage(named: "drugidan3.jpeg"))
        imageView.contentMode = .scaleAspectFill
        imageView.frame = CGRect(x: 0, y: -20, width: self.view.frame.width, height: self.view.frame.height / 2)
        view.addSubview(imageView)
        
        
        //let percentage = UILabel(frame:CGRect(x: 20, y: super.view.frame.height / 4, width: 100, height: 21))
        let percentage = UILabel()
        percentage.textColor = .white
        percentage.font = UIFont.boldSystemFont(ofSize: 25)
        percentage.text = "76%"
        imageView.addSubview(percentage)
        percentage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            percentage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            percentage.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
        ])
        
        //let userScoreText = UILabel(frame:CGRect(x: 70, y: super.view.frame.height / 4 + 2, width: 100, height: 21))
        let userScoreText = UILabel()
        userScoreText.textColor = .white
        userScoreText.font = UIFont.boldSystemFont(ofSize: 15)
        userScoreText.text = "User Score"
        imageView.addSubview(userScoreText)
        userScoreText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userScoreText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75),
            userScoreText.topAnchor.constraint(equalTo: view.topAnchor, constant: 158)
        ])
        
        
        //let movieName = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 4 + 40, width: 250, height: 21))
        let movieName = UILabel()
        movieName.textColor = .white
        movieName.font = UIFont.boldSystemFont(ofSize: 30)
        movieName.textAlignment = .left
        movieName.text = "Iron man"
        imageView.addSubview(movieName)
        movieName.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            movieName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            movieName.topAnchor.constraint(equalTo: view.topAnchor, constant: 195)
        ])
        
        
        let releaseYear = UILabel()
        releaseYear.textColor = .white
        releaseYear.textAlignment = .left
        releaseYear.text = "(2008)"
        releaseYear.font = UIFont(name: releaseYear.font.fontName, size: 28)
        imageView.addSubview(releaseYear)
        releaseYear.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            releaseYear.leadingAnchor.constraint(equalTo: movieName.trailingAnchor, constant: 2),
            releaseYear.topAnchor.constraint(equalTo: view.topAnchor, constant: 198)
        ])
        
        //let releaseDate = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 4 + 70, width: 200, height: 21))
        let releaseDate = UILabel()
        releaseDate.font = UIFont(name: movieName.font.fontName, size: 17)
        releaseDate.textColor = .white
        releaseDate.text = "05/02/2008 (US)"
        imageView.addSubview(releaseDate)
        releaseDate.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            releaseDate.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            releaseDate.topAnchor.constraint(equalTo: view.topAnchor, constant: 233)
        ])
        
        let descriptionOfFilm = UILabel()
        imageView.addSubview(descriptionOfFilm)
        descriptionOfFilm.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionOfFilm.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descriptionOfFilm.topAnchor.constraint(equalTo: view.topAnchor, constant: 255)
        ])
        descriptionOfFilm.font = UIFont(name: movieName.font.fontName, size: 15)
        descriptionOfFilm.textColor = .white
        descriptionOfFilm.text = "Action, Science Fiction, Adventure"
        //imageView.addSubview(descriptionOfFilm)
        
        let lengthOfMovie = UILabel()
        lengthOfMovie.textColor = .white
        lengthOfMovie.textAlignment = .left
        lengthOfMovie.text = "2h 6m"
        lengthOfMovie.font = UIFont.boldSystemFont(ofSize: 17)
        imageView.addSubview(lengthOfMovie)
        lengthOfMovie.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            lengthOfMovie.leadingAnchor.constraint(equalTo: descriptionOfFilm.trailingAnchor, constant: 2),
            lengthOfMovie.topAnchor.constraint(equalTo: view.topAnchor, constant: 253)
        ])
        
        //let favouritesStar = UIImageView(image: UIImage(systemName: "drugidan2.png"))
        let favouritesStar = UIImageView(image: UIImage(named: "favorites.svg"))
        imageView.addSubview(favouritesStar)
        favouritesStar.translatesAutoresizingMaskIntoConstraints = false
        //favouritesStar.contentMode = .scaleAspectFill
        NSLayoutConstraint.activate([
            favouritesStar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            favouritesStar.topAnchor.constraint(equalTo: descriptionOfFilm.bottomAnchor, constant: 20),
            favouritesStar.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
            favouritesStar.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        
        
        let lowerView = UIView(frame: CGRect(x: 0, y: self.view.frame.height/2, width: self.view.frame.width, height: self.view.frame.height / 2))
        
        
        view.addSubview(lowerView)
      
        //let overview = UILabel(frame: CGRect(x: 10, y: -95, width: self.view.frame.width, height: self.view.frame.height * 0.3))
        let overview = UILabel()
        overview.textAlignment = .left
        overview.textColor = UIColor(red: 0.10, green: 0.10, blue: 0.44, alpha: 1.00)
        overview.font = UIFont.boldSystemFont(ofSize: 25)
        overview.text = "Overview"
        lowerView.addSubview(overview)
        overview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            overview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            overview.topAnchor.constraint(equalTo: lowerView.topAnchor, constant: 5)
        ])
        
        //let overviewText = UILabel(frame: CGRect(x: 10, y: 0, width: self.view.frame.width * 0.9, height: self.view.frame.height * 0.2))
        let overviewText = UILabel()
        overviewText.font = UIFont(name: overview.font.fontName, size: 17)
        overviewText.textAlignment = .left
        overviewText.textColor = .black
        overviewText.text = "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil."
        overviewText.lineBreakMode = .byWordWrapping
        overviewText.numberOfLines = 0
        

        lowerView.addSubview(overviewText)
        
        overviewText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            overviewText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            overviewText.topAnchor.constraint(equalTo: lowerView.topAnchor, constant: 50),
            overviewText.trailingAnchor.constraint(equalTo: lowerView.trailingAnchor, constant: -30)
        ])
        
        //let creator1 = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 5, width: self.view.frame.width, height: 21))
        let creator1 = UILabel()
        creator1.textColor = .black
        creator1.textAlignment = .left
        creator1.font = UIFont.boldSystemFont(ofSize: 17)
        creator1.text = "Don Heck"
        lowerView.addSubview(creator1)
        creator1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            creator1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            creator1.topAnchor.constraint(equalTo: overviewText.bottomAnchor, constant: 20)
        ])
        
        //let creator1Title = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 5 + 20, width: self.view.frame.width, height: 21))
        let creator1Title = UILabel()
        creator1Title.font = UIFont(name: creator1Title.font.fontName, size: 17)
        creator1Title.textColor = .black
        creator1Title.textAlignment = .left
        creator1Title.text = "Characters"
        lowerView.addSubview(creator1Title)
        creator1Title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            creator1Title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            creator1Title.topAnchor.constraint(equalTo: creator1.bottomAnchor, constant: 5)
        ])
        
        //let creator2 = UILabel(frame:CGRect(x: 0, y: super.view.frame.height / 5, width: self.view.frame.width, height: 21))
        let creator2 = UILabel()
        creator2.textColor = .black
        creator2.text = "Jack Kirby"
        creator2.font = UIFont.boldSystemFont(ofSize: 17)
        creator2.textAlignment = .left
        lowerView.addSubview(creator2)
        
        creator2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //creator2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            creator2.topAnchor.constraint(equalTo: overviewText.bottomAnchor, constant: 20),
            creator2.centerXAnchor.constraint(equalTo: lowerView.centerXAnchor)
        ])
        
        //let creator2Title = UILabel(frame:CGRect(x: 0, y: super.view.frame.height / 5 + 20, width: self.view.frame.width, height: 21))
        let creator2Title = UILabel()
        creator2Title.font = UIFont(name: creator2Title.font.fontName, size: 17)
        creator2Title.textColor = .black
        creator2Title.textAlignment = .left
        creator2Title.text = "Characters"
        lowerView.addSubview(creator2Title)
        
        creator2Title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            creator2Title.topAnchor.constraint(equalTo: creator2.bottomAnchor, constant: 5),
            creator2Title.centerXAnchor.constraint(equalTo: lowerView.centerXAnchor)
        ])
        
        //let creator3 = UILabel(frame:CGRect(x: 0, y: super.view.frame.height / 5, width: self.view.frame.width - 20, height: 21))
        let creator3 = UILabel()
        creator3.textColor = .black
        creator3.text = "Jon Favreau"
        creator3.font = UIFont.boldSystemFont(ofSize: 17)
        creator3.textAlignment = .left
        lowerView.addSubview(creator3)
        creator3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            creator3.topAnchor.constraint(equalTo: overviewText.bottomAnchor, constant: 20),
            creator3.trailingAnchor.constraint(equalTo: lowerView.trailingAnchor, constant: -10)
        ])
        
        //let creator3Title = UILabel(frame:CGRect(x: 0, y: super.view.frame.height / 5 + 20, width: self.view.frame.width - 20, height: 21))
        let creator3Title = UILabel()
        creator3Title.textAlignment = .left
        creator3Title.font = UIFont(name: creator3Title.font.fontName, size: 17)
        creator3Title.textColor = .black
        creator3Title.text = "Director"
        lowerView.addSubview(creator3Title)
        creator3Title.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            creator3Title.topAnchor.constraint(equalTo: creator3.bottomAnchor, constant: 5),
            creator3Title.trailingAnchor.constraint(equalTo: lowerView.trailingAnchor, constant: -10)
        ])
    
        
        //ovdje pocinje drugi red ljudi koji su radili na filmu
        
        
        //let creator4 = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 5 + 60, width: self.view.frame.width, height: 21))
        
        let creator4 = UILabel()
        creator4.textColor = .black
        creator4.textAlignment = .left
        creator4.font = UIFont.boldSystemFont(ofSize: 17)
        creator4.text = "Don Heck"
        lowerView.addSubview(creator4)
        creator4.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            creator4.topAnchor.constraint(equalTo: creator1Title.bottomAnchor, constant: 20),
            creator4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])
        
        
        //let creator4Title = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 5 + 80, width: self.view.frame.width, height: 21))
        let creator4Title = UILabel()
        creator4Title.font = UIFont(name: creator1Title.font.fontName, size: 17)
        creator4Title.textColor = .black
        creator4Title.textAlignment = .left
        creator4Title.text = "Screenplay"
        lowerView.addSubview(creator4Title)
        creator4Title.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            creator4Title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            creator4Title.topAnchor.constraint(equalTo: creator4.bottomAnchor, constant: 5)
        ])

        //let creator5 = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 5 + 60, width: self.view.frame.width - 15, height: 21))
        let creator5 = UILabel()
        creator5.textColor = .black
        creator5.text = "Jack Marcum"
        creator5.font = UIFont.boldSystemFont(ofSize: 17)
        creator5.textAlignment = .center
        lowerView.addSubview(creator5)
        creator5.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            creator5.topAnchor.constraint(equalTo: creator2Title.bottomAnchor, constant: 20),
            creator5.centerXAnchor.constraint(equalTo: lowerView.centerXAnchor)
        ])
        
        
        //let creator5Title = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 5 + 80, width: self.view.frame.width - 15, height: 21))
        let creator5Title = UILabel()
        creator5Title.textAlignment = .center
        creator5Title.font = UIFont(name: creator4Title.font.fontName, size: 17)
        creator5Title.textColor = .black
        creator5Title.text = "Screenplay"
        lowerView.addSubview(creator5Title)
        creator5Title.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            creator5Title.topAnchor.constraint(equalTo: creator5.bottomAnchor, constant: 5),
            creator5Title.centerXAnchor.constraint(equalTo: lowerView.centerXAnchor)
        ])
        
        //let creator6 = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 5 + 60, width: self.view.frame.width - 20, height: 21))
        let creator6 = UILabel()
        creator6.textColor = .black
        creator6.textAlignment = .right
        creator6.text = "Matt Holloway"
        creator6.font = UIFont.boldSystemFont(ofSize: 17)
        lowerView.addSubview(creator6)
        creator6.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            creator6.topAnchor.constraint(equalTo: creator3Title.bottomAnchor, constant: 20),
            creator6.trailingAnchor.constraint(equalTo: lowerView.trailingAnchor, constant: -10)
        ])
        
        //let creator6Title = UILabel(frame:CGRect(x: 10, y: super.view.frame.height / 5 + 80, width: self.view.frame.width - 20, height: 21))
        let creator6Title = UILabel()
        creator6Title.font = UIFont(name: creator6Title.font.fontName, size: 17)
        creator6Title.textColor = .black
        creator6Title.textAlignment = .right
        creator6Title.text = "Screenplay"
        lowerView.addSubview(creator6Title)
        creator6Title.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            creator6Title.topAnchor.constraint(equalTo: creator6.bottomAnchor, constant: 5),
            creator6Title.trailingAnchor.constraint(equalTo: lowerView.trailingAnchor, constant: -10)
        ])
    }
    
    
    
    
}


//
//  ViewController.swift
//  SuperQuizGame
//
//  Created by User on 6/6/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    private let contentView = UIView()
    private let logoView = UIImageView()
    private let buttonView = UIView()
    private var gameButtons = [RoundedButton]()
    private let scoreView = UIView()
    private let titleLabel = UILabel()
    private let recentScoreLabel = UILabel()
    private let highScoreLabel = UILabel()
    
    private let titles = ["Multiple Choice", "Image Quiz", "Right or wrong", "Emoji Riddle"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.tintColor = UIColor.white
        view.backgroundColor = UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1.0)
        layoutView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    func layoutView() {
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contentView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoView)
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonView)
        
        for (index, title) in titles.enumerated() {
            let button = RoundedButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            buttonView.addSubview(button)
            button.backgroundColor = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
            button.setTitle(title, for: .normal)
            button.tag = index
            gameButtons.append(button)
        }
        
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(scoreView)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        recentScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        highScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreView.addSubview(titleLabel)
        scoreView.addSubview(recentScoreLabel)
        scoreView.addSubview(highScoreLabel)
        
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        titleLabel.textColor = UIColor.white
        recentScoreLabel.font = UIFont.boldSystemFont(ofSize: 20)
        recentScoreLabel.textColor = UIColor.white
        highScoreLabel.font = UIFont.boldSystemFont(ofSize: 20)
        highScoreLabel.textColor = UIColor.white
        
        titleLabel.text = "Multiple choice"
        recentScoreLabel.text = "Recent: 0"
        highScoreLabel.text = "Highscore: 0"
        
        let constraints = [
            contentView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8.0),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            logoView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20.0),
            logoView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.6),
            logoView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            logoView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.2),
        
        ]
    }
}


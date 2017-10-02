//
//  ViewController.swift
//  Swift4Autolayout
//
//  Created by Nyghtwel on 10/2/17.
//  Copyright © 2017 Nyghtwel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Testing Testing Testing header here!", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\n\nTesting, testing, testing, this should be smaller text view", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 13), NSAttributedStringKey.foregroundColor: UIColor.gray]))
        
        textView.attributedText = attributedText
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    private func setupLayout() {
        let topImageContainer = UIView()
        view.addSubview(topImageContainer)
        
        // enable auto layout for topImageContainer
        topImageContainer.translatesAutoresizingMaskIntoConstraints = false
        topImageContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        topImageContainer.addSubview(bearImageView)
        
        // enable auto layout for bearImageView
        bearImageView.translatesAutoresizingMaskIntoConstraints = false
        bearImageView.centerXAnchor.constraint(equalTo: topImageContainer.centerXAnchor).isActive = true
        bearImageView.centerYAnchor.constraint(equalTo: topImageContainer.centerYAnchor).isActive = true
        bearImageView.heightAnchor.constraint(equalTo: topImageContainer.heightAnchor, multiplier: 0.5).isActive = true
        
        view.addSubview(descriptionTextView)
        
        // enable autolayout for descriptionTextView
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainer.bottomAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        
    }
    
}


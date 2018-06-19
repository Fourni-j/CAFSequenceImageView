//
//  ViewController.swift
//  CAFSequenceImageView
//
//  Created by fourni-j on 06/19/2018.
//  Copyright (c) 2018 fourni-j. All rights reserved.
//

import UIKit
import CAFSequenceImageView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = SequenceImageView(images: [#imageLiteral(resourceName: "about.pdf"), #imageLiteral(resourceName: "pro.pdf"), #imageLiteral(resourceName: "rate.pdf"), #imageLiteral(resourceName: "thanks.pdf")], interval: 0.25)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }

}


//
//  ViewController.swift
//  TCProgressBarExample
//
//  Created by Tal Cohen on 08/08/2017.
//  Copyright © 2017 Tal Cohen. All rights reserved.
//

import UIKit
import TCProgressBar

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let progressBar = TCProgressBar(frame: CGRect(x: 120,
                                                      y: 300,
                                                      width: 170,
                                                      height: 30))
        progressBar.outlineColor = .black
        progressBar.outlineWidth = 2
        progressBar.spacing = 4
        progressBar.progressColor = .darkGray
        progressBar.backgroundColor = .lightGray
        progressBar.value = 0.7
        
        self.view.addSubview(progressBar)
    }

}


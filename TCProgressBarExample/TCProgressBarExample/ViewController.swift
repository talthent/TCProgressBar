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

    @IBOutlet weak var progressBar: TCProgressBar!
    
    override func viewDidAppear(_ animated: Bool) {
        self.progressBar.value = 1
    }

}


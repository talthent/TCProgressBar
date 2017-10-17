//
//  TCProgressBar.swift
//  GlanceFashion
//
//  Created by Tal Cohen on 07/08/2017.
//  Copyright © 2017 Glance Fashion. All rights reserved.
//

import UIKit

@IBDesignable open class TCProgressBar: UIView {
    
    private weak var progress : UIView!
    
    //MARK: - INSPECTABLE VARIABLES
    @IBInspectable open var roundedCorners : Bool = true {
        didSet {
            self.updateUI()
        }
    }
    
    @IBInspectable open var spacing : CGFloat = 2 {
        didSet {
            self.spacing = max(0, spacing)
            self.updateUI()
        }
    }
    
    @IBInspectable open var outlineWidth : CGFloat = 2 {
        didSet {
            self.outlineWidth = max(0, outlineWidth)
            self.updateUI()
        }
    }
    
    @IBInspectable open var outlineColor : UIColor = .white {
        didSet {
            self.updateUI()
        }
    }
    
    @IBInspectable open var progressColor : UIColor = .white {
        didSet {
            self.updateUI()
        }
    }
    
    /**
     Sets the value of the progress bar in a range of 0.0 to 1.0.
     */
    @IBInspectable open var value : CGFloat = 0 {
        didSet {
            self.value = max(0, min(value, 1))
            self.updateUI()
        }
    }
    
    //MARK: - INITIALIZERS
    init() {
        fatalError("Should call init(frame:) or init(coder:)")
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    //
    open override func layoutSubviews() {
        super.layoutSubviews()
        self.updateUI()
    }
    
    internal func commonInit() {
        self.addProgress()
        self.updateUI()
    }
    
    private func addProgress() {
        let progress = UIView()
        progress.translatesAutoresizingMaskIntoConstraints = false
        progress.backgroundColor = self.progressColor
        self.addSubview(progress)
        self.progress = progress
    }
    
    private var progressConstraints = [NSLayoutConstraint]()
    
    private func updateUI() {
        self.removeConstraints(self.progressConstraints)
        self.progressConstraints = [
            self.progress.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: self.outlineWidth + self.spacing),
            self.progress.widthAnchor.constraint(greaterThanOrEqualTo: self.widthAnchor, multiplier: self.value, constant: -(self.outlineWidth * 2 + self.spacing * 2)),
            self.progress.topAnchor.constraint(equalTo: self.topAnchor, constant: self.outlineWidth + self.spacing),
            self.progress.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -(self.outlineWidth + self.spacing))
        ]
        NSLayoutConstraint.activate(progressConstraints)
        
        self.layer.cornerRadius = self.roundedCorners ? self.frame.height / 2 : 0
        self.progress.layer.cornerRadius = self.roundedCorners ? self.progress.frame.height / 2 : 0
        self.progress.backgroundColor = self.progressColor
        self.layer.borderWidth = self.outlineWidth
        self.layer.borderColor = self.outlineColor.cgColor
    }
    
}

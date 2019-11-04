//
//  ViewController.swift
//  AutolayoutPractice
//
//  Created by RC-Mac-Manish on 04/11/19.
//  Copyright © 2019 rarecrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // do not use computed property for views
    private var redView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRedView()
    }

}

extension ViewController {
    
    private func setupRedView() {
        self.redView.backgroundColor = .red
        
        self.redView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.redView)
        
        // Height more for iPad
        var heightConstraint: NSLayoutConstraint
        if self.view.traitCollection.isIpad {
             heightConstraint = self.redView.heightAnchor.constraint(equalToConstant: 250)
        } else {
            heightConstraint = self.redView.heightAnchor.constraint(equalToConstant: 150)
        }
        
        // Constraint setups
        NSLayoutConstraint.activate([
            self.redView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,
                                              constant: 20),
            self.redView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.redView.widthAnchor.constraint(equalToConstant: 150),
            heightConstraint
        ])
    }
    
    // Invokes on device rotation (iPhone and iPad)
    override func viewWillTransition(to size: CGSize,
                                     with coordinator: UIViewControllerTransitionCoordinator) {
        print("Is iPad \(self.view.traitCollection.isIpad)")
    }
    
    // When orientation changes (only iphone)
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        print("Is iPad \(self.view.traitCollection.isIpad)")
        print("Is iPhone \(self.view.traitCollection.isIphone)")
        
        print("Is Iphone Landscape \(self.view.traitCollection.isIphoneLandscape)")
        print("Is Iphone Portrait \(self.view.traitCollection.isIphonePortrait)")
        
    }
    
}


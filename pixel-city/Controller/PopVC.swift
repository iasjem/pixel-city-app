//
//  PopVC.swift
//  pixel-city
//
//  Created by Jemimah Beryl M. Sai on 26/07/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import UIKit

class PopVC: UIViewController {

    // MARK: IBOutlets
    
    @IBOutlet weak var popImageView: UIImageView!
    
    // MARK: Initializers
    
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    // MARK: View LifeCycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }
}

// MARK: UIGestureRecognizerDelegate

extension PopVC: UIGestureRecognizerDelegate {
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenTapped() {
        dismiss(animated: true, completion: nil)
    }
}

//
//  WellcomeViewController.swift
//  LoginApp
//
//  Created by Светлана Сенаторова on 02.07.2022.
//

import UIKit

class WellcomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    private var gradientLayer: CAGradientLayer!
    var textForLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGradientLayer()
        guard let textForLabel = textForLabel else {
            return
        }
        nameLabel.text = textForLabel + "!"
    }
    
    private func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.purple.cgColor, UIColor.blue.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

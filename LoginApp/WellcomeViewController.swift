//
//  WellcomeViewController.swift
//  LoginApp
//
//  Created by Светлана Сенаторова on 02.07.2022.
//

import UIKit

class WellcomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    let emogi1 = "\u{1F44D}"
    var gradientLayer: CAGradientLayer!
    var textForLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = textForLabel + "! " + "\(emogi1)"
        createGradientLayer()
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
        textForLabel = ""
    }
    
    private func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.orange.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

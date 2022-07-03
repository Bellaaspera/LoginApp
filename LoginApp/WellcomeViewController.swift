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
    
    var textForLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = textForLabel + "! " + "\(emogi1)"
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
        textForLabel = ""
    }
    
}

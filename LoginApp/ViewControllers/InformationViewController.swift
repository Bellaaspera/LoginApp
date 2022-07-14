//
//  InformationViewController.swift
//  LoginApp
//
//  Created by Светлана Сенаторова on 06.07.2022.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    private var gradientLayer: CAGradientLayer!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGradientLayer()
        nameLabel.text = person.name + " " + person.surName
        descriptionLabel.text = person.description
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        moreInfoVC.title = "More Information 🐈"
        moreInfoVC.view.backgroundColor = .orange
        moreInfoVC.person = person
    }
   
    private func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.purple.cgColor, UIColor.blue.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

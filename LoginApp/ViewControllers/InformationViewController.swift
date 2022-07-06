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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        moreInfoVC.title = "More Information"
        moreInfoVC.view.backgroundColor = .green
    }
   
}

//
//  MoreInfoViewController.swift
//  LoginApp
//
//  Created by Светлана Сенаторова on 06.07.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewWillLayoutSubviews() {
        imageView.layer.cornerRadius = imageView.frame.width / 2
    }

}

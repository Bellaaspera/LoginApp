//
//  TabBarController.swift
//  LoginApp
//
//  Created by Светлана Сенаторова on 06.07.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar .standardAppearance = tabBarAppearance
        tabBar .scrollEdgeAppearance = tabBarAppearance
    }
    }

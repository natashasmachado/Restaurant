//
//  MenuTableViewController.swift
//  Restaurant
//
//  Created by Natasha Machado on 2023-05-18.
//

import UIKit
class MenuTableViewController: UIViewController {
    let category: String
    init?(coder: NSCoder, category: String) {
        self.category = category
        super.init(coder: coder)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

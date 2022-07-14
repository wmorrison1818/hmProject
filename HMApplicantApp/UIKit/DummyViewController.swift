//
//  DummyTableViewController.swift
//  HMApplicantApp
//
//  Created by William Morrison on 7/10/22.
//

import Foundation
import UIKit

// TODO: Probably not worth my time to make this an actual table view controller.
// I used a tableViewController because that is the default view that comes with a navigationController.
class DummyTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup back button.
        // TODO: Get custom back button working.
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        let backButtonImage = UIImage(named: "arrow back")
        self.navigationController?.navigationBar.backIndicatorImage = backButtonImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backButtonImage
    }
}

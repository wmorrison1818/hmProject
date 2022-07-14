//
//  ViewController.swift
//  HMApplicantApp
//
//  Created by happyMedium on 7/6/22.
//

import UIKit
import SwiftUI

// TODO: Clean up image table view cell.
// TODO: Handle constraints across views better.
// TODO: Consider creating another cell for demonstrative purposes
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mainUITableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ImageTableViewCell", owner: self, options: nil)?.first as! ImageTableViewCell
        cell.descriptionLabel.text = "Cody James Men's Hamshackle Light Wash Strecked Relaxed Boot Jeans"
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainUITableView.dataSource = self
        self.mainUITableView.delegate = self
    }
    
    // Hide the home indicator.
    // TODO: See if this is a plist option.
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
}


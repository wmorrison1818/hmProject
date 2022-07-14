//
//  ViewController.swift
//  HMApplicantApp
//
//  Created by happyMedium on 7/6/22.
//

import UIKit
import SwiftUI

// TODO: Handle constraints across views better.
class BootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
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


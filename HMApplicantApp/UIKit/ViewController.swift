//
//  ViewController.swift
//  HMApplicantApp
//
//  Created by happyMedium on 7/6/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addContentView()
    }
    
    func addContentView() {
        let contentView: ContentView = ContentView()
        let hostingViewController: UIHostingController = .init(rootView: contentView)
        hostingViewController.view.translatesAutoresizingMaskIntoConstraints = false
        self.addChild(hostingViewController)
        self.view.addSubview(hostingViewController.view)
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: hostingViewController.view.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: hostingViewController.view.trailingAnchor),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: hostingViewController.view.safeAreaLayoutGuide.bottomAnchor),
            view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: hostingViewController.view.safeAreaLayoutGuide.topAnchor)
        ])
    }

}


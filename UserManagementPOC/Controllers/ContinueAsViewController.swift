//
//  ContinueAsViewController.swift
//  UserManagementPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import UIKit
protocol ContinueAsActionProtocol: class {
    
    func didLogin()
}

class ContinueAsViewController: UIViewController {

    weak var actionDelegate: ContinueAsActionProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func goToNext(_ sender: Any) {
        actionDelegate?.didLogin()
    }
}

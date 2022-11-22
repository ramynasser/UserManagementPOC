//
//  HomeViewController.swift
//  UserManagementPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import UIKit
protocol LogoutActionProtocol: class {
    func didLogout()
}

class HomeViewController: UIViewController {
    weak var actionDelegate: LogoutActionProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func logoutAction(_ sender: Any) {
        actionDelegate?.didLogout()
    }

}

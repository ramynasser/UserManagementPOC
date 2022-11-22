//
//  LoginViewController.swift
//  UserManagementPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import UIKit
protocol LoginActionProtocol: class {
    func didLoginSuccess()
}

class LoginViewController: UIViewController {

    weak var actionDelegate: LoginActionProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: Any) {
        actionDelegate?.didLoginSuccess()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

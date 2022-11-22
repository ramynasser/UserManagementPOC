//
//  SplashViewController.swift
//  UserManagementPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import UIKit
protocol SplashActionProtocol: class {
    func didCompleteSplashAnimation()
}

class SplashViewController: UIViewController {
    weak var actionDelegate: SplashActionProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // here i handle action after finishing splash
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            guard let self = self else {
                return
            }
            self.actionDelegate?.didCompleteSplashAnimation()
        }
        
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

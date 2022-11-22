//
//  AppDelegate.swift
//  UserManagementPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    weak var stateManager = KlivvrStateInitializer.shared.stateManager
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        stateManager?.moveTo(InitState.self)
        return true
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        stateManager?.moveTo(InitState.self)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        stateManager?.moveTo(BackgroundState.self)
    }
    
    func setRoot(controller: UIViewController?) {
        window = UIWindow(frame: UIScreen.main.bounds)
        guard let rootVC = controller else {
            print("Root VC not found")
            return
        }
        let rootNC = UINavigationController(rootViewController: rootVC)
        window?.rootViewController = rootNC
        window?.makeKeyAndVisible()
    }
}

let appDelegate = UIApplication.shared.delegate as! AppDelegate

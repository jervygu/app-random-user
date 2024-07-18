//
//  AppDelegate.swift
//  Random_User
//
//  Created by Jervy Umandap on 7/18/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        initializeWindow()
        
        return true
    }
    

    // MARK: - Window Setup
    
    fileprivate func initializeWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        let rootViewController = MainViewController()
        let navigationController = UINavigationController(rootViewController: rootViewController)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }
    
    
}


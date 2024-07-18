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
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        let rootViewController = MainViewController()
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
    
    
}


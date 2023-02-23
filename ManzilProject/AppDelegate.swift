//
//  AppDelegate.swift
//  ManzilProject
//
//  Created by Humoyun Esonaliyev on 23/02/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let loginVC = LoginVC(nibName: "LoginVC", bundle: nil)
        
        window?.rootViewController = loginVC
        
        window?.makeKeyAndVisible()
        
        return true
    }

   


}


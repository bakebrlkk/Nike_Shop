//
//  AppDelegate.swift
//  Nike Shop
//
//  Created by bakebrlk on 07.06.2023.
//

import UIKit
import FirebaseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
    
        var view = UIViewController()
        
        if(!Storage.checkOnbording){
            view = OnBordingView()
            
        }else if(!Storage.checkWelcome){
            view = WelcomeView()
            
        }else{
            view = AuthorizationView()
        }
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: view)
        
        return true
    }   
       
}


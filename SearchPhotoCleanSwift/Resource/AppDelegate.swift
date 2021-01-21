//
//  AppDelegate.swift
//  SearchPhotoCleanSwift
//
//  Created by Panda on 2021/01/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    AppManager.shared.setup()
    
    if #available(iOS 13.0, *) {
      window?.overrideUserInterfaceStyle = .light
    }
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = AppManager.shared.rootController
    window?.backgroundColor = .white
    window?.makeKeyAndVisible()
    return true
  }

}


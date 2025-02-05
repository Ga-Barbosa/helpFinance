//
//  AppDelegate.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 25/09/24.
//

import FirebaseCore
import GoogleSignIn
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let controller = HomeViewController()

        FirebaseApp.configure()

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = createNavigationController(root: controller)
        window?.makeKeyAndVisible()

        return true
    }

    func application(_: UIApplication,
                     open url: URL,
                     options _: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool
    {
        return GIDSignIn.sharedInstance.handle(url)
    }

    func createNavigationController(root: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: root)

        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .black
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        navigationController.navigationBar.standardAppearance = appearance
        navigationController.navigationBar.scrollEdgeAppearance = appearance
        navigationController.navigationBar.prefersLargeTitles = true

        return navigationController
    }
}

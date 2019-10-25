//
//  SceneDelegate.swift
//  PopularMovies
//
//  Created by Radek Pistelak on 25/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let rootViewContrlloler = ViewController()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = scene as? UIWindowScene else { return }

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()

        guard let _ = (scene as? UIWindowScene) else { return }
    }
}


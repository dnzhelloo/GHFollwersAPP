//
//  SceneDelegate.swift
//  GHFollwersAPP
//
//  Created by Deniz on 5/10/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
        configureNavigation()
    }
    
    private func createSearchNC()->UINavigationController{
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    private func createFavoritesNC()->UINavigationController{
        let favoritesVC = FavoritesListVC()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem  = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesVC)
    }
    
    private func configureNavigation(){
        let nav = UINavigationBar.appearance()
        nav.tintColor = .systemGreen
        
    }
    private func createTabBar()->UITabBarController{
        let tabbar = UITabBarController()
        tabbar.tabBar.isTranslucent = false
        tabbar.tabBar.tintColor = .systemGreen
        tabbar.viewControllers = [createSearchNC(),createFavoritesNC()]
        
        return tabbar
    }
}


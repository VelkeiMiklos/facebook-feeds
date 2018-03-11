//
//  CustomTabBarController.swift
//  facebook-feeds
//
//  Created by Velkei Miklós on 2018. 03. 11..
//  Copyright © 2018. NeonatCore. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feedController = FeedController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationController = UINavigationController(rootViewController: feedController)
        //Felirat és ikon
        navigationController.title = "News Feed"
        navigationController.tabBarItem.image = UIImage(named: "news_feed_icon")
        
        let friendRequestsController = FriendRequestsController()
        let secondNavigationController = UINavigationController(rootViewController: friendRequestsController)
        secondNavigationController.title = "Requests"
        secondNavigationController.tabBarItem.image = UIImage(named: "requests_icon")
        
        let messengerVC = UIViewController()
        messengerVC.navigationItem.title = "MESSENGER"
        let messengerNavigationController = UINavigationController(rootViewController: messengerVC)
        messengerNavigationController.title = "Messenger"
        messengerNavigationController.tabBarItem.image = UIImage(named: "messenger_icon")
        
        let notificationsNavController = UINavigationController(rootViewController: UIViewController())
        notificationsNavController.title = "Notifications"
        notificationsNavController.tabBarItem.image = UIImage(named: "globe_icon")
        
        let moreNavController = UINavigationController(rootViewController: UIViewController())
        moreNavController.title = "More"
        moreNavController.tabBarItem.image = UIImage(named: "more_icon")
        
        viewControllers = [navigationController, secondNavigationController, messengerNavigationController, notificationsNavController, moreNavController]
        
        tabBar.isTranslucent = false
        
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: 1000, height: 0.5)
        topBorder.backgroundColor = UIColor.rgb(red: 229, green: 231, blue: 235).cgColor
        
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true
    }
}
















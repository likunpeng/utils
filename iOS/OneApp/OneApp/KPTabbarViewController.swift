//
//  KPTabbarViewController.swift
//  OneApp
//
//  Created by lkp on 2018/8/1.
//  Copyright © 2018 lkp. All rights reserved.
//

import UIKit

class KPTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewController()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupViewController() {
        let titleArray = ["微信","通信录","发现","我"]
        let normalImagesArray = ["tabbar_mainframe.png","tabbar_contacts.png","tabbar_discover.png","tabbar_me.png"]
        let selectedImagesArrar = ["tabbar_mainframeHL.png","tabbar_contactsHL.png","tabbar_discoverHL.png","tabbar_meHL.png"]
        
        let viewControllersArray = [
            TSMessageViewController(nibName: "TSMessageViewController", bundle: nil),
            TSContactsViewController(nibName: "TSContactsViewController", bundle: nil),
            TSDiscoverViewController(nibName: "TSDiscoverViewController", bundle: nil),
            TSMeViewController(nibName: "TSMeViewController", bundle: nil)
        ]
        
        let navigationVCArray = NSMutableArray()
        for (index, controller) in viewControllersArray.enumerated() {
            controller.tabBarItem.title = titleArray[index]
            controller.tabBarItem.image = UIImage(imageLiteralResourceName: normalImagesArray[index])
            controller.tabBarItem.selectedImage = UIImage(imageLiteralResourceName: selectedImagesArrar[index])
            let navigationController = UINavigationController(rootViewController: controller)
            navigationVCArray.add(navigationController)
        }
        self.viewControllers = navigationVCArray.mutableCopy() as! [UINavigationController]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

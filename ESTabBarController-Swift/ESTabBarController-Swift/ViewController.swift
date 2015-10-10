//
//  ViewController.swift
//  ESTabBarController-Swift
//
//  Created by Mohamad Moudallal on 10/10/15.
//  Copyright © 2015 Mohamad Moudallal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let firstViewController: UIViewController = myStoryboard.instantiateViewControllerWithIdentifier("First")
        let secondViewController: UIViewController = myStoryboard.instantiateViewControllerWithIdentifier("Second")
        let thirdViewController: UIViewController = myStoryboard.instantiateViewControllerWithIdentifier("Third")
        let fourthViewController: UIViewController = myStoryboard.instantiateViewControllerWithIdentifier("Fourth")
        let fifthViewController: UIViewController = myStoryboard.instantiateViewControllerWithIdentifier("Fifth")
        
        let tabBarController: ESTabBarController = ESTabBarController(tabIconNames: ["Home", "Search", "Upload", "Email", "Profile"])
        
        self.addChildViewController(tabBarController)
        self.view.addSubview(tabBarController.view)
        //self.presentViewController(tabBarController, animated: false, completion: nil)
        
        tabBarController.view.frame = self.view.bounds
        
        tabBarController.didMoveToParentViewController(self)
        
        tabBarController.selectedColor = UIColor(red: 0.15, green: 0.29, blue: 0.50, alpha: 1.0)
        tabBarController.buttonsBackgroundColor = UIColor(white: 0, alpha: 0)
        
        tabBarController.highlightButtonAtIndex(2)
        
        tabBarController.setViewController(firstViewController, atIndex: 0)
        tabBarController.setViewController(secondViewController, atIndex: 1)
        tabBarController.setViewController(thirdViewController, atIndex: 2)
        tabBarController.setViewController(fourthViewController, atIndex: 3)
        tabBarController.setViewController(fifthViewController, atIndex: 4)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


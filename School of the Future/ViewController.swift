//
//  ViewController.swift
//  School of the Future
//
//  Created by Dale M Keith on 9/1/15.
//  Copyright (c) 2015 Honors 3034. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var logOutButton: UIBarButtonItem!
    @IBOutlet weak var homePageScroll: UIScrollView!
    @IBAction func logOutPress(sender: UIBarButtonItem) {
        
        let alertController = UIAlertController(title: "Are you sure?", message: "Are you sure you want to log out?", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "Log Out", style: .Destructive) { (action) in
            let loggedInKeyConstant = "loggedInKey"
            let loggedInBool = false
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setBool(loggedInBool, forKey: loggedInKeyConstant)
            self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.logOut()
        }
        alertController.addAction(OKAction)
        
        self.presentViewController(alertController, animated: true) {
            // ...
        }
    }
    var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.blackColor()]
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        // Do any additional setup after loading the view, typically from a nib.
        
        let userStateKeyConstant = "userStateKey"
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let userType = defaults.stringForKey(userStateKeyConstant)
        
        if userType == "student" {
            self.navigationItem.setRightBarButtonItems(nil, animated: true)
        }
        
        let firstButton = UIButton(frame: CGRect(x: homePageScroll.frame.origin.x+80, y: homePageScroll.frame.size.height/4, width: 200, height: 200))
        let firstImageName = "academics.png"
        let firstBg = UIImage(named: firstImageName)
        firstButton.setBackgroundImage(firstBg, forState: UIControlState.Normal)
        firstButton.setTitle("Academics", forState: UIControlState.Normal)
        firstButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        firstButton.titleLabel!.font = UIFont.systemFontOfSize(26)
        firstButton.titleEdgeInsets.top = 200
        firstButton.showsTouchWhenHighlighted = true
        firstButton.addTarget(self, action: "buttonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        homePageScroll.addSubview(firstButton)
    
        
        // Set up your custom view hierarchy
        let secondButton = UIButton(frame: CGRect(x: firstButton.frame.origin.x+220, y: homePageScroll.frame.size.height/4, width: 200, height: 200))
        let secondImageName = "calendar.png"
        let secondBg = UIImage(named: secondImageName)
        secondButton.setBackgroundImage(secondBg, forState: UIControlState.Normal)
        secondButton.setTitle("Calendar", forState: UIControlState.Normal)
        secondButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        secondButton.titleLabel!.font = UIFont.systemFontOfSize(26)
        secondButton.titleEdgeInsets.top = 200
        secondButton.showsTouchWhenHighlighted = true
        secondButton.addTarget(self, action: "calPress:", forControlEvents: UIControlEvents.TouchUpInside)
        homePageScroll.addSubview(secondButton)
        
        // Set up your custom view hierarchy
        let thirdButton = UIButton(frame: CGRect(x: secondButton.frame.origin.x+220, y: homePageScroll.frame.size.height/4, width: 200, height: 200))
        let thirdImageName = "chat.png"
        let thirdBg = UIImage(named: thirdImageName)
        thirdButton.setBackgroundImage(thirdBg, forState: UIControlState.Normal)
        thirdButton.setTitle("Talk", forState: UIControlState.Normal)
        thirdButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        thirdButton.titleLabel!.font = UIFont.systemFontOfSize(26)
        thirdButton.titleEdgeInsets.top = 200
        thirdButton.showsTouchWhenHighlighted = true
        thirdButton.addTarget(self, action: "chatPress:", forControlEvents: UIControlEvents.TouchUpInside)
        homePageScroll.addSubview(thirdButton)
        
        // Set up your custom view hierarchy
        let fourthButton = UIButton(frame: CGRect(x: thirdButton.frame.origin.x+220, y: homePageScroll.frame.size.height/4, width: 200, height: 200))
        let fourthImageName = "reports.png"
        let fourthBg = UIImage(named: fourthImageName)
        fourthButton.setBackgroundImage(fourthBg, forState: UIControlState.Normal)
        fourthButton.setTitle("Reports", forState: UIControlState.Normal)
        fourthButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        fourthButton.titleLabel!.font = UIFont.systemFontOfSize(26)
        fourthButton.titleEdgeInsets.top = 200
        fourthButton.showsTouchWhenHighlighted = true
        fourthButton.addTarget(self, action: "reportPress:", forControlEvents: UIControlEvents.TouchUpInside)
        homePageScroll.addSubview(fourthButton)
        
        // Set up the container view to hold your custom view hierarchy
        let containerSize = CGSizeMake(homePageScroll.frame.size.height, 1)
        containerView = UIView(frame: CGRect(origin: CGPointMake(0.0, 0.0), size:containerSize))
        homePageScroll.addSubview(containerView)
        
        // Tell the scroll view the size of the contents
        homePageScroll.contentSize = containerSize;
    }
    
    func buttonPressed(sender: UIButton!) {
        performSegueWithIdentifier("toRead", sender: nil)
    }
    
    func calPress(sender: UIButton!) {
        performSegueWithIdentifier("toCal", sender: nil)
    }
    
    func assignPress(sender: UIButton!) {
        performSegueWithIdentifier("toAssign", sender: nil)
    }
    
    func chatPress(sender: UIButton!) {
        performSegueWithIdentifier("toChat", sender: nil)
    }
    
    func reportPress(sender: UIButton!) {
        performSegueWithIdentifier("toReports", sender: nil)
    }
    
    func activityPress(sender: UIButton!) {
        performSegueWithIdentifier("toAct", sender: nil)
    }
    
    func extracurrPress(sender: UIButton!) {
        performSegueWithIdentifier("toExtra", sender: nil)
    }
    
    func messagePress(sender: UIButton!) {
        performSegueWithIdentifier("toMessages", sender: nil)
    }
    
    func moneyPressed(sender: UIButton!) {
        performSegueWithIdentifier("toFinance", sender: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.blackColor()]
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
    }
    
    override func viewDidAppear(animated: Bool) {
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.blackColor()]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.Default
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Landscape
    }


}


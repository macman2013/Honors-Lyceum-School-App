//
//  ReadViewController.swift
//  School of the Future
//
//  Created by Dale M Keith on 9/27/15.
//  Copyright © 2015 Honors 3034. All rights reserved.
//

import UIKit

class ReadViewController: UIViewController {

    @IBOutlet weak var pdfBook: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.barTintColor = UIColor(red: 118/255, green: 44/255, blue: 144/255, alpha: 1)
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.tabBarController?.tabBar.tintColor = UIColor(red: 118/255, green: 44/255, blue: 144/255, alpha: 1)
        //self.navigationController?.navigationItem.titleView?.tintColor = UIColor.whiteColor()
        
        var pdfLoc = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("TYRONE THE HORRIBLE", ofType:"pdf")!) //replace PDF_file with your pdf die name
        var request = NSURLRequest(URL: pdfLoc);
        self.pdfBook.loadRequest(request);
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 118/255, green: 44/255, blue: 144/255, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        self.tabBarController?.navigationItem.title = "Books"
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

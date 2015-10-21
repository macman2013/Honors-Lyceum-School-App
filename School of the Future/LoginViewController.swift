//
//  LoginViewController.swift
//  School of the Future
//
//  Created by Dale M Keith on 10/17/15.
//  Copyright © 2015 Honors 3034. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var userNames:[String] = ["student", "teacher", "parent", "gov", "admin", "pta"]
    var passWords:[String] = ["learn", "teach", "lead", "govern", "run", "assoc"]
    
    let loggedInKeyConstant = "loggedInKey"
    let userStateKeyConstant = "userStateKey"

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passWordField: UITextField!
    
    @IBAction func loginPressed(sender: UIButton) {
        
        var i = 0
        outerLoop : while i <= 5 {
            if userNameField.text == userNames[i]
            {
                if passWordField.text == passWords[i]
                {
                    print("Success!")
                    let loggedInBool = true
                    let defaults = NSUserDefaults.standardUserDefaults()
                    defaults.setObject(userNames[i], forKey: userStateKeyConstant)
                    defaults.setBool(loggedInBool, forKey: loggedInKeyConstant)
                    self.performSegueWithIdentifier("logInSegue", sender: self)
                    break outerLoop
                }
                else {
                    print("Right user, wrong password")
                    let alertView = UIAlertController(title: "Oops!", message: "Your username or password was incorrect. Please try again.", preferredStyle: .Alert)
                    alertView.addAction(UIAlertAction(title: "Dismiss", style: .Default, handler: nil))
                    presentViewController(alertView, animated: true, completion: clearFields)
                    break outerLoop
                }
            }
            else {
                print("Current User ", userNames[i])
                print("Entered User ", userNameField.text)
                print("Wrong Username")
                //print(userNames[i])
                i++
                if (i > 5 ) {
                    print("Out of Users...display error..clear fields")
                let alertView = UIAlertController(title: "Oops!", message: "Your username or password was incorrect. Please try again.", preferredStyle: .Alert)
                alertView.addAction(UIAlertAction(title: "Dismiss", style: .Default, handler: nil))
                presentViewController(alertView, animated: true, completion: clearFields)
                }
            }
        }
    }
    
    func clearFields()
    {
        userNameField.text = nil
        passWordField.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
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

//
//  NavExtension.swift
//  School of the Future
//
//  Created by Dale M Keith on 10/21/15.
//  Copyright © 2015 Honors 3034. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    public override func shouldAutorotate() -> Bool {
        print("HELLO")
        return visibleViewController!.shouldAutorotate()
    }
    
    public override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return (visibleViewController?.supportedInterfaceOrientations())!
    }
}

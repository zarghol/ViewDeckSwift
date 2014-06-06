//
//  CNBaseViewController.swift
//  CNViewDeck
//
//  Created by Clément NONN on 06/06/2014.
//  Copyright (c) 2014 Clément NONN. All rights reserved.
//

import UIKit

class CNBaseViewController: UIViewController {
    var otherViewController:UIViewController?

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        self.otherViewController = nil
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    
    init(secondController:UIViewController){
        self.otherViewController = secondController
        self.otherViewController.transitioningDelegate = CNTransitioningDelegate()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let notifCenter = NSNotificationCenter.defaultCenter()
        //notifCenter.addObserver(self, selector:handleGesture, name:notificationName, object:nil)
        

        // Do any additional setup after loading the view.
    }
    
    func handleGesture(notif:NSNotification){
        self.presentViewController(self.otherViewController, animated:true, completion:nil)
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}

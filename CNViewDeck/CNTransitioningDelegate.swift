//
//  CNTransitioningDelegate.swift
//  CNViewDeck
//
//  Created by Clément NONN on 06/06/2014.
//  Copyright (c) 2014 Clément NONN. All rights reserved.
//

import UIKit

class CNTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    func presentationControllerForPresentedViewController(presented: UIViewController!,
        presentingViewController presenting: UIViewController!,
        sourceViewController source: UIViewController!) -> UIPresentationController!{
            return CNPresentationController(presentingViewController:presenting, presentedViewController:presented)
    }
    
    func animationControllerForPresentedController(presented: UIViewController!,
        presentingController presenting: UIViewController!,
        sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning!{
            return CNAnimatedTransitioning()
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning!{
        return CNAnimatedTransitioning()
    }

    
}

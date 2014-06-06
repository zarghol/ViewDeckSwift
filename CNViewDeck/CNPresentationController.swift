//
//  CNPresentationController.swift
//  CNViewDeck
//
//  Created by Clément NONN on 06/06/2014.
//  Copyright (c) 2014 Clément NONN. All rights reserved.
//

import UIKit

class CNPresentationController: UIPresentationController {
    override func presentationTransitionWillBegin(){
        let containerView = self.containerView
        let presentedViewController = self.presentedViewController
        //a voir
        let dimmingView = presentedViewController.view
        presentedView().frame = containerView.bounds
        presentedView().alpha = 0.0
        containerView.insertSubview(presentedViewController.view, atIndex:0)

        presentedViewController.transitionCoordinator().animateAlongsideTransition(test, completion:nil)
    }
    
    func test(coord : UIViewControllerTransitionCoordinatorContext!){
        presentedView().alpha = 0.0
    }
    
    func test2(coord : UIViewControllerTransitionCoordinatorContext!){
        presentedView().alpha = 1.0
    }
    
    override func dismissalTransitionWillBegin(){
        self.presentedViewController.transitionCoordinator().animateAlongsideTransition(test2, completion:nil)
    }
    
    override func sizeForChildContentContainer(container:UIContentContainer, withParentContainerSize parentSize:CGSize) -> CGSize{
        return CGSizeMake(parentSize.width/3.0, parentSize.height)
    }
    
    override func containerViewWillLayoutSubviews(){
        presentedView().frame = self.containerView.bounds
    }
    
    override func frameOfPresentedViewInContainerView() -> CGRect{
        let presentedViewFrame = CGRectZero
        let containerBounds = self.containerView.bounds
        
        // missing code
        let bla:UIContentContainer = self.presentedView()
        let size:CGSize = self.sizeForChildContentContainer(, withParentContainerSize:containerBounds.size)
        
    }
}

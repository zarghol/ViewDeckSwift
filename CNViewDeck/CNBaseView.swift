//
//  CNBaseView.swift
//  CNViewDeck
//
//  Created by Clément NONN on 06/06/2014.
//  Copyright (c) 2014 Clément NONN. All rights reserved.
//

import UIKit

let notificationName = "GestureRecognized"

@IBDesignable
class CNBaseView: UIView {

    @IBOutlet var gesture : UIScreenEdgePanGestureRecognizer
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
    }

    @IBAction func actionForGesture(sender : UIScreenEdgePanGestureRecognizer) {
        let notifCenter = NSNotificationCenter.defaultCenter()
        notifCenter.postNotificationName(notificationName, object:self)
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }
    */

}

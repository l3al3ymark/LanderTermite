//
//  Lander.swift
//  LanderTermite
//
//  Created by Thitiwich Worathaset on 15/5/2561 BE.
//  Copyright © 2561 Thitiwich Worathaset. All rights reserved.
//

import Foundation
import UIKit

public class LanderTermite {
    
    public init() {
        print("create by Landmark")
    }

    public func callFromTel(tel:String, _ vc: UIViewController) {
    if #available(iOS 11.0, *) {
        guard let url = URL(string: "tel://\(tel)") else { return }
        UIApplication.shared.openURL(url)
    } else {
        // Earlier version of iOS
        let actionSheetController = UIAlertController(title: nil,
                                                      message: tel,
                                                      preferredStyle: .alert)
        
        let cancelActionButton = UIAlertAction(title: "Cancel",
                                               style: .cancel,
                                               handler: nil)
        
        let callActionButton = UIAlertAction(title: "Call",
                                             style: .default,
                                             handler: { (action) in
                                                guard let url = URL(string: "tel://\(tel)") else { return }
                                                UIApplication.shared.openURL(url)
        })
        
        actionSheetController.addAction(cancelActionButton)
        actionSheetController.addAction(callActionButton)
        vc.present(actionSheetController, animated: true, completion: nil)
    }
        
        
      
}

    
    
}

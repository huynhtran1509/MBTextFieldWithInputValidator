//
//  UIViewGetControllerExtension.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

extension UIView{
    func viewController() -> UIViewController? {
        for (var next:UIView? = self.superview!; next != nil; next = next!.superview) {
            let nextResponder = next!.nextResponder()
            if (nextResponder?.isKindOfClass(UIViewController.classForCoder()) != nil) {
                return nextResponder as? UIViewController
            }
        }
        return nil
    }
}

//
//  Font Initialization.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 09/02/22.
//

import UIKit.UIFont

extension UIFont {
   class func getBoldFont(_ fontSize: CGFloat) -> UIFont {
        return UIFont(name: "ProximaNova-Bold", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }

    class func getRegularFont(_ fontSize: CGFloat) -> UIFont {
         return UIFont(name: "ProximaNova-Regular", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
     }
}

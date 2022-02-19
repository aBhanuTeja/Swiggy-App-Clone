//
//  NSTextAttachment+Extension.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 06/02/22.
//

import UIKit.UIImage

extension NSTextAttachment {
    func setImageHeight(height: CGFloat) {
        guard let image = image else { return }
        let ratio = image.size.width / image.size.height
        bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: ratio * height, height: height)
    }
}

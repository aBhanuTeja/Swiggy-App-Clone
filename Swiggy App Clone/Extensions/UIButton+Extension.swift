//
//  UIButton+Extension.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 06/02/22.
//

import UIKit.UIButton

enum ButtonImage {
    case left
    case right
}

extension UIButton {
    func setupButtonWithImage(isImageRightOrLeft: ButtonImage, buttonTitle: String, buttonImage: String, customFont: UIFont, color: UIColor, imageSize: CGFloat) {
        var attributedText = NSMutableAttributedString()

        if isImageRightOrLeft == .right {
            attributedText = NSMutableAttributedString(string: "\(buttonTitle) ", attributes: [NSAttributedString.Key.font: customFont])
        }

        let buttonRightImage = UIImage(systemName: buttonImage)
        let image = NSTextAttachment()
        image.image = buttonRightImage
        image.bounds = CGRect(x: 0, y: (customFont.capHeight - imageSize).rounded() / 2,
                              width: imageSize, height: imageSize)
        image.setImageHeight(height: imageSize)
        let imgString = NSAttributedString(attachment: image)
        attributedText.append(imgString)

        if isImageRightOrLeft == .left {
            attributedText.append(NSAttributedString(string: " \(buttonTitle)", attributes: [NSAttributedString.Key.font: customFont]))
        }
        self.setAttributedTitle(attributedText, for: .normal)
    }
}

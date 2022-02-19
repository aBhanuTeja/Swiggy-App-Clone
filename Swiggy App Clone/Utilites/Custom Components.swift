//
//  Custom Components.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 10/02/22.
//

import UIKit

public class CommonUIView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class CommonLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.adjustsFontForContentSizeCategory = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class CommonStackView: UIStackView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.spacing = 5
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

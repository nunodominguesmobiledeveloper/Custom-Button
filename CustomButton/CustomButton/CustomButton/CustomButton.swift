//
//  CustomButton.swift
//  CustomButton
//
//  Created by Nuno Domingues on 16/07/2019.
//  Copyright © 2019 NDD. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {
    
    //Default Values
    var borderColor: UIColor = .gray
    var borderWidth: CGFloat = 1
    var buttonBackgroundColor: UIColor = UIColor(red: 29/255, green: 169/255, blue: 255/255, alpha: 1)
    var buttonTextColor: UIColor = .white
    var buttonTitleFont: UIFont = UIFont.systemFont(ofSize: 16, weight: .bold)
    
    //Init programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    //Init Programatically
    init(withTitle title: String, frame: CGRect) {
        super.init(frame: frame)
        self.setTitle(title, for: .normal)
        setupButton()
    }
    
    //Init with Storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupButton()
    }
    
    //Assign default Values into Button
    func setupButton() {
        layer.cornerRadius = self.frame.height / 2
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        backgroundColor = buttonBackgroundColor
        setTitleColor(buttonTextColor, for: .normal)
        titleLabel?.font = buttonTitleFont
    }
}

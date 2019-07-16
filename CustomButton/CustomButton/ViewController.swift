//
//  ViewController.swift
//  CustomButton
//
//  Created by Nuno Domingues on 16/07/2019.
//  Copyright © 2019 NDD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    //Custom Button In Storyboard With Title Changed In Attributes Inspector
    @IBOutlet weak var attributesInspectorLabel: UILabel!
    @IBOutlet weak var atributesInspectorButton: CustomButton!
    
    //Custom Button In Storyboard With Title In didSet
    @IBOutlet weak var didSetChangedTitleLabel: UILabel! {
        didSet {
            self.didSetChangedTitleLabel.text = StringDefaults.didSetLabelText
        }
    }
    @IBOutlet weak var didSetChangedTitleButton: CustomButton! {
        didSet {
            self.didSetChangedTitleButton.setTitle(StringDefaults.buttonTitleText, for: .normal)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    //Create button programatically
    func setupView() {
        let viewWidthCenter = self.view.frame.width / 2
        let viewHeightCenter = self.view.frame.height / 2
        
        let customFrame = CGRect(x: viewWidthCenter - UIDefaults.buttonWidthCenter, y: viewHeightCenter - UIDefaults.buttonHeightCenter, width: UIDefaults.buttonWidth, height: UIDefaults.buttonHeight)
        let button: CustomButton = CustomButton(withTitle: StringDefaults.buttonTitleText, frame: customFrame)
        
        self.view.addSubview(button)
    }
}

extension ViewController {
    struct StringDefaults {
        static let didSetLabelText = "Custom Button In Storyboard With Title In didSet"
        static let buttonTitleText = "Done".uppercased()
    }
    
    struct UIDefaults {
        static let buttonWidth: CGFloat = 100
        static let buttonWidthCenter: CGFloat = buttonWidth / 2
        static let buttonHeight: CGFloat = 30
        static let buttonHeightCenter: CGFloat = buttonHeight / 2
    }
}


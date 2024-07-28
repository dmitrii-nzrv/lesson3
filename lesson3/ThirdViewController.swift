//
//  ThirdViewController.swift
//  lesson3
//
//  Created by Dmitrii Nazarov on 28.07.2024.
//

import UIKit

class ThirdViewController: UIViewController {
    
    lazy var viewWidth = view.frame.width
    lazy var viewHeight = view.frame.height
    
    var descrtext: String?
    var nameSurn: String?
    var image: UIImage?
    
    // MARK: UI
    lazy var profileImage: UIImageView = {
        $0.frame.size = CGSize(width: view.bounds.height / 10, height: view.bounds.height / 10)
        $0.frame.origin = CGPoint(x: view.center.x - (view.bounds.height / 10)/2, y: viewHeight/7)
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 25
        
        return $0
    }(UIImageView())
    
    lazy var nameLabel: UILabel = {
         // Автоматический расчет размера лейбла на основе содержимого
       
       
        $0.frame.size = CGSize(width: 111, height: 20)
        $0.frame.origin.y = profileImage.frame.maxY+20
        $0.center.x = view.frame.width/2
        
        return $0
    }(UILabel())
    
    lazy var aboutMeLabel: UILabel = {
        $0.frame = CGRect(x: viewWidth/15 + 10, y: nameLabel.frame.maxY + 30, width: viewWidth/5, height: viewHeight/25)
        
        $0.text = "О себе"
        $0.textColor = .placeholderText
        
        return $0
    }(UILabel())
    
    lazy var aboutMeTextField: UITextView = {
        $0.frame = CGRect(x: viewWidth/15, y: aboutMeLabel.frame.maxY+10, width: viewWidth-(viewWidth/15)*2, height: viewHeight/6)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 15
        $0.backgroundColor = .placeholderText
       
        return $0
    }(UITextView())
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        //title = "hio"
        view.backgroundColor = .white
        
        aboutMeTextField.text = descrtext
        nameLabel.text = nameSurn
        profileImage.image = image
        addSubviews()
    }
    
    
    // MARK: Private methods
    private func addSubviews() {
        view.addSubview(profileImage)
        view.addSubview(nameLabel)
        view.addSubview(aboutMeLabel)
        view.addSubview(aboutMeTextField)
    }
}

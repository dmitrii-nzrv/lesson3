//
//  SecondViewController.swift
//  lesson3
//
//  Created by Dmitrii Nazarov on 28.07.2024.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    lazy var viewWidth = view.frame.width
    lazy var viewHeight = view.frame.height
    
    // MARK: UI
    lazy var nameLabel: UILabel = {
        $0.frame = CGRect(x: viewWidth/15 + 10, y: viewHeight/7, width: viewWidth/5, height: viewHeight/25)
        $0.text = "Имя"
        
        return $0
    }(UILabel())
    
    
    lazy var nameField: UITextField = {
        $0.frame = CGRect(x: viewWidth/15, y: nameLabel.frame.maxY, width: viewWidth-(viewWidth/15)*2, height: viewHeight/17)
        $0.placeholder = "haha"
        $0.backgroundColor = .placeholderText
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 15
        
        return $0
    }(UITextField())
    
    lazy var surnameLabel: UILabel = {
        $0.frame = CGRect(x: viewWidth/15 + 10, y: nameField.frame.maxY+15, width: viewWidth/5, height: viewHeight/25)
        $0.text = "Фамилия"
        
        return $0
    }(UILabel())
    
    lazy var surnameField: UITextField = {
        $0.frame = CGRect(x: viewWidth/15, y: surnameLabel.frame.maxY, width: viewWidth-(viewWidth/15)*2, height: viewHeight/17)
        $0.placeholder = "haha"
        $0.backgroundColor = .placeholderText
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 15
        
        return $0
    }(UITextField())
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        title = "Настройка"
        
        view.backgroundColor = .white
        
        
        addSubviews()
    }
    
    // MARK: Private methods
    private func addSubviews() {
        view.addSubview(nameLabel)
        view.addSubview(nameField)
        view.addSubview(surnameLabel)
        view.addSubview(surnameField)
    }
}

//
//  ViewController.swift
//  lesson3
//
//  Created by Dmitrii Nazarov on 25.07.2024.
//

// протокол создается в том классе который делигирует свои функции

protocol

import UIKit

class MainViewController: UIViewController {

    var descriptionText: String?
    
    
    lazy var viewWidth = view.frame.width
    lazy var viewHeight = view.frame.height
    
    // MARK: UI
    lazy var mainView: UIView = {
        $0.backgroundColor = .placeholderText
        $0.frame = CGRect(x: viewWidth/15, y: viewHeight/7, width: viewWidth-(viewWidth/15)*2, height: viewHeight/7)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 25
        
        return $0
    }(UIView())
    
    lazy var profileImage: UIImageView = {
        $0.image = .profile
        
        $0.frame = CGRect(x: 20, y: mainView.bounds.height/7, width: viewHeight/10, height: viewHeight/10)
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 25
        return $0
    }(UIImageView())
    
    lazy var nameLabel: UILabel = {
        $0.text = "Имя Фамилия"
        $0.frame = CGRect(x: profileImage.frame.maxX + 15, y: mainView.bounds.height/5, width: mainView.bounds.width, height: mainView.bounds.height/4)
        $0.font = .systemFont(ofSize: 18, weight: .bold)
        return $0
    }(UILabel())
    
    lazy var changeButton: UIButton = {
        $0.backgroundColor = .blue
        $0.frame = CGRect(x: profileImage.frame.maxX + 15, y: nameLabel.frame.maxY + 2, width: mainView.bounds.width/2.5, height: mainView.bounds.height/3.5)
        $0.setTitle("Редактировать", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        $0.tintColor = .white
        return $0
    }(UIButton(primaryAction: nextVCAction))
    
    lazy var arrowBtn: UIButton = {
        $0.frame = CGRect(x: mainView.bounds.maxX - mainView.bounds.height/2.3, y: mainView.bounds.height/2 - mainView.bounds.height/4 , width: mainView.bounds.height/2, height: mainView.bounds.height/2)
        
        $0.setImage(.iconArrow.withRenderingMode(.alwaysTemplate), for: .normal)
        $0.tintColor = .black
        
        // 64 - высота
        //
        
        return $0
    } (UIButton(primaryAction: nextVCAction))
    
    lazy var nextVCAction =  UIAction { [weak self] _ in
        
        let secondVC = SecondViewController()
        
        self?.navigationController?.pushViewController(secondVC, animated: true)
        
    }
        
        
    
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Главная"
     
        print(viewWidth)
        print(viewHeight)
        print(mainView.frame.height)
        
        
        addSubviews()
        
    }

    // MARK: Private methods
    private func addSubviews()
    {
        view.addSubview(mainView)
        mainView.addSubview(profileImage)
        mainView.addSubview(nameLabel)
        mainView.addSubview(changeButton)
        mainView.addSubview(arrowBtn)
        
    }
    
    private func setUserData(name: String, surname :String, description :String) {
        nameLabel.text = name + " " + surname
        self.descriptionText = description
        
        
        
    }

}


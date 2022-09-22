//
//  OnboardView.swift
//  Numbers
//
//  Created by Mikhail Chudaev on 21.09.2022.
//

import Foundation
import UIKit

class OnboardingView: UIView {
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    init(labelText: String, imageName: String) {
        descriptionLabel.text = labelText
        imageView.image = UIImage(named: imageName)
        super.init(frame: .zero)
        setupLayout()
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    private func setupLayout() {
        addSubview(descriptionLabel)
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 50),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200),
        ])
    }
    
    private func configureUI() {
        let viewBackgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)
        backgroundColor = viewBackgroundColor
    }
}

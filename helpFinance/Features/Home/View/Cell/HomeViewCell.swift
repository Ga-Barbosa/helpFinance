//
//  HomeViewCell.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 06/02/25.
//

import Foundation
import UIKit

class HomeViewCell: BaseTableViewCell {
    private let surfaceView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let titleLabel: UILabel = {
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 16)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let descriptionLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14)
        view.textColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let iconImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func buildHierarchy() {
        contentView.addSubview(surfaceView)
        surfaceView.addSubview(titleLabel)
        surfaceView.addSubview(descriptionLabel)
        surfaceView.addSubview(iconImageView)
    }
    
    override func setupConstraints() {
        let constraints = [
            /// SurfaceView Constraints
            surfaceView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            surfaceView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            surfaceView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            surfaceView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            /// IconImageView
            iconImageView.leftAnchor.constraint(equalTo: surfaceView.leftAnchor, constant: 16),
            iconImageView.centerYAnchor.constraint(equalTo: surfaceView.centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 24),
            iconImageView.heightAnchor.constraint(equalToConstant: 24),
            
            /// TitleLabel
            titleLabel.topAnchor.constraint(equalTo: surfaceView.topAnchor, constant: 8),
            titleLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 16),
            titleLabel.rightAnchor.constraint(equalTo: surfaceView.rightAnchor, constant: -16),
            
            /// Description
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            descriptionLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor),
            descriptionLabel.rightAnchor.constraint(equalTo: titleLabel.rightAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: surfaceView.bottomAnchor, constant: -8)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    override func configureView() {
        backgroundColor = .black
        contentView.backgroundColor = .black
    }
    
    func configure(item: HomeItem) {
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        iconImageView.image = UIImage(systemName: item.iconNamed)
    }
}

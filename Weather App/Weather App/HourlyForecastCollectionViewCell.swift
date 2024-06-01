//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Elina Torres on 01/06/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "HourlyForecast"
    
    private lazy var hourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.textColor = UIColor.contrastColor
        label.textAlignment = .center
        return label
    }()
    
    private lazy var weatherIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = UIColor.contrastColor
        label.textAlignment = .center
        return label
    }()
    
    private lazy var hourForecastStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [hourLabel, weatherIcon, temperatureLabel])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 4
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.graySoft?.cgColor
        stackView.layer.cornerRadius = 20
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func loadData(time: String?, icon: UIImage?, temp: String?){
        hourLabel.text = time
        weatherIcon.image = icon
        temperatureLabel.text = temp
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        contentView.addSubview(hourForecastStackView)
        
    }
    
    private func setConstraints() {
        hourForecastStackView.setConstraintsToParent(contentView)
        NSLayoutConstraint.activate([
            weatherIcon.heightAnchor.constraint(equalToConstant: 33)
        ])
    }
    
}

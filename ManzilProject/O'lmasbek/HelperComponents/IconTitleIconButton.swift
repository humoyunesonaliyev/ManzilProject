//
//  IconTitleIconButton.swift
//  ManzilProject
//
//  Created by O'lmasbek on 24/02/23.
//

import UIKit

class IconTitleIconButton: UIButton {
    class IconButton: UIButton {

        private let iconImageView1 = UIImageView()
        private let titlLabel = UILabel()
        private let iconImageView2 = UIImageView()

        // Button properties
        var icon1: UIImage? {
            didSet {
                iconImageView1.image = icon1
                setNeedsLayout()
            }
        }

        var title: String? {
            didSet {
                titlLabel.text = title
                setNeedsLayout()
            }
        }

        var icon2: UIImage? {
            didSet {
                iconImageView2.image = icon2
                setNeedsLayout()
            }
        }

        var iconSize: CGFloat = 20 {
            didSet {
                setNeedsLayout()
            }
        }

        var iconTextSpacing: CGFloat = 8 {
            didSet {
                setNeedsLayout()
            }
        }

        // Initialize the button
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupView()
        }

        // Initialize the button
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            setupView()
        }

        // Setup the button subviews
        private func setupView() {
            addSubview(iconImageView1)
            addSubview(titlLabel)
            addSubview(iconImageView2)
        }

        // Layout the button subviews
        override func layoutSubviews() {
            super.layoutSubviews()
            guard let titleLabelText = titlLabel.text, let icon1 = icon1, let icon2 = icon2 else {
                return
            }

            iconImageView1.image = icon1
            iconImageView1.frame = CGRect(x: 0, y: 0, width: iconSize, height: iconSize)
            iconImageView1.center.y = frame.size.height / 2

            iconImageView2.image = icon2
            iconImageView2.frame = CGRect(x: frame.size.width - iconSize, y: 0, width: iconSize, height: iconSize)
            iconImageView2.center.y = frame.size.height / 2

            titlLabel.text = titleLabelText
            titlLabel.sizeToFit()
            let availableWidth = frame.size.width - iconImageView1.frame.size.width - iconImageView2.frame.size.width - iconTextSpacing * 2
            let neededWidth = titlLabel.frame.size.width
            let extraSpacing = max(0, availableWidth - neededWidth) / 2
            titlLabel.frame = CGRect(x: iconImageView1.frame.maxX + iconTextSpacing + extraSpacing, y: 0, width: titlLabel.frame.size.width, height: frame.size.height)
            titlLabel.center.y = frame.size.height / 2
        }
    }
}

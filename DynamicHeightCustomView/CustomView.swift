//
//  CustomView.swift
//  DynamicHeightCustomView
//
//  Created by Satyadev Chauhan on 08/09/20.
//  Copyright © 2020 Satyadev Chauhan. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    
    let textView: UITextView = {
        let t = UITextView()
        t.translatesAutoresizingMaskIntoConstraints = false
        t.isScrollEnabled = false
        t.text = "TextView"
        return t
    }()
    
    let label: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.textAlignment = .center
        l.textColor = .white
        l.backgroundColor = .blue
        l.text = "Label"
        return l
    }()
    
    let stackView: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.axis = .vertical
        s.alignment = .fill
        s.distribution = .fill
        s.spacing = 8
        return s
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews() -> Void {
        
        // Add the stack view as a subview
        addSubview(stackView)
        
        // Add Constraint to stack view all sides with 8 padding.
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0),
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 8.0),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8.0)
        ])
        
        // Add text view and label to stack view
        stackView.addArrangedSubview(textView)
        stackView.addArrangedSubview(label)
    }
    
}

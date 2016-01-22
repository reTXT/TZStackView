//
//  UIStackViewType.swift
//  TZStackView
//
//  Created by loong on 16/1/22.
//  Copyright © 2016年 Tom van Zummeren. All rights reserved.
//

@objc
public protocol UIStackViewType {

    init(arrangedSubviews: [UIView])

    func addArrangedSubview(view: UIView)

    func removeArrangedSubview(view: UIView)

    func insertArrangedSubview(view: UIView, atIndex stackIndex: Int)
}

extension TZStackView: UIStackViewType {}

@available(iOS 9.0, *)
extension UIStackView: UIStackViewType {}

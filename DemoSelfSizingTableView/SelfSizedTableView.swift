//
//  SelfSizedTableView.swift
//  Venue App
//
//  Created by Jahid Hasan Polash on 4/6/18.
//  Copyright © 2018 InfancyIT. All rights reserved.
//  Reference: https://medium.com/@dushyant_db/swift-4-recipe-self-sizing-table-view-2635ac3df8ab

import UIKit

class SelfSizedTableView: UITableView {
    var maxHeight: CGFloat = UIScreen.main.bounds.size.height
    
    override func reloadData() {
        super.reloadData()
        self.invalidateIntrinsicContentSize()
        self.layoutIfNeeded()
    }
    
    override var intrinsicContentSize: CGSize {
        setNeedsLayout()
        layoutIfNeeded()
        let height = min(contentSize.height, maxHeight)
        return CGSize(width: contentSize.width, height: height)
    }
}

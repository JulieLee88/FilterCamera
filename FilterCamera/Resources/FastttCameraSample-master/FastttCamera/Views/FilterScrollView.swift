//
//  FilterScrollView.swift
//  FastttCamera
//
//  Created by Masuhara on 2016/03/11.
//  Copyright © 2016年 net.maushara. All rights reserved.
//

import UIKit


@objc protocol FilterScrollViewDelegate: UIScrollViewDelegate {
    func filterButtonTapped(button: UIButton)
}

class FilterScrollView: UIScrollView {
    
    var images: [UIImage]?
    weak var delegateInterceptor: FilterScrollViewDelegate?
    override var delegate: UIScrollViewDelegate? {
        didSet {
            let castedDelegate = unsafeBitCast(delegate, FilterScrollViewDelegate.self)
            delegateInterceptor = castedDelegate
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.showsHorizontalScrollIndicator = false
        
        var currentX: CGFloat = 0
        images = [UIImage(named: "RetroFilter")!, UIImage(named: "HighContrastFilter")!, UIImage(named: "SepiaFilter")!, UIImage(named: "BWFilter")!, UIImage(named: "RedEyes")!]
        
        if let imageArray = images {
            for var i = 0; i < imageArray.count; i++ {
                let filterButton = UIButton(frame: CGRectMake(currentX + 20, 0, 50, 50))
                let image = imageArray[i]
                filterButton.tag = i
                filterButton.setTitle("", forState: UIControlState.Normal)
                filterButton.setBackgroundImage(image, forState: UIControlState.Normal)
                filterButton.addTarget(self, action: "tapButton:", forControlEvents: .TouchUpInside)
                self.addSubview(filterButton)
                currentX = currentX + 20 + filterButton.bounds.size.width
                self.contentSize = CGSizeMake(currentX + 20, self.bounds.height)
            }
        }
    }
    
    func tapButton(button: UIButton) {
        delegateInterceptor?.filterButtonTapped(button)
    }
}

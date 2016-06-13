//
//  Filter.swift
//  FastttCamera
//
//  Created by Masuhara on 2016/03/10.
//  Copyright © 2016年 net.maushara. All rights reserved.
//

import UIKit

class Filter: NSObject {
    
    enum FastttFilterType {
        case None
        case Retro
        case HighContrast
        case BW
        case Sepia
        case RedEyes
    }

    var filterType: FastttFilterType = .None
    var filterName: String?
    var filterImage: UIImage?
    static let filterTypes: [FastttFilterType] = [.None, .Retro, .HighContrast, .BW, .Sepia, .RedEyes]

    class func filterWithType(filterType: FastttFilterType) -> Filter {
        let imageFilter = Filter()
        imageFilter.filterType = filterType
        imageFilter.filterImage = self.imageForFilterType(filterType)
        imageFilter.filterName = self.nameForFilterType(filterType)
        return imageFilter
    }
    
    func nextFilter() -> Filter {
        return Filter.filterWithType(self.nextFilterType())
    }
    
    func nextFilterType() -> FastttFilterType {
        switch self.filterType {
        case .None:
            self.filterType = .Retro
            break
        case .Retro:
            self.filterType = .HighContrast
            break
        case .HighContrast:
            self.filterType = .Sepia
            break
        case .Sepia:
            self.filterType = .BW
            break
        case .BW:
            self.filterType = .RedEyes
            break
        case .RedEyes:
            self.filterType = .None
            break
        }
        return filterType
    }
    
    class func imageForFilterType(filterType: FastttFilterType) -> UIImage? {
        var lookupImageName: String?
        switch filterType {
        case .Retro:
            lookupImageName = "RetroFilter"
            break
        case .HighContrast:
            lookupImageName = "HighContrastFilter"
            break
        case .Sepia:
            lookupImageName = "SepiaFilter"
            break
        case .BW:
            lookupImageName = "BWFilter"
            break
        case .RedEyes:
            lookupImageName = "RedEyes"
            break
        case .None:
            break
        }
        
        var filterImage: UIImage?
        if lookupImageName?.characters.count > 0 {
            filterImage = UIImage(named: lookupImageName!)
            return filterImage!
        }
        return nil
    }
    
    class func nameForFilterType(filterType: FastttFilterType) -> String {
        var filterName: String?
        switch filterType {
        case .Retro:
            filterName = "Retro"
            break
        case .HighContrast:
            filterName = "High Contrast"
            break
        case .Sepia:
            filterName = "Sepia"
            break
        case .BW:
            filterName = "Black + White"
            break
        case .RedEyes:
            filterName = "RedEyes"
            break
        case .None:
            filterName = "None"
            break
        }
        return filterName!
    }
}

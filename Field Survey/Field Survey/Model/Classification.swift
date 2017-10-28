//
//  Classification.swift
//  Field Survey
//
//  Created by Jake Woratzeck on 10/28/17.
//  Copyright © 2017 Jake Woratzeck. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}

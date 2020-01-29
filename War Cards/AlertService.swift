//
//  AlertService.swift
//  War Cards
//
//  Created by Sridatta Nallamilli on 19/11/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ALertService {
    func alert() -> AlertViewController {
        
        let storyboard = UIStoryboard.init(name: "AlertStoryboard", bundle: .main)
        
        let AlertVC = storyboard.instantiateViewController(identifier: "AlertVC") as! AlertViewController
        
        return AlertVC
    }
}

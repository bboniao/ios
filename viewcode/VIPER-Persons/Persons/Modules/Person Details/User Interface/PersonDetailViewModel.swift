//
//  PersonDetailViewModel.swift
//  MdB
//
//  Created by Sebastian Wramba on 09.10.14.
//  Copyright (c) 2014 Sebastian Wramba. All rights reserved.
//

import Foundation
import UIKit

class PersonDetailViewModel {
    
    var name : String
    var image : UIImage
    var biography : String
    var birthday : String
    
    init(name: String, biography: String, image: UIImage, birthday: String) {
        self.name = name
        self.biography = biography
        self.image = image
        self.birthday = birthday
    }
    
}
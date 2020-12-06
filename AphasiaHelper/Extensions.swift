//
//  Extensions.swift
//  AphasiaHelper
//
//  Created by sunlight on 2020/8/16.
//  Copyright © 2020 CDI. All rights reserved.
//

import Foundation

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}

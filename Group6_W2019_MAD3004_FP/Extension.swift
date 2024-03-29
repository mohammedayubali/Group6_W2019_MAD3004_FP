//
//  Extension.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by Ilyas Deraiya on 2019-02-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

extension String{
    func verifyEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    
    
    func isValidPassword() -> Bool {
        // guard self != nil else { return false }
        
        // at least one uppercase,
        // at least one digit
        // at least one lowercase
        // 8 characters total
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        return passwordTest.evaluate(with: self)
    }
}

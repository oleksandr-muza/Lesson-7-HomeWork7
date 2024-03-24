//
//  Extension.swift
//  Less7HW
//
//  Created by Oleksandr Muza on 13.03.2024.
//

import Foundation

extension UserModel: ProfileData {
    
    var avatarName: String {
        userAvatarName
    }
    
    var firstName: String {
        userFirstName
    }
    
    var lastName: String {
        userLastName
    }
    
    var eMail: String {
        userEmail
    }
    
    var address: String {
        userAdderss
    }
    
    
    
}

extension AdminModel: ProfileData {
    
    var avatarName: String {
        adminAvatarName
    }
  
    var firstName: String {
        adminFirstName
        
    }
  
    var lastName: String {
        adminLastName
    }
    
    var eMail: String {
        adminEmail
    }
    
    var address: String {
        adminAdderss
    }
    
    
}



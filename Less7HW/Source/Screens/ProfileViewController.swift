//
//  ProfileViewController.swift
//  Less7HW
//

//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avaImageView: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    private let dataProvider = DataProviderService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loadUserDataButtonAction(_ sender: UIButton) {
        
        updateUI(avatarName: dataProvider.loadUserData().userAvatarName,
                 firstName: dataProvider.loadUserData().userFirstName,
                 lastName: dataProvider.loadUserData().userLastName,
                 eMail: dataProvider.loadUserData().userEmail,
                 address: dataProvider.loadUserData().userAdderss)
        

    }
    
    @IBAction func loadAdminDataButtonAction(_ sender: UIButton) {
        
        updateUI(avatarName: dataProvider.loadAdminData().adminAvatarName,
                 firstName: dataProvider.loadAdminData().adminFirstName,
                 lastName: dataProvider.loadAdminData().adminLastName,
                 eMail: dataProvider.loadAdminData().adminEmail,
                 address: dataProvider.loadAdminData().adminAdderss)
        

    }
    
    func updateUI(avatarName: String,
                  firstName: String,
                  lastName: String, 
                  eMail: String,
                  address: String) {
        
        avaImageView.image = UIImage(named: "\(avatarName)")
        firstNameLabel.text = firstName
        lastNameLabel.text = lastName
        eMailLabel.text = eMail
        addressLabel.text = address
    }
    
}

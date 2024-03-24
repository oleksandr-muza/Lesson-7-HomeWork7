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
        
        let user = dataProvider.loadUserData()

        updateUI(info: user)
        

    }
    
    @IBAction func loadAdminDataButtonAction(_ sender: UIButton) {
        
        let admin = dataProvider.loadAdminData()
        

        updateUI(info: admin)
        

    }
    
    func updateUI(info: ProfileData) {
                
        avaImageView.image = UIImage(named: info.avatarName)
        firstNameLabel.text = info.firstName
        lastNameLabel.text = info.lastName
        eMailLabel.text = info.eMail
        addressLabel.text = info.address
    }
    
}

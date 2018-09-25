//
//  ContactDetailController.swift
//  contacts
//
//  Created by Aananya on 22/09/18.
//  Copyright © 2018 Aananya. All rights reserved.
//

import UIKit

class ContactDetailController: UITableViewController {
    
    var contact: Contact?
    
    
    //MARK: OUTLETS
    
    
    @IBOutlet weak var profileView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var streetAdressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var ZIPLabel: UILabel!
    
//    @IBOutlet weak var phoneNumberLabel: UILabel!
//    @IBOutlet weak var emailLabel: UILabel!
//    @IBOutlet weak var streetAddressLabel: UILabel!
//    @IBOutlet weak var cityLabel: UILabel!
//    @IBOutlet weak var stateLabel: UILabel!
//    @IBOutlet weak var zipLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureView(){
        guard let contact = contact else {return}
        
        
        profileView.image = contact.image
        nameLabel.text = "\(contact.firstName)\(contact.lastName)"
        phoneNumberLabel.text = contact.phone
        emailLabel.text = contact.email
        streetAdressLabel.text = contact.street
        cityLabel.text = contact.city
        stateLabel.text = contact.state
        ZIPLabel.text = contact.zip
    }
    

}








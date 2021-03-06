//
//  CheckoutBillingAddressEditTableViewCell.swift
//  ShopApp
//
//  Created by Evgeniy Antonov on 1/25/18.
//  Copyright © 2018 RubyGarage. All rights reserved.
//

import UIKit

import ShopApp_Gateway

protocol CheckoutBillingAddressEditCellDelegate: class {
    func tableViewCellDidTapEditBillingAddress(_ cell: CheckoutBillingAddressEditTableViewCell)
}

class CheckoutBillingAddressEditTableViewCell: UITableViewCell {
    @IBOutlet private weak var addressTitleLabel: UILabel!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var addressDescriptionLabel: UILabel!
    @IBOutlet private weak var phoneLabel: UILabel!
    @IBOutlet private weak var editButton: UIButton!
    
    weak var delegate: CheckoutBillingAddressEditCellDelegate?
    
    // MARK: - View lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        editButton?.setTitle("Button.Edit".localizable.uppercased(), for: .normal)
    }
    
    func configure(with address: Address) {
        addressTitleLabel.text = "Label.BillingAddress".localizable
        nameLabel.text = address.fullName
        addressDescriptionLabel.text = address.fullAddress
        if let phoneText = address.phone {
            let customerNameLocalized = "Label.Phone".localizable
            phoneLabel.text = String.localizedStringWithFormat(customerNameLocalized, phoneText)
        } else {
            phoneLabel.text = nil
        }
    }
    
    // MARK: - Actions
    
    @IBAction func editButtonDidPress(_ sender: UIButton) {
        delegate?.tableViewCellDidTapEditBillingAddress(self)
    }
}

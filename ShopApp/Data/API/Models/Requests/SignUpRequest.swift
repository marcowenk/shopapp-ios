//
//  SignUpRequest.swift
//  ShopApp
//
//  Created by Radyslav Krechet on 4/19/18.
//  Copyright © 2018 RubyGarage. All rights reserved.
//

import Foundation

struct SignUpRequest: Request {
    var customer: CustomerRequestBody
    var password: String
}
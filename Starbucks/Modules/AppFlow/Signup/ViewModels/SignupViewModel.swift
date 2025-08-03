//
//  SignupViewModel.swift
//  Starbucks
//
//  Created by 이혜빈 on 7/10/25.
//

import Foundation
import SwiftUI
import Observation

@Observable
class SignupViewModel {
    var user = Signup(name: "", email: "", ePwd: "")

}


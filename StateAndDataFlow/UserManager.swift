//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Дарья Носова on 21.02.2022.
//

import Foundation
import Combine

class UserManager: ObservableObject {
  @Published var isRegister = false
  var name = ""
}

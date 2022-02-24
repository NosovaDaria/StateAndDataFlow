//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Дарья Носова on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
  @EnvironmentObject var user: UserManager
  @AppStorage("name") var name = ""
  @State private var characterCounter = 0
  
    var body: some View {
      VStack {
        HStack {
          TextField("Enter your name...", text: $name)
            .onChange(of: name) { _ in
              characterCounter = name.count
            }
          Text("\(characterCounter)")
            .padding()
        }
          .multilineTextAlignment(.center)
        Button(action: registerUser) {
          HStack {
            Image(systemName: "checkmark.circle")
            Text("Ok")
          }
        }
      }
    }
}

extension RegisterView {
  private func registerUser() {
    if name.count >= 3 {
          user.name = name
          user.isRegister.toggle()
        }
  }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

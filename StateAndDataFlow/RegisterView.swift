//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Дарья Носова on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
  @EnvironmentObject var user: UserManager
  @State private var color: Color = .red
  @AppStorage("name") var name = ""
  @AppStorage("characterCounter") var characterCounter = 0
  
    var body: some View {
      VStack {
        HStack {
          Spacer()
          TextField("Enter your name...", text: $name)
            .onChange(of: name) { _ in
              characterCounter = name.count
              checkValidity()
            }
          CharacterCounter(characterCounter: $characterCounter, color: $color)
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

  private func checkValidity() {
    if characterCounter < 3 {
      color = .red
    } else {
      color = .green
    }
  }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

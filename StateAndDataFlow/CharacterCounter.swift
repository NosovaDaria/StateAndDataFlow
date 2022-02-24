//
//  CharacterCounter.swift
//  StateAndDataFlow
//
//  Created by Дарья Носова on 24.02.2022.
//

import SwiftUI

struct CharacterCounter: View {
  @Binding var characterCounter: Int
  
  @Binding var color: Color
  
    var body: some View {
      Text("\(characterCounter)")
        .foregroundColor(color)
        
    }
}

struct CharacterCounter_Previews: PreviewProvider {
    static var previews: some View {
      CharacterCounter(characterCounter: .constant(0), color: .constant(.red))
    }
}

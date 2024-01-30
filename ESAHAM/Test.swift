//
//  Test.swift
//  ESAHAM
//
//  Created by manar khaled on 13/07/1445 AH.
//

import SwiftUI

struct Test: View {
    @State private var textToCopy = ""
      private let characterLimit = 9

      var body: some View {
          VStack {
           
              TextField("Enter text", text: $textToCopy)
                  .textFieldStyle(RoundedBorderTextFieldStyle())
                  .frame(width: 320)
                  .keyboardType(.numberPad)
                  .padding(.leading, 22.0)
                  .onChange(of: textToCopy, perform: { value in
                      if value.count > characterLimit {
                          textToCopy = String(value.prefix(characterLimit))
                      }
                  })

            
          }
      }

  }


struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}

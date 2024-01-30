//
//  ContentView.swift
//  ESAHAM
//
//  Created by manar khaled on 11/07/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var isHomeRootScreen = false
    @State var scaleAmount: CGFloat = 1
    @State private var isShowingMainView = false
    
    var body: some View {
        VStack {
            if isShowingMainView {
                Boarding()
                    .transition(.opacity) // Apply fade-in transition
            } else {
                
            //    Color("greeen")
                
                Image("Home")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .scaleEffect(scaleAmount)
                    .frame(width: 200 )
                
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250 )
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            withAnimation {
                                isShowingMainView = true
                            }
                        }
                    }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
                ContentView()
        }
    }


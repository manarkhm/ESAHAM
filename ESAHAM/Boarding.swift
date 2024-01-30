//
//  Boarding.swift
//  ESAHAM
//
//  Created by manar khaled on 12/07/1445 AH.
//

import SwiftUI

struct Boarding: View {
    @State private var currentPageIndex = 0
      
    var body: some View {
        NavigationView {
        
        TabView(selection: $currentPageIndex) {
            OnboardingPage(imageName: "Blank", title: "Welcome", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", currentPageIndex: 0)
                .tag(0)
            
            OnboardingPage(imageName: "Blank", title: "Water your plant!", description: "Praesent euismod mauris nec tellus tincidunt, id porttitor dui pellentesque.", currentPageIndex: 1)
                .tag(1)
            
            OnboardingPage(imageName: "Blank", title: "Enjoy", description: "Vestibulum interdum enim sit amet orci tincidunt hendrerit.", currentPageIndex: 2)
                .tag(2)
            
            OnboardingPage(imageName: "Blank", title: "Get Started", description: "Tap the button below to get started.", currentPageIndex: 3)
                .tag(3)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .accentColor(.green) // Set the accent color
        .background(Color("whitee"))
    }
      }
  }

  struct OnboardingPage: View {
      var imageName: String
      var title: String
      var description: String
      var currentPageIndex: Int
      
      var isLastPage: Bool {
            let lastPageIndex = 3 // Set the index of the last page here
            return currentPageIndex == lastPageIndex
        }
        
        
      @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
      
      var body: some View {
         
          ZStack{
              Color("whitee")
                  .ignoresSafeArea(.all)
              
              if !isLastPage {
                  HStack {
                      Spacer()
                      Button(action: {
                          presentationMode.wrappedValue.dismiss()
                      }) {
                          NavigationLink(destination: ContentView()) {
                              Text("Skip")
                                  .font(.headline)
                                  .foregroundColor(.greeen)
                                  .position(CGPoint(x: 320.0, y: 40.0))
                                 
                          }
                      }
                  }
                  .alignmentGuide(HorizontalAlignment.trailing) { _ in
                      UIScreen.main.bounds.width - 20
                  }
              }
              
              VStack(spacing: 30) {
                  
                  Image(imageName)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 300 )
                  
                  
                  Text(title)
                      .foregroundColor(.darrk)
                      .font(.title)
                      .bold()
                  
                  Text(description)
                      .foregroundColor(.darrk)
                      .font(.body)
                      .multilineTextAlignment(.center)
                      .padding(.horizontal, 20)
                  
                  
                  if isLastPage {
                     
                      Button(action: {
                          // Handle "Start" button action
                          presentationMode.wrappedValue.dismiss()
                          
                      })   {
                          NavigationLink(destination: ContentView()) {
                          Text("Start")
                              .font(.title)
                              .frame(width: 300 , height: 20)
                              .foregroundColor(.white)
                              .padding()
                              .background(Color("greeen"))
                              .cornerRadius(10)
                              .frame(width: 300 , height: 20)
                              .shadow(color: .shadoww, radius:4, x:0, y:4)
                      }
                          
                      }
                  
                  }
              }
              .padding()
          }
      }
      }

  
  struct Boarding_Previews: PreviewProvider {
      static var previews: some View {
          Boarding()
      }
  }

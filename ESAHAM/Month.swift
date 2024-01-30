//
//  Month.swift
//  ESAHAM
//
//  Created by manar khaled on 14/07/1445 AH.
//

import SwiftUI

struct Month: View {
    @State var count = 0
       
    var body: some View {
        
        
        ZStack{
           
            Color("whitee")
                .ignoresSafeArea(.all)
                .scaledToFill()
            
            Text("Choose The Month")
                //.font(.title3)
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .foregroundColor(Color("greeen"))
                .position(CGPoint(x: 375, y: 50))
            
            Text("Choose the month that track your progress in challenges ")
                .fontWeight(.medium)
                .font(.system(size: 12))
                .foregroundColor(Color.gray)
                .position(CGPoint(x: 375, y: 80))
        
            VStack{
                
                // --------- Line no.1 -------------
                HStack{
                    
                    ZStack {
                        
                        Button{}
                    label: {
                        
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 6)
                        
                            .frame(width: 100)
                            .overlay(Text("JANUARY")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                                .position(CGPoint(x: 50, y: 50))
                            )
                        
                    }
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.green) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                        .stroke(Color("Lightt"), lineWidth: 2)
                        )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
                   // .shadow(color: .gray, radius:1, x:0, y:) // اضافة شدو للبتن
                    .position(x: 260.0, y: 200)
                    
                    
                    
                    VStack {
                        
                        NavigationLink(
                            
                            destination: Test(),
                            label: {
                                RoundedRectangle(cornerRadius:50)
                                
                                    .fill(.white)
                                    .shadow(radius: 5)
                                
                                    .frame(width: 300)
                                    .overlay(Text("FEBRUARY")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("Lightt"))
                                     //   .position(CGPoint(x: 150.0, y: 115))
                                    )
                                
                                
                            }// label
                            
                        )
                         //  .navigationBarBackButtonHidden(true)
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
                //    .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                    .position(x: 125.0, y: 200)
                    
                    
                    
                    VStack {
                        
                        NavigationLink(
                            
                            destination: Test(),
                            label: {
                                RoundedRectangle(cornerRadius:50)
                                
                                    .fill(.white)
                                    .shadow(radius: 5)
                                
                                    .frame(width: 300)
                                    .overlay(Text("March")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("Lightt"))
                                     //   .position(CGPoint(x: 150.0, y: 50))
                                    )
                                
                                
                            }// label
                            
                        )
                        // .navigationBarBackButtonHidden(true)
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
                 //   .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                    .position(x: -10.0, y: 200)
                    
                }
                
                //----------- Line no.2  -----------
                
                HStack{
                    
                    VStack{
                        Button{}
                    label: {
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 5)
                        
                            .frame(width: 300)
                            .overlay(Text("APRIL")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                                //.position(CGPoint(x: 150.0, y: 115))
                            )
                        
                        
                    }
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
                  //  .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                    .position(x: 260.0, y: 150)
                    
                    
                    VStack{
                        Button{}
                    label: {
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 5)
                        
                            .frame(width: 300)
                            .overlay(Text("MAY")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                              //  .position(CGPoint(x: 135.0, y: 115))
                            )
                        
                        
                    }
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
                  // .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                    .position(x: 125.0, y: 150)
                    
                    
                    VStack{
                        Button{}
                    label: {
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 5)
                        
                            .frame(width: 300)
                            .overlay(Text("JUNE")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                               // .position(CGPoint(x: 135.0, y: 115))
                            )
                        
                        
                    }
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
                   // .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                  .position(x: -10.0, y: 150)
                }
                
                //----------- Line no.3  -----------
                
                HStack{
                    
                    VStack{
                        Button{}
                    label: {
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 5)
                        
                            .frame(width: 300)
                            .overlay(Text("JULY")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                               // .position(CGPoint(x: 135.0, y: 115))
                            )
                        
                    }
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
               //     .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                      .position(x: 260.0, y: 100)
                    
                    VStack{
                        Button{}
                    label: {
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 5)
                        
                            .frame(width: 300)
                            .overlay(Text("AUGUST")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                            //    .position(CGPoint(x: 135.0, y: 115))
                            )
                        
                        
                    }
                    }
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
                //    .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                    .position(x: 125.0, y: 100)
                    
                    
                    VStack{
                        Button{}
                    label: {
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 5)
                        
                            .frame(width: 300)
                            .overlay(Text("SEPTEMBER")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                               // .position(CGPoint(x: 135.0, y: 115))
                            )
                        
                        
                    }
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
                  //  .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                  .position(x: -10, y: 100)
                    
                }
                
                //----------- Line no.4  -----------
                
                HStack{
                    
                    VStack{
                        Button{}
                    label: {
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 5)
                        
                            .frame(width: 300)
                            .overlay(Text("OCTOBER")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                               // .position(CGPoint(x: 135.0, y: 115))
                            )
                        
                        
                    }
                    }
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
              //      .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                    .position(x: 260.0, y: 50)
                    
                    VStack{
                        Button{}
                    label: {
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 5)
                        
                            .frame(width: 300)
                            .overlay(Text("NOVEMBER")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                             //   .position(CGPoint(x: 135.0, y: 115))
                            )
                        
                        
                    }
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
          //          .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                  .position(x: 125.0, y: 50)
                    
                    
                    VStack{
                        Button{}
                    label: {
                        RoundedRectangle(cornerRadius:50)
                        
                            .fill(.white)
                            .shadow(radius: 5)
                        
                            .frame(width: 300)
                            .overlay(Text("DECEMBER")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Lightt"))
                         //       .position(CGPoint(x: 135.0, y: 115))
                            )
                        
                        
                    }
                    }
                    
                    .frame(width: 100.0, height: 100.0)
                    .background(Color("Lightt")) // لون البتن
                    .foregroundColor(.black) // لون الخط
                    .cornerRadius(100) // تقوس البتن
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color("Lightt"), lineWidth: 2)
                    )
                    .padding(.bottom, 30) // تحريك البتن للاعلى
             //       .shadow(color: .gray, radius:5, x:0, y:3) // اضافة شدو للبتن
                  .position(x: -10, y: 50)
                    
                }
                
                //----------- done  -----------
           
            }
            
        }
    }
}
         
struct Month_Previews: PreviewProvider {
    static var previews: some View {
        Month()
    }
}

//
//  classView.swift
//  ESAHAM
//
//  Created by hessah aljarallah  on 31-01-2024.
//

import SwiftUI
struct TasksView: View {
    @State private var progress: Double = 0.0
    @State private var circleColor: Color = Color("PrimaryColor")
    @State private var completedCircleColor: Color = Color("HighlightColor") // تغيير هنا
    @State private var animateCircle = false
    var body: some View {
        
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack {
                Text("Class")
                    .font(.title)
                    .foregroundColor(Color("TextColor"))
                    .padding()
                
                HStack {
                    Text("Class 7/B")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("TextColor"))
                        .padding()
                    
                    Spacer()
                }
                HStack{
                    Text("Joined April 2024")
                        .font(.custom("Montserrat", size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .padding(.leading)
                       
                    Spacer()
                }
                .padding(.top,-25)
                HStack(spacing: 20) {
                    VStack{
                        ZStack {
                            Circle()
                                .frame(width: 43, height: 43)
                                .foregroundColor(Color("PrimaryColor"))
                            
                            Image("imag2")
                                .resizable()
                                .foregroundColor(Color.white)
                                .frame(width: 13.0, height: 23.0)
                        }
                        Text("2/3")
                            .foregroundColor(Color.gray)
                    }
                    
                    VStack{
                        ZStack {
                            Circle()
                                .frame(width: 43, height: 43)
                                .foregroundColor(Color("PrimaryColor"))

                            Image("imag3")
                                .resizable()
                                .foregroundColor(Color.white)
                                .frame(width: 17.0, height: 23.0)
                        }
                        Text("1/3")
                            .foregroundColor(Color.gray)
                    }
                    
                    VStack{
                        ZStack {
                            Circle()
                                .frame(width: 43, height: 43)
                                .foregroundColor(Color("PrimaryColor"))

                            Image("Image")
                                .resizable()
                                .foregroundColor(Color.white)
                                .frame(width: 23.0, height: 31.0)
                        }
                        Text("2/3")
                            .foregroundColor(Color.gray)
                    }
                }
                
                Spacer()
                ZStack {
                    Circle()
                        .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                        .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round))
                        .foregroundColor(progress >= 1.0 ? .purple : circleColor)
                        .rotationEffect(Angle(degrees: -90))
                        .frame(width: 243, height: 249)
                        .padding()
                        .animation(Animation.linear(duration: 4))
                        .onAppear {
                            if animateCircle {
                                self.progress = 1.0
                            }
                        }
                    
                    HStack { // استخدم VStack لتجميع النص والصورة
                        Text("2")
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.079, saturation: 0.039, brightness: 0.361))
                            .offset(x: 22)
                        Text("30")
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.079, saturation: 0.041, brightness: 0.37))
                            .offset(x: 50)
                        
                        Image("2030")
                            .resizable()
                            .offset(x: -22)// تغيير الصورة لتكون قابلة للتغيير الحجم
                            .frame(width: 50, height: 50) // تحديد حجم الصورة الجديد
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(progress >= 1.0 ? .purple : circleColor)
                    }
                    //k
                    ZStack{
                        Circle()
                            .frame(width: 43, height: 43)
                            .foregroundColor(circleColor)
                            .offset(y: 120)
                        Image("Image")
                            .resizable()
                            .frame(width: 23.0, height: 31.0)
                            .offset(y: 120)
                    }
                }
//نهاية z
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { timer in
                        withAnimation {
                            if self.progress >= 1.0 {
                                timer.invalidate()
                                circleColor = .purple
                            } else {
                                self.progress += 0.1
                            }
                        }
                    }
                }
                
                Spacer()
               
                HStack {
                    Spacer()
                    
                    ZStack {
                        Circle()
                            .frame(width: 43, height: 43)
                            .foregroundColor(circleColor)
                        
                        Image(systemName: "drop.fill")
                            .resizable()
                            .foregroundColor(Color.white)
                            .frame(width: 13.0, height: 15.0)
                            .clipShape(Circle())
                    }
                    .offset(x: -50, y: -225)
                    
                    Spacer()
                    
                    ZStack {
                        Circle()
                            .frame(width: 43, height: 43)
                            .foregroundColor(circleColor)
                        
                        Image(systemName: "arrow.3.trianglepath")
                            .resizable()
                            .foregroundColor(Color.white)
                            .frame(width: 18.0, height: 18.0)
                            .clipShape(Circle())
                    }
                    .offset(x: 50, y: -225)
                    
                    Spacer()
                    
                }
                .padding(.horizontal)

                
                Spacer()
            }
        }
    }
}




#Preview {
    TasksView()
}

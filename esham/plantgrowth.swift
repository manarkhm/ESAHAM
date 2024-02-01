import SwiftUI

struct plantgrowth: View {
    var body: some View {
            VStack {
                Spacer()

                Spacer()

                HStack {
                    Spacer()

                    // Circle 1
                    Button(action: {
                        // Action for Circle 1
                    }) {
                        VStack {
                            Image("1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color(red: 0.543, green: 0.707, blue: 0.306)) // #8BB44E
                                .padding(.all, 10.0)
                                .background(Circle().fill(Color.white)) // #FFFFFF
                                .overlay(Circle().stroke(Color(#colorLiteral(red: 0.9921568627, green: 0.9921568627, blue: 0.9921568627, alpha: 1)), lineWidth: 2)) // FDFDFD
                                .shadow(color: Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)), radius: 3, x: 0, y: 3)

                          
                        }
                    }

                    Spacer()

                    // Circle 2
                    Button(action: {
                        // Action for Circle 2
                    }) {
                        VStack {
                            Image("2") // Replace "yourImageName2" with the actual name of your second image in the assets
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color(red: 0.543, green: 0.707, blue: 0.306)) // #8BB44E
                                .padding(.all, 10.0)
                                .background(Circle().fill(Color.white)) // #FFFFFF
                                .overlay(Circle().stroke(Color(#colorLiteral(red: 0.9921568627, green: 0.9921568627, blue: 0.9921568627, alpha: 1)), lineWidth: 2)) // FDFDFD
                                .shadow(color: Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)), radius: 3, x: 0, y: 3)

                           
                        }
                    }

                    Spacer()

                    // Circle 3
                    Button(action: {
                        // Action for Circle 3
                    }) {
                        VStack {
                            Image("3") // Replace "yourImageName3" with the actual name of your third image in the assets
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .background(Circle().fill(Color.white)) // #FFFFFF
                                .overlay(Circle().stroke(Color(#colorLiteral(red: 0.9921568627, green: 0.9921568627, blue: 0.9921568627, alpha: 1)), lineWidth: 2)) // FDFDFD
                                .shadow(color: Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)), radius: 3, x: 0, y: 3)

                           
                        }
                    }

                    Spacer()
                }
                .padding(.bottom, 20) // Adjust the bottom padding
            }
    }
}

struct plantgrowth_Previews: PreviewProvider {
    static var previews: some View {
        plantgrowth()
    }
}

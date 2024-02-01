import SwiftUI

struct PlantView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Button("Plant Your Seed") {
                
            }
            .padding(.horizontal, 39)
            .padding()
            .background(Color(#colorLiteral(red: 0.2784313725, green: 0.431372549, blue: 0.168627451, alpha: 1))) // #476e2b
            .foregroundColor(.white)
            .cornerRadius(15)
            .padding()
            
        }
    }
}

struct PlantView_Previews: PreviewProvider {
    static var previews: some View {
        PlantView()
    }
}

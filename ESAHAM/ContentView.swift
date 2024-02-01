import SwiftUI
import Combine


import SwiftUI

struct ContentView: View {
    enum Tab {
        case community, plant, tasks
    }

    @State private var selectedTab: Tab = .community

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                TabView(selection: $selectedTab) {
                    NavigationView {
                        CommunityView()
                            .navigationBarTitle("Community", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Community")
                    }
                    .tag(Tab.community)


                    NavigationView {
                        MyPlantView()
                            .navigationBarTitle("Plant", displayMode: .inline)
                            
                    }
                    .tabItem {
                        Image(systemName: "tree")
                        Text("Plant")
                    }
                    .tag(Tab.plant)

                    NavigationView {
                        ChallengeView()
                            .navigationBarTitle("Tasks", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "flag")
                        Text("Tasks")
                    }
                    .tag(Tab.tasks)
                }
                .edgesIgnoringSafeArea(.top)
                .frame(maxHeight: .infinity)
                .accentColor(Color("PrimaryColor"))

              
                
                Divider()
                    .padding(.top, 650.0)
               
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

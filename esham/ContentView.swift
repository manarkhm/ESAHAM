import SwiftUI

struct CommunityView: View {
    var body: some View {
        Text("")
    }
}

struct Plant1View: View {
    var body: some View {
        Text("")
    }
}

struct TasksView: View {
    var body: some View {
        Text("")
    }
}

struct ClassView: View {
    var body: some View {
        Text("")
    }
}

struct ContentView: View {
    // enum for Tabs, add other tabs if needed
    enum Tab {
        case community, plant, tasks, profile
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
                        PlantView()
                            .navigationBarTitle("Plant", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "tree")
                        Text("Plant")
                    }
                    .tag(Tab.plant)

                    NavigationView {
                        TasksView()
                            .navigationBarTitle("Tasks", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "flag")
                        Text("Tasks")
                    }
                    .tag(Tab.tasks)

                    NavigationView {
                        ClassView()
                            .navigationBarTitle("Class", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "person")
                        Text("Class")
                    }
                    .tag(Tab.profile)
                }
                .edgesIgnoringSafeArea(.top)
                .frame(maxHeight: .infinity)
              
                
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

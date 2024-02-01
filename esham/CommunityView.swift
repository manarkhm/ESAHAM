//
//  CommunityView.swift
//  esham
//
//  Created by aisha rashid alshammari  on 17/07/1445 AH.
//

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

struct ProfileView: View {
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
        VStack {
            Spacer()
            
            HStack(alignment: .center, spacing: 0) {
                TabView(selection: $selectedTab) {
                    CommunityView()
                        .tabItem {
                            Image(systemName: "person.3")
                            Text("Community")
                        }
                        .tag(Tab.community)

                    Plant1View()
                        .tabItem {
                            Image(systemName: "tree")
                            Text("Plant")
                        }
                        .tag(Tab.plant)

                    TasksView()
                        .tabItem {
                            Image(systemName: "flag")
                            Text("Tasks")
                        }
                        .tag(Tab.tasks)

                    ProfileView()
                        .tabItem {
                            Image(systemName: "person")
                            Text("Profile")
                        }
                        .tag(Tab.profile)
                }
            }
            .padding(.horizontal, 0)
            .padding(.bottom, 3)
            .frame(width: 393, height: 60, alignment: .center)
            
            .cornerRadius(9)
            .shadow(color: Color.black.opacity(0.3), radius: 0, x: 0, y: -0.33)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

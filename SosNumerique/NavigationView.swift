//
//  NavigationView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 31/10/2022.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                
                    Label("Leçons", systemImage: "graduationcap.fill")
                    
                }
                    MapView()
                    .tabItem{
                    
                    Label("Carte", systemImage: "map.fill")
                        
                }
            UserProfileView(course: Courses(name: "", description: "", video: Video(videoID: ""), category: [""], quizz: Quizz(questions: ["":""], img: Image(""))))
                    .tabItem{
    
                        Label("Profil", systemImage: "person.fill")
                        
                    }
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}

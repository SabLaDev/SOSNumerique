//
//  ContentView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 26/10/2022.
//

import SwiftUI
//to play video
//import AVKit

struct ContentView: View {
    @State private var searchText = ""
    
   @State var courseList : [Courses] = [
        Courses(name: "Télécharger des applications", description: "Ce cours explique comment on peut télécharger des applications sur les smartphones Android avec le Play store", video: "play.circle", category: [""], quizz: Quizz()),
        Courses(name: "Se diriger avec Google Maps", description: "Ce cours explique comment on peut se diriger avec l’aide de l’application « Google Maps ».", video: "play.circle", category: [""], quizz: Quizz()),
        Courses(name: "Traduire avec Google Traduction", description: "Ce cours explique comment traduire des texte dans la langue de son choix avec l’application « Google Traduction »", video: "play.circle", category: [""], quizz: Quizz())
    ]
    //Les thèmes des cours
    var category : [String] = ["Sur mobile", "Sur ordinateur"]
    
    
    
    
    var body: some View {
        NavigationView{
            VStack{
                Text(" \(searchText)")
                    .searchable(text: $searchText)
                
                TabView {
                    Image("img6").resizable().scaledToFit()
                    Image("img10").resizable().scaledToFit()
                    Image("img11").resizable().scaledToFit()
                    Image("img7").resizable().scaledToFit()
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
                List{
                    Section(header: Text("Les dernières leçon publiées")){
                        ForEach(courseList) { list in
                            //connecter le navigation link avec le lessonDetailView
                            NavigationLink(destination: LessonDetailView()){
                                courseRow(minVideo: list.video, courseTitle: list.name, courseDescription: list.description)
                            }
                        }
                        
                    }
                    
                    Section(header: Text("Informations sur l'exclusion numérique")){
                        Link("Emmaüs Connect", destination: URL(string:"https://emmaus-connect.org/exclusion-numerique/")!)
                        Link("INSEE.FR", destination: URL(string:"https://www.insee.fr/fr/statistiques/4241397")!)
                    }
                }
                
                .navigationTitle("Accueil")
                
            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LastNews{
    var fourLastCourses : [String]
    
    func addTheLastCourses(){
        
            for index in 0...3{
                print(index)
            }
        }
      
    }

//Quizz qui se trouve après la vidéo pour vérifier la compréhension de l'utilisateur
struct Quizz {
    var questions : [String:String] = [
        "Question1" : "Réponse1",
        "Question2" : "Réponse2",
        "Question3" : "Réponse3",
        "Question4" : "Réponse4",
        "Question5" : "Réponse5"
        ]
}

    


struct Courses: Identifiable {
        var id = UUID()
        var name : String
        var description : String
        var video : String
        var category : [String]
        var quizz : Quizz
        //var comments : Comment
}



//struct Comment{
//    var authorName: String
//    var authorMessage: String
//    var authorPhoto : Image
    //var reply : [CommentReply]
    
//}

//struct CommentReply{
//    var replyMessage: String
//    var replayImage: String
//    func numberOfReply(){
//        // compte le nombre de réponses et les affiche en haut à droite de l'image
//    }
//}

struct courseRow: View {
    var minVideo : String
    var courseTitle : String
    var courseDescription : String
    var body: some View {
        HStack{
            Image(systemName: minVideo)
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text(courseTitle).font(.headline).lineLimit(1)
                Text(courseDescription).font(.subheadline).lineLimit(2)
            }
            
        }
    }
}

//
//  ContentView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 26/10/2022.
//

import SwiftUI
//to view pdf file
import PDFKit
//to play video
//import AVKit

import WebKit

struct ContentView: View {
    
    //Texte recherché dans la barre de recherche
    @State private var searchText = ""
    
    //Liste de tous les cours
   @State var courseList : [Courses] = [
    Courses(
        name: "Télécharger des applications",
        description: "Ce cours explique comment on peut télécharger des applications sur les smartphones Android avec le Play store",
        video: Video(videoID: ""),
        category: ["Sur ordinateur"],
        quizz: Quizz(questions: ["":""], img: Image("applications")),
        commentList: [
            Comment(
                authorName: "LaRenarde36",
                authorMessage: "Ce cours était clair et facile, merci.",
                authorPhoto: Image("girl")
                
            ),
            Comment(
                authorName: "Maria_76",
                authorMessage: "Est-ce que c'est pareil sur un Iphone ?",
                authorPhoto: Image("woman")
                )
        ],
        isFavorite: false),
        Courses(
            name: "Explorez & rédigez des avis dans Google Maps",
            description: "Ce cours explique comment on peut se diriger avec l’aide de l’application « Google Maps » et laisser des avis.",
            video: Video(videoID: "MN1fASZ9tKg"),
            category: ["Sur mobile"],
            quizz: Quizz(questions: [
                 "Il est possible d'attribuer une note à un établissement ":"Vrai",
                 "Il est possible d'enregistrer son historique de recherche":"Vrai",
                 "Il n'est pas possible de filtrer les recherches ":"Faux",
                 "Google Map, utilise la géolocalisation ":"Vrai",
                 "Il n'est pas possible de laisser un commentaire à un établissement":"Faux"
                
            ], img: Image("maps")),
            commentList: [
                Comment(
                    authorName: "Jeannette54",
                    authorMessage: "Est-ce que ça fonctionne à l'étranger ou il n'y a que la carte de la France ?",
                    authorPhoto: Image("oldlady")),
                Comment(
                    authorName: "Yvan_LeBeau",
                    authorMessage: "Je ne trouve pas cette application sur mon Huawei",
                    authorPhoto: Image("oldguy")),
                Comment(
                    authorName: "Johnny_Du_75",
                    authorMessage: "Merci",
                    authorPhoto: Image("guy"))
            ],
        isFavorite: true),
        Courses(
            name: "Traduire avec Google Traduction",
            description: "Ce cours explique comment traduire du texte avec l’application « Google Traduction » et l'appareil photo de son smartphone",
            video: Video(videoID: "5aa0fo9QcZw"),
            category: ["Sur mobile"],
            quizz: Quizz(
            questions: [
                "On peut utiliser l'appareil photo pour traduire ":"Vrai",
                "Internet n'est pas obligatoire pour l'utiliser":"Faux",
                "Il traduit dans toutes les langues ":"Faux",
                "C'est un outil difficile à utiliser":"Faux"
                
            ], img: Image("translate")),
            isFavorite: true
        )
   ]
    
    //Les thèmes des cours pour un éventuel filtre
    var category : [String] = ["Sur mobile", "Sur ordinateur"]
    

    var body: some View {
        NavigationView {
            //Caroussel
            VStack {
                Text("Les dernières infos🔥").font(.headline)
                TabView {
                    Video(videoID: "iN5fG-tbxck")
                                        
                    Link(destination: URL(string: "https://www.insee.fr/fr/statistiques/4241397")!) {
                        Image("insee_data")
                            .resizable()
                            .scaledToFit()
                    }
                    
                    Link(destination: URL(string: "https://www.petitsfreresdespauvres.fr/media/332/download/2018_10_01_Rapport_exclusion_numerique_personnes_agees_pfP.pdf?v=2&inline=1")!) {
                        Image("rapportExclusionNum")
                            .resizable()
                            .scaledToFit()
                    }
                    
                }
                .frame(height:200)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
                //Liste des 3 dernières applications ajoutées
                List{
                    Section(header: Text("Les dernières leçons publiées")){
                        ForEach(courseList) { course in
                            //connecter le navigation link avec le lessonDetailView
                            NavigationLink(destination: LessonDetailView(course: course)){
                                courseRow(minVideo: course.video, courseTitle: course.name, courseDescription: course.description)
                            }
                        }
                    }
                    //Toutes les leçons
                    Section(header: Text("Toutes les leçons")){
                       NavigationLink("Toutes les leçons", destination: LessonListView())
                    }
                    
                    //les liens
                    Section(header: Text("Informations sur l'exclusion numérique")){
                        Link("Emmaüs Connect", destination: URL(string:"https://emmaus-connect.org/exclusion-numerique/")!)
                        Link("Petits frères des pauvres", destination: URL(string:"https://www.petitsfreresdespauvres.fr/informer/prises-de-positions/contre-l-exclusion-numerique-de-4-millions-de-personnes-agees")!)
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

//Quizz qui se trouve après la vidéo pour vérifier la compréhension de l'utilisateur
struct Quizz {
    var questions : [String:String]
    var img : Image
}

struct Courses: Identifiable {
        var id = UUID()
        var name : String
        var description : String
        var video : Video
        var category : [String]
        var quizz : Quizz
        var commentList : [Comment]?
        var isFavorite : Bool = false
}


struct Comment: Identifiable {
    var id = UUID()
    var authorName: String
    var authorMessage: String
    var authorPhoto : Image
}

struct courseRow: View {
    var minVideo : Video
    var courseTitle : String
    var courseDescription : String
    var body: some View {
        HStack{
            minVideo
                .clipShape(Rectangle())
                .frame(width:60,height:55)
                    
                    
            VStack(alignment: .leading) {
                Text(courseTitle).font(.headline).lineLimit(1)
                Text(courseDescription).font(.subheadline).lineLimit(2)
            }
            
        }
    }
}

struct  Video: UIViewRepresentable {

    let videoID: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL =  URL(string: "https://www.youtube.com/embed/\(videoID)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }

}



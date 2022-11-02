//
//  UserProfileView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 28/10/2022.
//

import SwiftUI

import Charts

  struct Amount: Identifiable {
      var month: String
      var amount: Double
      var id = UUID()
  }

var data: [Amount] = [
    .init(month: "Avril", amount: 10),
    .init(month: "Mai", amount: 5),
    .init(month: "Juin", amount: 15),
    .init(month: "Juillet", amount: 20),
]

struct UserProfileView: View {
    
    var course : Courses
    
    @State var nom: String = "Martin"
    @State var prénom : String = "Maxime"
    @State var dateDeNaissance: String="28/10/1963"
    @State var pseudo:String = ""
    @State var adresseEmail:String = "MarMax@gmail.com"
    @State var photoDeprofil:Image = Image ("test-1")
    
     
    var body: some View {
        NavigationView{
    
            VStack {
                HStack{
                    Text("").multilineTextAlignment(.trailing).toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                    Image("test-1")
                        .resizable()
                        .clipShape(Circle())
                        .scaledToFit()
                        .frame(height:100)
                        }
                    }
                }
                List{
                    //L'identité de l'utilisateur
                    Section(header:Text("Identité")) {
                        TextField("Martin", text: $nom)
                        TextField("Maxime",text:$prénom)
                        TextField("28/10/1963",text: $dateDeNaissance)
                        TextField("MarMax@gmail,com",text: $adresseEmail )
                            .keyboardType(.emailAddress)
                        TextField("Maxou",text:$pseudo)
                    }
                    //Les cours
                    Section(header:Text("Les cours")){
                        Section(header:Text("Favoris")){
                            HStack{
                                favoriteRow(minVideo: Video(videoID: "MN1fASZ9tKg") , courseTitle: "Explorez & rédigez des avis dans Google Maps" )
                                favoriteRow(minVideo: Video(videoID: "5aa0fo9QcZw") , courseTitle: "Traduire avec Google Traduction" )
                            }.foregroundStyle(.secondary)
                           
                        }
                        Section(header:Text("En cours")){
                            HStack{
                                favoriteRow(minVideo: Video(videoID: "5aa0fo9QcZw") , courseTitle: "Traduire avec Google Traduction" )
                                
                            }.foregroundStyle(.secondary)
                        }
                        Section(header:Text("Derniers cours")){
                            HStack{
                                favoriteRow(minVideo: Video(videoID: "5aa0fo9QcZw") , courseTitle: "Traduire avec Google Traduction" )
                               
                            }.foregroundStyle(.secondary)
                        }
                    }
                    //L'évolution
                    Section(header:Text("L'Evolution")){
                        Text("LE SUIVI DE VOS CONNAISSANCES")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .bold()
                        
                        Chart(data, id: \.month){ shape in
                            BarMark(
                                x: .value("month", shape.month),
                                y: .value("Value", shape.amount)
                              //choix des couleurs
                            ).foregroundStyle(.yellow)
                            
                            //taille du graphique
                        }.frame(width: 300, height: 200)
                         .multilineTextAlignment(.leading)
                        }
                    
            }
            .navigationTitle("Profile")
            
            }
        }
    }
}

struct favoriteRow: View {
    var minVideo : Video
    var courseTitle : String
    var body: some View {
        VStack{
            minVideo
                .clipShape(Rectangle())
                .frame(width:60,height:55)
                
            Text("\(courseTitle)").multilineTextAlignment(.leading)
        }.foregroundStyle(.secondary)
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(course:Courses(
            name: "",
            description: "",
            video: Video(videoID: ""),
            category: [""],
            quizz: Quizz(questions: ["":""], img: Image(""))))
    }
}



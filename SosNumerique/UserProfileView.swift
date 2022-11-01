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
    .init(month: "avril", amount: 10),
    .init(month: "mais", amount: 5),
    .init(month: "june", amount: 15),
    .init(month: "juillet", amount: 20),
]

struct UserProfileView: View {
    
    var course : Courses
    
    @State var nom: String = "Martin"
    @State var prénom : String = "Maxime"
    @State var dateDeNaissance: String="28/10/1963"
    @State var pseudo:String = ""
    @State var adresseEmail:String = "MarMax@gmail.com"
    @State var photoDeprofil:Image = Image ("test-1")
    
    var favorite : [Courses] = []
 
     
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
                            favoriteRow()
                            }
                        Section(header:Text("En cours")){
                            HStack{
                                favoriteRow()
                                favoriteRow()
                            }.foregroundStyle(.secondary)
                        }
                        Section(header:Text("Derniers cours")){
                            HStack{
                                favoriteRow()
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

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(course:Courses(
            name: "Télécharger des applications",
            description: "Ce cours explique comment on peut télécharger des applications sur les smartphones Android avec le Play store",

            video: Video(videoID: ""),
            category: [""],
            quizz: Quizz()))
    }
}

struct favoriteRow: View {
    var body: some View {
        let video = Video(videoID: "")
        let name : String = "Nom du cours"
        VStack{
            video
                .clipShape(Rectangle())
                .frame(width:60,height:55)
                
            Text("\(name)").multilineTextAlignment(.leading)
        }.foregroundStyle(.secondary)
    }
}

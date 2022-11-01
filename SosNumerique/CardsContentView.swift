//
//  CardsContentView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 31/10/2022.
//

import SwiftUI

struct Quiz: Hashable {

    var id : Int
    var img : String
    var questions : [String:String]
  
}

struct CardsContentView: View {
    
    // 1
    /// List of questions
    @State var quiz : [Quiz] =
    [
        Quiz(id:0,
             img: "maps",
             questions: [
                "Il est possible d'attribuer une note à un établissement ":" Vrai",
                "Il est possible d'enregistrer son historique de recherche":" Vrai",
                "Il n'est pas possible de filtrer les recherches ":"Faux",
                "Google Map, utilise la géolocalisation ":" Vrai",
                "Il n'est pas possible de laisser un commentaire à un établissement":"Faux"
        ]),
        Quiz(id:1,
             img: "translate",
             questions: [
                 "On peut utiliser l'appareil photo pour traduire ":"Vrai",
                 "Internet n'est pas obligatoire pour l'utiliser":"Faux",
                 "Il traduit dans toutes les langues ":"Faux",
                 "C'est un outil difficile à utiliser":"Faux",
                 "":""
                 
             ])
    ]
    
    // 2
    /// Return the CardViews width for the given offset in the array
    /// - Parameters:
    ///   - geometry: The geometry proxy of the parent
    ///   - id: The ID of the current question
    private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(quiz.count - 1 - id) * 5
        return geometry.size.width - offset
    }
    
    // 3
    /// Return the CardViews frame offset for the given offset in the array
    /// - Parameters:
    ///   - geometry: The geometry proxy of the parent
    ///   - id: The ID of the current question
    private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        return  CGFloat(quiz.count - 1 - id) * 5
    }
    var body: some View {
        VStack {
                GeometryReader { geometry in
                    VStack {
                        ZStack {
                            ForEach(self.quiz, id: \.self) { user in
                                QuizView(isChecked: false)
                                    .frame(width: self.getCardWidth(geometry, id: user.id), height: 400)
                                    .offset(x: 0, y: self.getCardOffset(geometry, id: user.id))
                            }
                        }
                        Spacer()
                    }
                }
            }.padding()
        }
}



struct CardsContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardsContentView()
    }
}

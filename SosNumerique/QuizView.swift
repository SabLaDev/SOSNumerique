//
//  QuizView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 27/10/2022.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct QuizView_Previews: PreviewProvider {
    var questions : [String:String] = [
        "Question1" : "Réponse1",
        "Question2" : "Réponse2",
        "Question3" : "Réponse3",
        "Question4" : "Réponse4",
        "Question5" : "Réponse5"
        ]
    static var previews: some View {
        QuizView()
        
    }
}

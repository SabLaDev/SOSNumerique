//
//  QuizView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 27/10/2022.
//

import SwiftUI

struct QuizView: View {
    
    @State var userAnswer : String
    @State var i : Int = 0
    @State var score : Int = 0
        
    var course : Courses

    
    
    @State private var translation: CGSize = .zero
    var body: some View {
        VStack {
            
            GeometryReader { geometry in
                
                VStack(alignment: .leading) {
                    course.quizz.img
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.65) // 3
                        .clipped()
                    
                    HStack {
                        VStack(alignment: .center, spacing: 6) {
                            
                            if(i < course.quizz.questions.count){
                                Text("Question \(i)/ \(course.quizz.questions.count)")
                                
                                Text("\(course.quizz.questions.keys[course.quizz.questions.keys.index(course.quizz.questions.startIndex, offsetBy: i)])")
                                    .font(.subheadline)
                                    .multilineTextAlignment(.center)
                                    .bold()
                                    .padding()
                                
                                
                                HStack{
                                    
                                    //boutton Vrai
                                    Button {
                                        userAnswer = "Vrai"
                                        if(userAnswer == (course.quizz.questions.values[course.quizz.questions.values.index(course.quizz.questions.startIndex, offsetBy: i)])
                                        ){
                                            
                                            if(score < course.quizz.questions.count){
                                                score += 1
                                            }
                                            
                                        } else {
                                            if(score > -5){
                                                score -= 1
                                            }
                                        }
                                        //appelle la question suivante
                                        if(i < course.quizz.questions.count) {
                                            i += 1
                                        }
                                        
                                        
                                    } label: {
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundColor(.green)
                                            .font(.system(size: 50))
                                    }
                                    
                                    Spacer()
                                    //Boutton Faux
                                    Button {
                                        userAnswer = "Faux"
                                        if(userAnswer == (course.quizz.questions.values[course.quizz.questions.values.index(course.quizz.questions.startIndex, offsetBy: i)])
                                        ){
                                            if(score < course.quizz.questions.count){
                                                score += 1
                                            }
                                            
                                        } else{
                                            if(score > -5){
                                                score -= 1
                                            }
                                        }
                                        //Appelle la question suivante
                                        if(i < course.quizz.questions.count){
                                            i += 1
                                            
                                        }
                                        
                                    } label: {
                                        Image(systemName: "x.circle.fill")
                                            .foregroundColor(.red)
                                            .font(.system(size: 50))
                                    }
                                    
                                }
                                //Ajouter le nombre de points de l'utilisateur incrémenter par les bonne réponses et décrémenter par les mauvaises
                                Text("\(score) points")
                                //Ajouter le numéro de la question actuelle sur le nombre total de questions
                                
                            }else if (score < score/course.quizz.questions.count || score <= 0) {
                                Text("😖Olala, votre score est de \(score) points. Regarder à nouveau la vidéo.")
                                
                            }else {
                                Text("🥳 Bravo vous avez résussi avec un score de \(score) points")
                                
                            }
                            
                        }
                        
                        
                        
                    }.padding(.horizontal)
                }
                
                .padding(.bottom)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
            }
            
        }
        
        
    }
    
    struct QuizView_Previews: PreviewProvider {
        static var previews: some View {
            QuizView(userAnswer: "Vrai", course: Courses(
                name: "Explorez & rédigez des avis dans Google Maps",
                description: "",
                video: Video(videoID: ""),
                category: ["sur mobile"],
                quizz: Quizz(
                    questions: [
                        "question 1":"Vrai",
                        "question 2":"Vrai",
                        "question 3":"Faux"],
                    img: Image("maps")))).frame(height: 400).padding()
            
        }
    }
}

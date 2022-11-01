//
//  QuizView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 27/10/2022.
//

import SwiftUI

struct QuizView: View {
    
    @State var isChecked : Bool
    

    var questions : [String:String] = [
        "Question1":"Réponse1",
        "Question2":"Réponse2",
        "Question3":"Réponse3",
        "Question4":"Réponse4",
        "Question5":"Réponse5"
    ]
    
    @State var usersAnswers : Int = 0
    
    @State private var translation: CGSize = .zero
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { geometry in
                
                // 2
                VStack(alignment: .leading) {
                    Image("maps")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.75) // 3
                        .clipped()
                    
                    HStack {
                        VStack(alignment: .center, spacing: 6) {
                            //Ajouter le nombre de la question
                            Text("Question")
                                .font(.title)
                                .bold()
                            
                            HStack{
                                //Action next question va modifier la vue
                                //Action incrémenter l'indexo
                                Button {
                                    isChecked = true
                                    if(isChecked == true){
                                        usersAnswers += 1
                                    }
                                } label: {
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(.green)
                                        .font(.system(size: 50))
                                }

                                Spacer()

                                Button {
                                    isChecked = false
                                    if(isChecked == false){
                                        usersAnswers -= 1
                                    }
                                } label: {
                                    Image(systemName: "x.circle.fill")
                                        .foregroundColor(.red)
                                        .font(.system(size: 50))
                                }
                                
                               
                              
//                                Image(systemName: "checkmark.circle.fill")
//                                        .foregroundColor(.green)
//                                        .font(.system(size: 50))
//                                Spacer()
//
//
//                                Image(systemName: "x.circle.fill")
//                                    .foregroundColor(.red)
//                                    .font(.system(size: 50))
                           }
                            Text("\(usersAnswers)")
                                
                              
                        }
                        
                        
                    }.padding(.horizontal)
                }
                // Add padding, corner radius and shadow with blur radius
                .padding(.bottom)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
//                .animation(.interactiveSpring())
//                .offset(x: self.translation.width, y: 0)
//                .rotationEffect(.degrees(Double(self.translation.width / geometry.size.width) * 25), anchor: .bottom)
//                .gesture(
//
//                    DragGesture()
//                        .onChanged { value in
//                                              self.translation = value.translation
//                                          }.onEnded { value in
//                                              self.translation = .zero
//                                          }
//                )
            }
                

            }
        }
    }

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(isChecked: true, questions: ["": ""]).frame(height: 400).padding()
        
    }
}

//
//  LessonDetailView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 26/10/2022.
//

import SwiftUI
//to play video
//import AVKit

struct LessonDetailView: View {
    
    //@Binding var courseList = [Courses]
  
    @State private var islike : Bool = false
    var body: some View {
        NavigationView{
            VStack {
                Image("img10")
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        Button {islike.toggle()}label: {
                                if(islike == true){
                                    Image(systemName: "heart.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.red)
                                        .position(x:350,y:40)
                                }else{
                                    Image(systemName: "heart")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                        .position(x:350,y:40)
                                    }
                            })

                List{
                    Section(header:Text("Nom du cours").font(.headline).foregroundColor(.black)){

                        }

                        Text("Description")
                    
                        Section(header:Text("Commentaire").font(.headline).foregroundColor(.black)){
                            Text("Commentaire")
//                            List{
//                                Text("réponse de commentaire")
//                                Text("réponse de commentaire")
//                            }
                            Text("Commentaire")
                            Text("Commentaire")
                            Text("Commentaire")
                            
                        }
                        Section(header:Text("Quizz du cours").font(.headline).foregroundColor(.black)){
                            Text("Quizz")
                        }
                    }
                }
            }
        }
    }


struct LessonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LessonDetailView()
    }
}

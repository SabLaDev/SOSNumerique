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
                
                    ZStack{
                        Image("img10").resizable().scaledToFit()
                        
                        Button {islike.toggle()}label: {
                                    if(islike == true){
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(.red)
                                    }else{
                                        
                                        Image(systemName: "heart")
                                            
                                            
                                    }
                                }
                    
                    }
                
                List{
                    Section(header:Text("Nom du cours").font(.headline).foregroundColor(.black)){
                        
                           
                        }

                        Text("Description")
                    
                        Section(header:Text("Commentaire").font(.headline).foregroundColor(.black)){
                            Text("Commentaire")
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

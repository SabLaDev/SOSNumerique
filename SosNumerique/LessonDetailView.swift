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
  
    @State private var isfavorite : Bool = false
    @State private var isGraded : Bool = false
   
    
    var course : Courses
    
    var body: some View {
        NavigationView{
            VStack {
                Image(course.video)
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        Button {isfavorite.toggle()}label: {
                                if(isfavorite == true){
                                    Image(systemName: "heart.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.red)
                                        .position(x:350,y:40)
                                    //course.favorite.append(self.Courses)
                                }else{
                                    Image(systemName: "heart")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                        .position(x:350,y:40)
                                    }
                            })
                  
                VStack(spacing: 3){
                    HStack(alignment: .center){
                        Text(course.name)
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        ForEach((1...5), id: \.self) {_ in
                            
                            Button {isGraded.toggle()}label: {
                                if(isGraded == true){
                                    Image(systemName: "star.fill")
                                        .font(.system(size: 15))
                                        .foregroundColor(.yellow)
                                        //.position(x:350,y:40)
                                }else{
                                    Image(systemName: "star")
                                        .font(.system(size: 15))
                                        .foregroundColor(.black)
                                        //.position(x:350,y:40)
                                }
                            }
                          }
                    }
                    
                }
                
               
                List{
                    Section(header:Text("Description")
                        .foregroundColor(.black))
                        {
                        Text(course.description)
                        }.headerProminence(.increased)
                        
                        
                    Section(header:Text("Commentaires")
                            .foregroundColor(.black))
                        {
                            if !(course.commentList?.isEmpty ?? true) {
                                ForEach(course.commentList!) { comment in
                                    CommentLine(photo: comment.authorPhoto, comment: comment.authorMessage, author: comment.authorName)
                                    
                                }
                            }

                        }.headerProminence(.increased)
                    
                    Section(header:Text("Quizz du cours")
                            .foregroundColor(.black))
                        {
                        
                        Text("Qu'est-ce que vous avez retenu?🤔")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(.blue)
                        Text("")
                                
                        
                        }.headerProminence(.increased)
                    }
                //.listStyle(.insetGrouped)
                }
            }
        }
    }


struct LessonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LessonDetailView(course: Courses(
            name: "Télécharger des applications",
            description: "Ce cours explique comment on peut télécharger des applications sur les smartphones Android avec le Play store",
            video: "applications",
            category: [""],
            quizz: Quizz(),
            commentList: [
                Comment(
                authorName: "LaRenarde36",
                authorMessage: "Ce cours était clair et facile, merci.",
                authorPhoto: Image("girl")),
            Comment(
                authorName: "Maria_76",
                authorMessage: "Est-ce que c'est pareil sur un Iphone ?",
                authorPhoto: Image("woman"))
                ]
        ))
    }
}

struct CommentLine: View {
    var photo : Image
    var comment : String
    var author: String
    var replyImg = Image(systemName: "message")
    var reply = ["test",""]
    //var countReply = reply.count()
    @State private var isOpen : Bool = false
    @State private var newComment = ""
    var body: some View {
        
        HStack {
            photo
                .resizable()
                .scaledToFit()
                .frame(height:60)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text(author).foregroundColor(.secondary)
                Text(comment)
                    .lineLimit(2)
                
//                DisclosureGroup("\(replyImg)\(countReply) "){
//                    TextField("Répondre au commentaire",text: $newComment)
                    //reply.append(newComment)
    
                    
                    
//                }
                
            }
            
        }
    }
}

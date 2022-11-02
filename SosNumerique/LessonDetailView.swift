//
//  LessonDetailView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 26/10/2022.
//

import SwiftUI
//to play video
import AVKit

struct LessonDetailView: View {
    
    //@Binding var courseList = [Courses]
    
    //@State private var isfavorite : Bool = false
    @State private var isGraded : Bool = false
    
    @State var favorite : [Courses] = []
    
    @State var isfavorite : Bool = false
    
    var course : Courses
    
    var body: some View {
        
        VStack {
            HStack(alignment: .center) {
                Text(course.name)
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                
                Button {
                    isfavorite.toggle()
                    
                } label: {
                    if(isfavorite == true){
                        HStack {
                            Image(systemName: "heart.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.red)
                        }
                    } else {
                        HStack {
                            Image(systemName: "heart")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.trailing)
                        }
                    }
                }
                
            }
       
            
            VStack(spacing: 3){
                course.video
                    .frame(width: 400, height: 200)
                
                HStack(alignment: .center){
                    
                    
                    ForEach((1...5), id: \.self) {_ in
                        
                        Button {isGraded.toggle()}label: {
                            if(isGraded == true){
                                Image(systemName: "star.fill")
                                    .font(.system(size: 25))
                                    .foregroundColor(.yellow)
                                
                            }else{
                                Image(systemName: "star")
                                    .font(.system(size: 25))
                                    .foregroundColor(.black)
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
                    NavigationLink("Qu'avez-vous retenu?🤔", destination: QuizView(userAnswer: "", course: course))
                    
                }.headerProminence(.increased)
            }
            //.listStyle(.insetGrouped)
        }
        
    }
}


struct LessonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LessonDetailView( course: Courses(
                name: "Télécharger des applications",
                description: "Ce cours explique comment on peut télécharger des applications sur les smartphones Android avec le Play store",
                video: Video(videoID: ""),
                category: [""],
                quizz: Quizz(questions: ["":""], img: Image("applications")),
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
}

struct CommentLine: View {
    var photo : Image = Image("")
    var comment : String = ""
    var author: String = ""
    //var replyImg = Image(systemName: "message")
    //var reply : [Comment]
    //var countReply : Int = 0
    @State private var isOpen : Bool = false
    @State private var newComment = "👍"
    //var hasReply : Bool = false
    
    var body: some View {
        
        HStack(spacing:10) {
            photo
                .resizable()
                .scaledToFit()
                .frame(height:60)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text(author).foregroundColor(.secondary)
                Text(comment)
                    .lineLimit(2)
                
            }
            
        }
    }
}

//
//  LessonListView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 28/10/2022.
//

import SwiftUI

struct LessonListView: View {
  
    @State private var searchText = ""
    var body: some View {
        NavigationView {
            
            List{
                Section(header:Text("Recommander")){
                    }
                    Section(header:Text("Tous les cours")){
//                        ForEach(Courses.name, id: \.self) { lesson in
//                            NavigationLink(destination: LessonDetailView(name: lesson)){
//
//                                Text(lesson.capitalized)
                                
                            }
                            
                }
                        
            }
                .searchable(text: $searchText)
                .navigationTitle("Leçons")
            }
        }
    // Filter Lessons
//    var Lesson : [String] {
//        let lesson = listOfLessons.map{ $0.lowercased() }
//        return searchText == "" ? lesson : lesson.filter(){
//            $0.contains(searchText.lowercased())}
//    }


//struct Courses: Identifiable {
//        var id = UUID()
//        var name : String
//        var description : String
//        var video : String
//        var category : [String]
//        var quizz : Quizz
//        var commentList : [Comment]?
//        var favorite : [Courses] = []
//}

struct LessonListView_Previews: PreviewProvider {
    static var previews: some View {
        LessonListView()
    }
}

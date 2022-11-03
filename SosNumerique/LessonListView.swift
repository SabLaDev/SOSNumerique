//
//  LessonListView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 28/10/2022.
//

import SwiftUI

struct LessonListDetailView: View {
   
    @State private var searchtext: String = ""
    
    private var searchresult: [LessonListDetails] {
        let result = LessonProvider.all()
        if searchtext.isEmpty{ return result }
        return result.filter{
            $0.name.lowercased().contains(searchtext.lowercased())
        }
    }
   
    
    var body: some View {
            
            List(searchresult) { lessondetails in
                NavigationLink(destination:{
                    LessonlistDetailsView( lessondetails: lessondetails )})
                {
                        Image(lessondetails.photo)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 45)
                        .clipShape(Rectangle())
                         Text(lessondetails.name)
                        .padding(7)
                    
                    
                }
            }
            .navigationTitle("Lesson")
            .searchable(text: $searchtext)
    }
}

struct LessonlistDetailsView: View {
    let lessondetails: LessonListDetails
    var body: some View {
       
        VStack(alignment: .center){
                
            Image(lessondetails.photo)
            .resizable()
            .scaledToFit()
            .clipShape(Rectangle())
            .frame(height: 300)

            Text(lessondetails.name)
                .multilineTextAlignment(.center)
                .bold()
                .padding()

            Text(lessondetails.description)
                .multilineTextAlignment(.center)
            Spacer()
            Link(destination: lessondetails.video) {
                Text("Watch Now")
                    .bold()
                    .font(.title2)
                    .frame(width: 250, height: 50)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
            }

        }
           .padding(.all)
        }
    }
struct LessonlistView_Previews: PreviewProvider {
    static var previews: some View {
        LessonListDetailView()
    }
}

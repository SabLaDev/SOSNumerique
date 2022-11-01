//
//  ButtonCollection.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 01/11/2022.
//

import SwiftUI

struct ButtonCollection: View {
    var body: some View {
        HStack{
            MyButtons(image: "figure.walk", legende: "5min")
            MyButtons(image: "phone.fill", legende: "Appeler")
                
            
            MyButtons(image: "safari", legende: "Site Web")
            MyButtons(image: "play.circle", legende: "Plus")
        }
        
        
        .foregroundColor(.white)
    
    }
}

struct MyButtons: View {
    
    var image : String
    var legende : String
    
    var body: some View {
        Button(action: {
            
        }, label: {
            VStack {
                Image(systemName: image)
                Spacer()
                Text(legende)
                    .font(.caption)
            }.frame(width: 35, height: 25 )
            .padding()
            .background(.blue)
            .cornerRadius(10)
            
        })
    }
}

struct MyButtons2: View {
    
    var image : String
    var legende : String
    
    var body: some View {
        Button(action: {
            
        }, label: {
            VStack {
                Image(systemName: image)
                Spacer()
                    .font(.caption)
            }.frame(width: 2, height: 2 )
            .padding()
            .background(.gray)
            .cornerRadius(10)
            
        })
    }
}

struct ButtonCollection_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCollection()
    }
}

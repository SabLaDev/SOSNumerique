//
//  EditView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 01/11/2022.
//

import SwiftUI
import CoreLocation

struct EditView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var pin: Pin
    
    var button2 : MyButtons2
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                HStack {
                    Spacer()
                    Rectangle()
                        .frame(width:100, height: 10)
                        .cornerRadius(15)
                        .padding()
                    .foregroundColor(.secondary)
                    Spacer()
                }
                    
                HStack {
                    Text(pin.name).font(.title).bold()
                    Spacer()
                    MyButtons2(image: "square.and.arrow.up").foregroundColor(.white)
                    MyButtons2(image: "arrowshape.turn.up.right.circle.fill").foregroundColor(.white)
                }.padding()
                   
                Text(pin.description)
                    .foregroundColor(.secondary
                )
                //Bouton bleus
                ButtonCollection()
                .frame(maxWidth: .infinity)
                .padding()
                Text("Détails").bold().font(.title)
                Text(pin.detail).foregroundColor(.secondary)
                Spacer()
            }.padding()

        }
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(pin: Pin(name: "", description: "", coordinate: CLLocationCoordinate2D(), image: "", detail: ""), button2: MyButtons2(image: ""))
    }
}

//
//  PinButtonView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 01/11/2022.
//

import SwiftUI
import CoreLocation

struct PinButtonView: View {
    
    @State private var showingEditScreen = false
    @State var pin: Pin
    
    var body: some View {
        //Bouton sur la map qui ouvre la modale
        Button(action: {
            showingEditScreen.toggle()
        }) {
            Image(pin.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50,height: 50)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(.blue, lineWidth: 25/10))
                .shadow(radius: 10)  
        }
        .sheet(isPresented: $showingEditScreen,
               content: {
            EditView(pin: pin, button2: MyButtons2(image: ""))
               })
    
    }
}

struct Pin: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var coordinate: CLLocationCoordinate2D
    var image: String
    var detail : String

}

struct PinButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PinButtonView(pin: Pin(name: "", description: "", coordinate: CLLocationCoordinate2D(), image: "", detail: ""))
    }
}

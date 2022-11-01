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
            Form {
                button2
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                    TextField("Place name", text: $pin.name)

                    TextField("Description", text: $pin.description)
                    ButtonCollection()
                    .frame(maxWidth: .infinity, alignment: .center)

                Text(pin.detail)
            }
            .navigationTitle("Carte")

        }
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(pin: Pin(name: "", description: "", coordinate: CLLocationCoordinate2D(), image: "", detail: ""), button2: MyButtons2(image: "", legende: ""))
    }
}

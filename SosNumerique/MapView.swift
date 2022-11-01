//
//  MapView.swift
//  SosNumerique
//
//  Created by Apprenant 77 on 01/11/2022.
//
import MapKit
import SwiftUI

struct MapView: View {
    @State private var showingEditScreen = false

    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.855698,
                                       longitude: 2.436691),
        span: MKCoordinateSpan(latitudeDelta: 0.1,
                               longitudeDelta: 0.1)
    )
    


    @State private var pins: [Pin] = [
        Pin(name: "ORSYS",
            description: "ORSYS Formation",
            coordinate: CLLocationCoordinate2D(latitude: 48.892598,
                                               longitude: 2.236112),
           image: "ORSYS Formation",
           detail: "Leader de la formation aux technologies numériques, au développement personnel, ORSYS accompagne les organisations depuis plus de 40 ans en aidant les gens à améliorer leurs performances et à réussir leurs transformations digitale!"),
        
        
        Pin(name: "Co-dev & LabBriq Sociale",
            description: "Formation",
            coordinate: CLLocationCoordinate2D(latitude: 48.8625588,
                                               longitude: 2.4423232),
            image: "Co-dev & LabBriq Sociale",
           detail: "L’association CO-DEV (initialement appelée les Compagnons du Dev) a été fondée en juin 2013 dans l’objectif d’offrir les clés du monde numérique au public le plus large possible."),
        
        Pin(name: "Assofac",
            description: "Formation",
            coordinate: CLLocationCoordinate2D(latitude: 48.79645,
                                               longitude: 2.446713),
           image: "Assofac",
           detail: "ASSOFAC, est un acteur de référence dans le domaine de la formation, depuis plus de 50 ans.Fidèle à sa vocation première, faciliter l’accès de tous aux savoirs fondamentaux, l’ASSOFAC déploie son expertise aux côtés de tous ceux,qui agissent en faveur de la promotion sociale, de l’insertion et de la reconversion."),
        
        Pin(name: "La Passerelle des Métiers du Numérique",
            description: "Formation",
            coordinate: CLLocationCoordinate2D(latitude: 48.900532,
                                               longitude: 2.22408),
            image: "La Passerelle des Métiers du Numérique",
           detail: "L’École PMN, Passerelle des Métiers du Numérique, Groupe FITEC, en partenariat avec des éditeurs informatique leaders mondiaux ou encore des ESN (Entreprises de Services Numérique), propose des cursus de formations ou des doubles compétences en phase avec le marché de l’emploi.")
    ]
    @State var searchText = ""
    var body: some View {
        NavigationView{
            VStack{
                Text("\(searchText)")
                    .searchable(text: $searchText)
                
                Map(coordinateRegion: $region,
                    interactionModes: .all,
                    annotationItems: pins,
                    annotationContent: { pin in
                        MapAnnotation(coordinate: pin.coordinate,
                                      content: {
                                        PinButtonView(pin: pin)
                                      })
                    })
                .navigationTitle("Carte")
            }
        }
    }
}




struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

//
//  lessonlistdetails.swift
//  SosNumerique
//
//  Created by Ikram Hossain on 03/11/2022.
//

import Foundation
struct LessonListDetails: Identifiable{
    let id    = UUID()
    let photo : String
    let name  : String
    let description : String
    let video: URL
}




public struct LessonProvider {
  static func all() -> [LessonListDetails] {
    return [
        LessonListDetails(
            photo: "app",
            name: "comment télécharger l'application",
            description: """
            Sur votre iPhone ou iPad, ouvrez l'application App Store Parcourez les onglets Aujourd'hui, Jeux, Applications ou Arcade pour trouver les applications que vous aimez. Ou appuyez sur l'onglet Rechercher pour rechercher quelque chose de spécifique. Si vous trouvez un jeu qui dit Arcade, abonnez-vous à Apple Arcade pour jouer au jeu. Appuyez ou cliquez sur le prix ou sur le bouton Obtenir. Si vous voyez le bouton Ouvrir au lieu d'un prix ou d'un bouton Obtenir, vous avez déjà acheté ou téléchargé cette application.
            """,
            video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        LessonListDetails(
            photo: "gmail",
            name:"comment envoyer du courrier",
            description: """
            "Étape 1 : Rédigez la lettre. ...
             Étape 2 : Connectez-vous à votre messagerie et rédigez un nouveau message. ...
             Étape 3 : Copiez et collez la lettre de l'endroit où vous l'avez écrite.
             Étape 4 : Relisez votre message. ...
             Étape 5 : cliquez sur envoyer !
            """, video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        LessonListDetails(
            photo: "gmail",
            name: "comment créer un courrier",
            description: """
            Ouvrez votre navigateur et accédez à gmail.com.Cliquez sur le bouton Créer un compte.Saisissez votre nom, votre adresse e-mail préférée et votre mot de passe.Cliquez sur le bouton Suivant.Saisissez votre numéro de téléphone et votre adresse e-mail de récupération. Cliquez sur le bouton Suivant.Acceptez les termes et conditions.Cliquez sur le bouton Suivant.Vérifiez votre compte en saisissant le code de vérification envoyé à votre numéro de téléphone ou à votre adresse e-mail.Cliquez sur le bouton Vérifier.
            """, video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        LessonListDetails(
            photo: "google",
            name: "comment utiliser le navigateur",
            description: "Le navigateur est utilisé pour naviguer à travers les différentes pages du site. Il est situé en haut de l'écran et comporte différents onglets sur lesquels vous pouvez cliquer pour accéder à différentes pages.", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        LessonListDetails(
            photo: "word",
            name: "apprendre à utiliser des word et des pages",
            description: "le word et les pages vous aideront à créer une lettre ou quelque chose d'écrit. C'est très utile d'écrire quelque chose", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        LessonListDetails(
            photo: "icloud",
            name: "comment créer un identifiant apple",
            description: """
                            appuyez sur Mot de passe oublié ou vous n'avez pas d'identifiant Apple ?.
                                                         Appuyez sur Créer un identifiant Apple gratuit.Sélectionnez votre date de naissance et saisissez votre nom. Appuyez sur Suivant.
                                                         Appuyez sur Utiliser votre adresse e-mail actuelle », ou appuyez sur « Obtenir une adresse e-mail iCloud gratuite.
                                                         Suivez les étapes à l'écran pour vérifier votre adresse e-mail, créer un mot de passe fort, définir la région de votre appareil et configurer l'authentification à deux facteurs. Si vous choisissez d'ignorer cette étape, vous serez invité à le faire plus tard dans les paramètres.
                            """, video:URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        
        LessonListDetails(
            photo: "security",
            name: "connaître la confidentialité sur Internet",
            description: "La confidentialité sur Internet implique le droit ou le mandat de confidentialité personnelle concernant le stockage, la réaffectation, la fourniture à des tiers et l'affichage d'informations vous concernant via Internet. La confidentialité sur Internet est un sous-ensemble de la confidentialité des données.", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        
        LessonListDetails(
            photo: "word",
            name: "rédiger un cv",
            description: "La vidéo vous aidera à créer un CV", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        
        LessonListDetails(
            photo: "link",
            name: "créer un identifiant linkedin",
            description: """
                    Inscrivez-vous pour rejoindre Linkedin
                                         Accédez à la page d'inscription de LinkedIn.
                                         Tapez votre nom et prénom, votre adresse e-mail et un mot de passe que vous utiliserez.
                                         Cliquez sur Rejoindre maintenant.
                                         Effectuez toutes les étapes supplémentaires lorsque vous y êtes invité.
                    """, video:URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        
        LessonListDetails(
            photo: "gmail",
            name: "envoyé un mail avec pièce jointe",
            description: """
                Sur votre ordinateur, accédez à Gmail.
                                 Sélectionnez les e-mails que vous souhaitez.
                                 Cliquez sur Plus. Transmettre en pièce jointe.
                                 Dans le champ "À", ajoutez des destinataires. Vous pouvez également ajouter des destinataires dans les champs "Cc" et "Cci".
                                 Ajouter un sujet.
                                 Écrivez votre message.
                                 En bas, cliquez sur Envoyer
                """, video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        
        LessonListDetails(
            photo: "cv",
            name: "envoyé un cv ou poster un cv",
            description: "la vidéo contient beaucoup d'informations", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        
        LessonListDetails(
            photo: "pri",
            name: "comment maintenir votre vie privée sur Internet",
            description: """
            Engagez-vous à moins partager en ligne.
                         Utilisez des mots de passe forts et uniques et une authentification à deux facteurs.
                         Resserrez les paramètres de confidentialité de vos comptes en ligne.
                         Purgez les applications mobiles et les extensions de navigateur inutilisées.
                         Empêchez les moteurs de recherche de vous suivre.
                         Naviguez en ligne avec un VPN sécurisé.
                         N'ignorez pas les mises à jour logicielles.
                         Désactivez le suivi des publicités et des données.
                         Utilisez le cryptage pour protéger les données des regards indiscrets.
                         Révoquez les connexions d'applications tierces inutiles.
            """, video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        
        LessonListDetails(
            photo: "map",
            name: "utiliser des cartes pour rechercher quelque chose",
            description: "Pour rechercher des catégories près de chez vous : sur votre téléphone ou votre tablette Android, ouvrez l'application Google Maps. . Sous la barre de recherche, appuyez sur une suggestion, telle que Restaurants, Café ou Hôtels.", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        LessonListDetails(
            photo: "app",
            name: "apprendre à une nouvelle application",
            description: "Dans cette vidéo, nous allons découvrir 5 applications qui sont une aide complète à notre vie quotidienne.", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        LessonListDetails(
            photo: "vpn",
            name: "en savoir plus sur vpn",
            description: "Un VPN, ou Virtual Private Network, est un réseau privé qui crypte et transmet des données lorsqu'elles se déplacent d'un endroit à un autre. Un VPN peut être utilisé pour se connecter en toute sécurité à un réseau Wifi ou pour naviguer sur Internet sans révéler votre position.", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        LessonListDetails(
            photo: "swift",
            name: "apprendre à swift",
            description: "Swift est un langage de programmation compilé à usage général créé par Apple Inc. et la communauté open source, lancé pour la première fois en 2014. Swift est conçu pour être sûr, rapide et expressif. C'est un successeur de l'Objective-C, le précédent langage de programmation orienté objet à usage général d'Apple. Swift est destiné à être plus résistant au code erroné (plus sûr) qu'Objective-C et également plus concis. Il est construit avec le compilateur LLVM inclus dans Xcode 6 et versions ultérieures et utilise le runtime Objective-C, qui permet au code C, Objective-C, C++ et Swift de s'exécuter dans un seul programme.", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        LessonListDetails(
            photo: "word",
            name: "apprendre à word",
            description: "Nous allons apprendre le word", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        
        LessonListDetails(
            photo: "exel",
            name: "apprendre à excel et les chiffres",
            description: "Excel et Numbers sont deux applications pour faire de la comptabilité et du calcul. il est très utile facile à calculer. ", video: URL(string: "https://youtu.be/k5rupivxnMA")!),
        
        
        
    ]
  }
}

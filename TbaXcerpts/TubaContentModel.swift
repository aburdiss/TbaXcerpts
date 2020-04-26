//
//  TubaContentModel.swift
//  TbaXcerpts
//
//  Created by Alex Burdiss on 4/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import Foundation


/**
 Composition collection that holds all information about a composition, and is displayed on a view.
 */
struct Composition: Identifiable {
    let id: Int
    var composer: String
    var composerLast: String
    var name: String
    var date: String
    var era: String
    var genre: String
    var excerpts: [Excerpt]
    var mutes: String
    var videos: [[String]] /// [Name, YouTubeID]
}

/**
 Excerpt collection that holds images of an excerpt.
 */
struct Excerpt: Identifiable {
    let id: Int
    var description: String
    var measures: String
    var pictures: [[String]] /// [Part, PictureNo.]
}

/**
 Composer collection that holds all the information about a composer. This information is displayed in one view.
 */
struct Composer: Identifiable {
    let id: Int
    var name: String
    var ipa: String
    var image: Int
    var country: String
    var dates: String
    var bio: String
    var excerpts: [Composition]
}

//MARK: Excerpts

let berliozFaust = Composition(id: 1, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Damnation of Faust", date: "1846", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 1, description: "Excerpt 1", measures: "Hungarian March, [20] - End", pictures: [["Tuba", "1000"]]),
    Excerpt(id: 2, description: "Excerpt 2", measures: "Auerbach’s Cellar in Leipzig, mm. 1 - 14", pictures: [["Tuba", "1001"]]),
    Excerpt(id: 3, description: "Excerpt 3", measures: "Auerbach’s Cellar in Leipzig, [39] - 8 mm. after [39] ", pictures: [["Tuba", "1002"]]),
    Excerpt(id: 4, description: "Excerpt 4", measures: "Fugue on the Theme of Brander’s Song", pictures: [["Tuba", "1003"]])
], mutes: "No", videos: [
    ["Antal Doráti, Royal Concertgebouw Orchestra", "qfIspYcnpeY"],
    ["Georg Solti, Chicago Symphony Orchestra", "9l9xZdiwOSk"],
    ["George Szell, Cleveland Orchestra", "4hLcKfe-L_Y"],
    ["Herbert von Karajan, Berliner Philharmoniker", "O32PuoBWKC0"],
    ["Igor Markevitch, Orchester Lamoureux", "Ws_YvHfG1yQ"],
    ["Leonard Bernstein, New York Philharmonic Orchestra", "c-YA9fhcJQc"],
    ["YouTube Symphony Orchestra", "fuqu_eNO51M"],
    // Band
    ["Col. John R. Bourgeois, \"The President's Own\" Marine Band", "LkSbzdvKClM"],
    // Masterclasses
    ["Southeast Trombone Symposium", "TBwYSOIscw0"]
])


let pictures = [["Tuba", ""]]

/*
X Berlioz Damnation of Faust
 Berlioz Benvenuto Cellini
 Berlioz King Lear
 Berlioz Le Corsaire
 Berlioz Romeo and Juliet
 Berlioz Symphonie Fantastique
 Brahms Academic Festival Overture
 Brahms Tragic Overture
 Brahms: Symphony No. 2
 Bruckner Symphony No. 4
 Bruckner Symphony No. 7
 Bruckner Symphony No. 8
 Bruckner Symphony No. 9
 Franck Symphony in D
 Holst First Suite in Eb
 Holst The Planets
 Liszt/Brown Les Preludes
 Liszt/Kindig Mazeppa
 Mahler Symphony No. 1
 Mahler Symphony No. 2
 Mahler Symphony No. 3
 Mahler Symphony No. 5
 Mahler Symphony No. 6
 Mahler Symphony No. 9
 Mendelssohn A Midsummernight’s Dream
 Mussorgsky Night on Bald Mountain
 Mussorgsky/Ravel: Pictures at an Exhibition
 Respighi Fountains of Rome
 Rimsky-Korsakov Scheherazade
 Sibelius Symphony 2
 Sibelius Symphony No. 1
 Sousa The Stars and Stripes Forever
 Strauss Also sprach Zarathustra
 Strauss Ein Heldenleben
 Strauss Till Elenspiegels lustige Streiche
 Stravinsky Petrouchka
 Tchaikovsky Romeo and Juliet
 Tchaikovsky Sleeping Beauty
 Tchaikovsky Swan Lake
 Tchaikovsky Symphony No. 4
 Tchaikovsky Symphony No. 5
 Tchaikovsky Symphony No. 6
 Verdi Overture to Nabucco
 Verdi/Lake Overture to La forza del destino
 Wagner Das Rheingold
 Wagner Die Meistersinger
 Wagner Die Walküre
 Wagner Faust Overture
 Wagner Götterdämmerung
 Wagner Lohengrin
 Wagner Siegfried
 Wagner Tannhauser
 */

//MARK: Composers

let berlioz = Composer(id: 2, name: "Hector Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2000, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.", excerpts: [
    berliozFaust
])

//MARK: Model

/**
 An Organized model of all of the Compositions and Composers in alphabetical order.
 */
class TubaContentModel: ObservableObject {
    /**
     An alphabetical list of all of the compositions in the app.
     */
    var excerpts: [Composition] = [
        berliozFaust
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        berlioz
    ]
}



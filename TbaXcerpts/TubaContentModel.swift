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

let berliozFaust = Composition(id: 1, composer: "Hector Berlioz", composerLast: "Berlioz", name: "The Damnation of Faust", date: "1846", era: "Romantic", genre: "Opera", excerpts: [
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
    ["Gene Pokorny", "6fzshngQtIA"],
    ["Southeast Trombone Symposium", "TBwYSOIscw0"]
])

let berliozBenvenuto = Composition(id: 2, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Benvenuto Cellini", date: "1838", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 5, description: "Excerpt 1", measures: "Overture, [15] - 5 mm. after [19]", pictures: [["Tuba", "1004"]])
], mutes: "No", videos: [
    ["Lorin Maazel, Symphonieorchester des Bayerischen Rundfunks", "MkV8_QPfJt0"],
    ["Sir Colin Davis, BBC Symphony Orchestra", "jX-TmMo6TX0"],
    ["Sir Mark Elder, The Hallé", "7iN9jroI_M4"],
    ["Valery Gergiev, Vienna Philharmonic Orchestra", "a82dmk0p5Rc"],
    // Bands
    [" Ballylone Concert FB", "93mflHKmn60"],
])

let berliozKingLear = Composition(id: 3, composer: "Hector Berlioz", composerLast: "Berlioz", name: "King Lear", date: "1831", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 6, description: "Excerpt 1", measures: "3 mm. after [21] - 8 mm. after [22]", pictures: [["Tuba", "1005"]])
], mutes: "No", videos: [
    ["Charles Dutoit, Orchestre Symphonique de Montréal", "_Zd3cxKOwhY"],
    ["Matthew Bishop, Florida State University Symphony Orchestra", "EFxN_iRuJO8"],
    ["Schalk Van Der Merwe, Cape Town Philharmonic Orchestra", "EtYeilpRhlM"],
    ["Andrew Davis, Bergen Filharmoniske Orkester", "sEoyvkWVePE"],
    ["Sir Colin Davis, Bavarian Radio Symphony Orchestra", "_Edm5ksKjCQ"],
    ["Sir Colin Davis, London Symphony Orchestra", "m7pDDv20Snc"],
    ["Sir Colin Davis, Staatskapelle Dresden", "StvrBVSKE_Y"],
    ["Sir Thomas Beecham, Royal Philharmonic Orchestra", "8ydvfDD75Pc"],
    ["Yuri Simonov, Moscow Philharmonic Orchestra", "URjxfXvHAEo"],
    // Masterclasses
    ["Sir Colin Davis, Symphonieorchester des Bayerischen Rundfunks (Excerpts)", "2IQNxs0jT8U"]
])

let berliozLeCorsaire = Composition(id: 4, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Le Corsaire", date: "1844", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 7, description: "Excerpt 1", measures: "[5] - 17 mm. before [6] ", pictures: [["Tuba", "1006"]]),
    Excerpt(id: 8, description: "Excerpt 2", measures: "3 mm. after [12] - [13] ", pictures: [["Tuba", "1007"]]),
    Excerpt(id: 9, description: "Excerpt 3", measures: "[16] - 8 mm. after [17] ", pictures: [["Tuba", "1008"]]),
    Excerpt(id: 10, description: "Excerpt 4", measures: "6 mm. before [19] to [19] ", pictures: [["Tuba", "1009"]])
], mutes: "No", videos: [
    ["André Previn, NHK Symphony Orchestra", "hLhuumLwmlA"],
    ["大植 英次 (Eiji Oue), Osaka Philharmonic Orchestra", "Erm2sZUji2c"],
    ["Hans Vonk, St. Louis Symphony Orchestra", "oxBogTLIjLQ"],
    ["Kenneth Jean, Polish State Philharmonic Orchestra", "bBqCB8Upia4"],
    ["Paavo Järvi, Orchestre de Paris", "d7kez0F0UJ4"],
    ["Peter Holmann, The Hamburg Symphony Orquestra", "99J-zyAzTKo"],
    ["Riccardo Muti, Orchestra Filarmonica della Scala", "Zvh8AN0nx-U"],
    ["Sir Colin Davis, London Symphony Orchestra", "-xB3pAPnmCE"],
    ["Sir Colin Davis, Staatskapelle Dresden", "Z_vTmS4pmus"],
    // Masterclasses
    ["Sir Colin Davis, Staatskapelle Dresden (Excerpts)", "uCEFN-BZidQ"]
])

let berliozRomeo = Composition(id: 5, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Roméo et Juliette", date: "1839", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 11, description: "Excerpt 1", measures: "14 mm. before [4] - 8 mm. after [6] ", pictures: [["Tuba", "1010"]]),
    Excerpt(id: 12, description: "Excerpt 2", measures: "27 mm. before [84] - 1 mm. after [84] ", pictures: [["Tuba", "1011"]]),
    Excerpt(id: 13, description: "Excerpt 3", measures: "2 mm. after [89] - 13 mm. after [89] ", pictures: [["Tuba", "1012"]])
], mutes: "No", videos: [
    ["Arturo Toscanini, NBC Symphony Orchestra", "sqCYRgl2jMg"],
    ["Carlo Maria Giulini, Koninklijk Concertgebouworkest", "O-FN6NwGwF8"],
    ["Carlo Maria Giulini, Orquesta Real del Concertgebouw", "T1Bnu6i0QA8"],
    ["Daniele Gatti, The Orchestre National de France", "zf7kGcB4VSQ"],
    ["James Gaffigan, Radio Filharmonisch Orkest", "SRIie-baG6w"],
    ["James Levine, Berliner Philarmoniker", "5YVM9qHGqpk"],
    ["John Eliot Gardiner, Orchestra Révolutionnaire et Romantique", "6JADiAECnRQ"],
    ["Pierre Boulez, The Cleveland Orchestra", "szZGfAa4NYc"],
    ["Sir Colin Davis, London Symphony Orchestra", "Rq70kveJxrw"],
    // Masterclasses
    ["Gene Pokorny", "zL3d4OulBQE"]
])

let berliozSymphonie = Composition(id: 6, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Symphonie fantastique", date: "1830", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 14, description: "Excerpt 1", measures: "Mov. IV, 2 mm. before [53] - 7 mm. before [54]", pictures: [["Ophicleïde 1", "1013"]]),
    Excerpt(id: 15, description: "Excerpt 2", measures: "Mov. IV, [56] - 3 mm. after [58]", pictures: [["Ophicleïde 1", "1014"], ["Ophicleïde 2", "1015"]]),
    Excerpt(id: 16, description: "Excerpt 3", measures: "Mov. V, [60] - 1 mm. before [61]", pictures: [["Ophicleïde 1", "1016"]]),
    Excerpt(id: 17, description: "Excerpt 4", measures: "Mov. V, 11 mm. before [63] - [63]", pictures: [["Ophicleïde 1", "1017"]]),
    Excerpt(id: 18, description: "Excerpt 5", measures: "Mov. V, 6 mm. after [66] - 14 mm. before [69]", pictures: [["Ophicleïde 1", "1018"], ["Ophicleïde 2", "1019"]]),
    Excerpt(id: 19, description: "Excerpt 6", measures: "Mov. V, [84] - End", pictures: [["Ophicleïde 1", "1020"], ["Ophicleïde 2", "1021"]])
], mutes: "No", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "AgXW-57UDMc"],
    ["정명훈 (Chung Myung-Whun)", "5HgqPpjIH5c"],
    ["Gustavo Dudamel, Orchestre philharmonique de Radio France", "HDHPgqv4hsw"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "sK4dz6Gbcdk"],
    ["Leonard Bernstein, Orchestre National de France", "rQXtC6B3CKQ"],
    ["Leopold Stokowski, New Philharmonia Orchestra (With Score)", "ewoAW-Zyuj8"],
    ["Mariss Jansons, Bavarian Radio Symphony Orchestra", "yK6iAxe0oEc?t=284"],
    // Masterclasses
    ["Gene Pokorny", "cVhYO0TZ5Bw"],
    ["Southeast Trombone Symposium", "oYSnGq5wNxU"]
])

let brahmsAcademic = Composition(id: 7, composer: "Johannes Brahms", composerLast: "Brahms", name: "Academic Festival Overture", date: "1880", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 20, description: "Excerpt 1", measures: "[C] - 14 mm. before [E]", pictures: [["Tuba", "1022"]]),
    Excerpt(id: 21, description: "Excerpt 2", measures: "[K] - 3 mm. after [M]", pictures: [["Tuba", "1023"]]),
    Excerpt(id: 22, description: "Excerpt 3", measures: "mm. 379 - End", pictures: [["Tuba", "1024"]])
], mutes: "No", videos: [
    ["Bernard Haitink, Royal Concertgebouw Orchestra (With Score)", "5AkQrnLPvC4"],
    ["Claudio Abbado, Berliner Philharmoniker", "iIss3Gca6Qo"],
    ["Leonard Bernstein", "Y1E6FBi-AJw"],
    ["Otto Klemperer, Philharmonia Orchestra", "bjLrZqYguFs"],
    ["Paavo Järvi, Orchestre de Paris", "R5pzr5655yw"],
    ["Sir Georg Solti, Chicago Symphony Orchestra", "JMIxE-tc6r0"],
    // Bands
    ["Mark H. Hindsley, The University of Illinois Concert Band", "fiW2N96aPoE"]
])

let brahms2 = Composition(id: 8, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 2", date: "1877", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 23, description: "Excerpt 1", measures: "Mov. IV, [O] - 14 mm. before [P]", pictures: [["Tuba", "1025"]]),
    Excerpt(id: 24, description: "Excerpt 2", measures: "Mov. IV, [P] - end", pictures: [["Tuba", "1026"]])
], mutes: "No", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "qbcfuMlNRWg"],
    ["Carlos Kleiber, Wiener Philharmoniker", "XHmkl7GM_es"],
    ["Carlos Kleiber, Wiener Philharmoniker (With Score)", "HCkSpCh4Wcw"],
    ["Kurt Masur, Gewandhausorchester Leipzig", "lSii-jC6-Uo"],
    ["Leonard Bernstein, Wiener Philharmoniker", "6nKd-ia7_Lc"],
    ["Philippe Herreweghe, Frankfurt Radio Symphony Orchestra", "vMPP8DkVhk8"],
    ["Seiji Ozawa, Saito Kinen Orchestra", "QnTNiYTHQ90"],
    // Masterclasses
    ["Multiple Orchestras (Excerpts)", "c7IZkVIH2D4"],
    ["NDR Elbphilharmonie Orchestra Trombones", "xIM-R4zWO9w"]
])

let brahmsTragic = Composition(id: 9, composer: "Johannes Brahms", composerLast: "Brahms", name: "Tragic Overture", date: "1880", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 25, description: "Excerpt 1", measures: "mm. 10 - 16", pictures: [["Tuba", "1027"]]),
    Excerpt(id: 26, description: "Excerpt 2", measures: "[E] - 5 mm. after [E]", pictures: [["Tuba", "1028"]]),
    Excerpt(id: 27, description: "Excerpt 3", measures: "mm. 395 - 4 mm. before [T]", pictures: [["Tuba", "1029"]])
], mutes: "No", videos: [
    ["Claudio Abbado, Berliner Philharmoniker", "DmTMrgZ4Q3U"],
    ["Daniele Gatti, Royal Concertgebouw Orchestra", "TQ5NEdUiIec"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "3ixfKBIkz1U"],
    ["Herbert von Karajan, Wiener Philharmoniker", "c-UKntDUWPo"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "siYoz9CLA2c"],
    ["Sir Colin Davis, European Union Youth Orchestra", "4hkSZiIbJyA"],
    ["Sir Georg Solti, Chicago Symphony Orchestra", "xcyfLyR2QZk"],
    // Masterclasses
    ["Herbert von Karajan, Berliner Philharmoniker (Excerpts)", "YNc_Zxv9gHk"]
])

let bruckner4 = Composition(id: 10, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 4", date: "1874", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 28, description: "Excerpt 1", measures: "Mov. I, [D] - mm. 150", pictures: [["Tuba", "1030"]]),
    Excerpt(id: 29, description: "Excerpt 2", measures: "Mov. I, [I] - [K] ", pictures: [["Tuba", "1031"]]),
    Excerpt(id: 30, description: "Excerpt 3", measures: "Mov. I, [N] - [O] ", pictures: [["Tuba", "1032"]]),
    Excerpt(id: 31, description: "Excerpt 4", measures: "Mov. I, mm. 479 - 491", pictures: [["Tuba", "1033"]]),
    Excerpt(id: 32, description: "Excerpt 5", measures: "Mov. III, mm. 71 - 91", pictures: [["Tuba", "1034"]]),
    Excerpt(id: 33, description: "Excerpt 6", measures: "Mov. IV, mm. 43 - 53", pictures: [["Tuba", "1035"]]),
    Excerpt(id: 34, description: "Excerpt 7", measures: "Mov. IV, mm. 167 - 182", pictures: [["Tuba", "1036"]]),
    Excerpt(id: 35, description: "Excerpt 8", measures: "Mov. IV, [M] - [O] ", pictures: [["Tuba", "1037"]]),
    Excerpt(id: 36, description: "Excerpt 9", measures: "Mov. IV, [P] - [Q]", pictures: [["Tuba", "1038"]])
], mutes: "No", videos: [
    ["Claudio Abbado, Wiener Philharmoniker", "gcBg-tXn0fs"],
    ["Daniel Barenboim, Royal Concertgebouw Orchestra", "xdv-9RFZX2w"],
    ["Eliahu Inbal, Frankfurt Radio Symphony", "DEssCDEAyig"],
    ["Gustavo Gimeno, The Radio Philharmonic Orchestra", "G_VFA988d8s"],
    ["Herbert von Karajan, Berliner Philharmoniker", "rCvOXwgOvOo"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "LY7m119eOys"],
    ["Stanislaw Skrowaczewski, Orquesta Sinfónica de Galicia", "P_BXBiHtIGM"],
    // Masterclasses
    ["Sir Georg Solti, Chicago Symphony (Excerpts)", "J-69mjD7WSg"]
])

let bruckner7 = Composition(id: 11, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 7", date: "1881", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 38, description: "Excerpt 1", measures: "Mov. I, 10 mm. after [A] - 7 mm. before [B] ", pictures: [["Tuba", "1039"]]),
    Excerpt(id: 39, description: "Excerpt 2", measures: "Mov. I, mm. 127 - 130", pictures: [["Tuba", "1040"]]),
    Excerpt(id: 40, description: "Excerpt 3", measures: "Mov. I, 2 mm. after [M] - [N]", pictures: [["Tuba", "1041"]]),
    Excerpt(id: 41, description: "Excerpt 4", measures: "Mov. II, [X] - [Y]", pictures: [["Tuba", "1042"]]),
    Excerpt(id: 42, description: "Excerpt 5", measures: "Mov. III, 8 mm. after [C] - 3 mm. before [D]", pictures: [["Tuba", "1043"]]),
    Excerpt(id: 43, description: "Excerpt 6", measures: "Mov. IV, [P] - [S] ", pictures: [["Tuba", "1044"]]),
    Excerpt(id: 44, description: "Excerpt 7", measures: "Mov. IV, [V] - [W] ", pictures: [["Tuba", "1045"]])
], mutes: "No", videos: [
    ["Andris Nelsons, Gewandhausorchester Leipzig", "_6sX6aIlgJk"],
    ["Bernard Haitink, Wiener Philharmoniker", "_6sX6aIlgJk"],
    ["Christoph Eschenbach, Frankfurt Radio Symphony", "uaV3eEJB55c"],
    ["Christian Thielemann, Wiener Philharmoniker", "cuXPkoOM2j8"],
    ["Herbert von Karajan, Wiener Philharmoniker", "3pioV8yB3iA"],
    ["Otto Klemperer, Philharmonia Orchestra", "wGoYMjVagqQ"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "2X2bbusaOzI"],
    ["Wilhelm Furtwängler, Berliner Philharmoniker", "ihK5eDpP2vU"],
    // Masterclasses
    ["Gene Pokorny", "bJ4hMBRdAhs"],
    ["London Philharmonic Orchestra Trombones","D0SRo79T_Sw"]
])

let bruckner8 = Composition(id: 12, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 8", date: "1887", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 45, description: "Excerpt 1", measures: "Mov. I, 1 mm. before [V] - 7 mm. before [X]", pictures: [["Tuba", "1046"]]),
    Excerpt(id: 46, description: "Excerpt 2", measures: "Mov. III, [H] - [I] ", pictures: [["Tuba", "1047"]]),
    Excerpt(id: 47, description: "Excerpt 3", measures: "Mov. III, [O] - 2 mm. after [Q]", pictures: [["Tuba", "1048"]]),
    Excerpt(id: 48, description: "Excerpt 4", measures: "Mov. IV, mm. 3 - 40", pictures: [["Tuba", "1049"]]),
    Excerpt(id: 49, description: "Excerpt 5", measures: "Mov. IV, [X] - [Z] ", pictures: [["Tuba", "1050"]]),
    Excerpt(id: 50, description: "Excerpt 6", measures: "Mov. IV, 1 mm. before [Gg] - [Hh]", pictures: [["Tuba", "1051"]]),
    Excerpt(id: 51, description: "Excerpt 7", measures: "Mov. IV, 5 mm. before [Ii] - [Ll]", pictures: [["Tuba", "1052"]])
], mutes: "No", videos: [
    ["Carlo Maria Giulini, Vienna Philharmonic Orchestra", "xT5kreOhjxU"],
    ["Herbert von Karajan, Vienna Philharmonic Orchestra", "qqCsF_dIN5A"],
    ["Paavo Järvi, Frankfurt Radio Symphony Orchestra", "-UPIEJAptcY"],
    ["Pierre Boulez, Vienna Philharmonic Orchestra", "ufqC1LCpHV4"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "elVHvTrEM34"],
    ["Wilhelm Furtwängler, Berliner Philharmoniker", "7aDNxyFgLXQ"],
    ["Wilhelm Furtwängler, Wiener Philharmoniker", "YNona1BCvkY"],
    ["Zubin Mehta, Wiener Philharmoniker", "razu3fSqnVE"],
    // Masterclasses
    ["London Philharmonic Orchestra Trombones", "kQEKd0qA-XE"],
    ["Southeast Trombone Symposium", "5fj7eri3NNY"]
])

let bruckner9 = Composition(id: 13, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 9", date: "1887", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 52, description: "Excerpt 1", measures: "Mov. I, [N] - [O] ", pictures: [["Tuba", "1053"]]),
    Excerpt(id: 53, description: "Excerpt 2", measures: "Mov. II, mm. 44 - 50", pictures: [["Tuba", "1054"]]),
    Excerpt(id: 54, description: "Excerpt 3", measures: "Mov. III, [Q] - [R] ", pictures: [["Tuba", "1055"]])
], mutes: "No", videos: [
    ["Bernard Haitink, The Orchestre National de France", "MIJET6NO4-k"],
    ["Claudio Abbado, Berliner Philharmoniker Orchester", "DKQCkmeWJAc"],
    ["Herbert Blomstedt, Gustav Mahler Jugendorchester", "KBZgSC-8Yp0"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "Tw2LNhwnquk"],
    ["Nézet-Séguin, Wiener Philharmoniker", "wcCamtD5ufs"],
    ["Sergiu Celibidache, Munich Philharmonic Orchestra", "JvlkX4VGN-c"],
    ["Stanisław Skrowaczewski, Frankfurt Radio Symphony Orchestra", "Az-kHLRQhsk"],
    ["Wilhelm Furtwängler, Berliner Philharmoniker", "tOfTE-vbKDc"]
])

let franckD = Composition(id: 14, composer: "César Franck", composerLast: "Franck", name: "Symphony in D minor", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 55, description: "Excerpt 1", measures: "Mov. III, [M] - 18 mm. after [N]", pictures: [["Tuba", "1056"]]),
    Excerpt(id: 56, description: "Excerpt 2", measures: "Mov. III, 4 mm. before [S] - End", pictures: [["Tuba", "1057"]])
], mutes: "No", videos: [
    ["Kurt Masur, New York Philharmonic Orchestra", "r0W3fqfr2CY"],
    ["Leonard Bernstein, Orchestre National de France", "uosj6PZLKKE"],
    ["Marc Minkowski, Frankfurt Radio Symphony", "uRWFjK11lfw"],
    ["Marc Soustrot, University of Gothenburg Symphony Orchestra", "9srAs4ss2kU"],
    ["Pierre Monteux, Chicago Symphony Orchestra", "G7obO7XyyQc"],
    ["Ricardo Muti, Philadelphia Orchestra", "0nF6TobCyV4"],
    ["Sergiu Celibidache, Munich Philharmonic Orchestra", "ytdSWSE7zxo"],
    // Masterclasses
    ["Pierre Monteux, Chicago Symphony (Excerpts)", "HjjLcHIsGHM"]
])

let holstFirstSuite = Composition(id: 15, composer: "Gustav Holst", composerLast: "Holst", name: "First Suite in E♭ for Military Band", date: "1909", era: "Modern", genre: "Suite for Wind Band", excerpts: [
    Excerpt(id: 57, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 8", pictures: [["Euphonium", "1058"], ["Tuba", "1059"]]),
    Excerpt(id: 58, description: "Excerpt 2", measures: "Mov. I, 7 mm. after [B] - [C]", pictures: [["Euphonium", "1060"], ["Tuba", "1061"]]),
    Excerpt(id: 59, description: "Excerpt 3", measures: "Mov. II, [F] - 3 mm. before End", pictures: [["Euphonium", "1062"], ["Tuba", "1063"]])
], mutes: "No", videos: [
    ["Dr. Eric Wilson, Baylor University Wind Ensemble", "8kFQ034Zd10"],
    ["Frederick Fennell, The Cleveland Symphonic Winds (With Condensed Score)", "RrRwoD1Yx8A"],
    ["Frederick Fennell, The Cleveland Symphonic Winds (With Score)", "Rp0ebn9WQIQ"],
    ["Frederick Fennell, United States Marine Band", "fLbP6qpI1YI"],
    ["Gary Hill, The U.S. Army Concert Band", "tKIGQi7flGA"],
    ["Gerard Schwarz, The United States Marine Band", "mKkD53fYhTs"],
    ["Michael Haithcock, University of Michigan Symphony Band", "sdd71Nfb_Pk"],
    ["Tatsuya Shimono, Tokyo Kosei wind Orchestra", "AKIGs59nRc8"],
])

let holstPlanets = Composition(id: 16, composer: "Gustav Holst", composerLast: "Holst", name: "The Planets", date: "1916", era: "Modern", genre: "Orchestral Suite", excerpts: [
    Excerpt(id: 60, description: "Excerpt 1", measures: "Mov. I, [5] - 3 mm. before [6]", pictures: [["Tenor Tuba", "1064"], ["Tuba", "1065"]]),
    Excerpt(id: 61, description: "Excerpt 2", measures: "Mov. I, mm. 110 - [8] ", pictures: [["Tenor Tuba", "1066"], ["Tuba", "1067"]]),
    Excerpt(id: 62, description: "Excerpt 3", measures: "Mov. I, 2 mm. after [8] - [9]", pictures: [["Tenor Tuba", "1068"]]),
    Excerpt(id: 63, description: "Excerpt 4", measures: "Mov. IV, mm. 16 - 28", pictures: [["Tenor Tuba", "1069"], ["Tuba", "1070"]]),
    Excerpt(id: 64, description: "Excerpt 5", measures: "Mov. IV, mm. 148 - [7]", pictures: [["Tenor Tuba", "1071"], ["Tuba", "1072"]]),
    Excerpt(id: 65, description: "Excerpt 6", measures: "Mov. IV, 3 mm. after [11] - mm. 274", pictures: [["Tenor Tuba", "1073"], ["Tuba", "1074"]]),
    Excerpt(id: 66, description: "Excerpt 7", measures: "Mov. IV, mm. 380 - 395", pictures: [["Tenor Tuba", "1075"], ["Tuba", "1076"]]),
    Excerpt(id: 67, description: "Excerpt 8", measures: "Mov. V, mm. 101 - [5] ", pictures: [["Tuba", "1077"]]),
    Excerpt(id: 68, description: "Excerpt 9", measures: "Mov. VI, mm. 67 - [3] ", pictures: [["Tenor Tuba", "1078"], ["Tuba", "1079"]]),
    Excerpt(id: 69, description: "Excerpt 10", measures: "Mov. VI, mm. 138 - 145", pictures: [["Tenor Tuba", "1080"], ["Tuba", "1081"]])
], mutes: "No", videos: [
    ["André Previn,  London Symphony Orchestra (With Score)", "YRDF2YJojAM"],
    ["Edward Gardner, National Youth Orchestra", "be7uEyyNIT4"],
    ["Eugene Ormandy, Philadelphia Orchestra", "YtphY-4xjQw"],
    ["Maciej Tarnowski, Warsaw Philharmonic Orchestra", "3OD_HzdZwKk"],
    ["Sir Adrian Boult, BBC Symphony Orchestra (With Score)", "eSqb7gD5acY"],
    ["Sir Charles Groves, Royal Philharmonic Orchestra", "UmOTMkoCCkM"],
    ["William Steinberg, Boston Symphony Orchestra", "Isic2Z2e2xs"],
    // Masterclasses
    ["Gene Pokorny", "HOl0ZkDTKYY"],
    ["James Levine, Chicago Symphony (Jupiter Excerpts)", "vebfIgtgJ3M"],
    ["James Levine, Chicago Symphony (Saturn Excerpts)", "8iAo5Bwl8qw"],
    ["James Levine, Chicago Symphony (Uranus Excerpts)", "e6xpgOQytKM"],
    ["Michael Mulcahy", "JSQgvE-VF_8"],
])

let mahler1 = Composition(id: 17, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 1", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 70, description: "Excerpt 1", measures: "Mov. I, 11 mm. before [25] - [25]", pictures: [["Tuba", "1082"]]),
    Excerpt(id: 71, description: "Excerpt 2", measures: "Mov. II, 3 mm. after [15] - 3 mm. before [16]", pictures: [["Tuba", "1083"]]),
    Excerpt(id: 72, description: "Excerpt 3", measures: "Mov. II, 3 mm. after [32] - End", pictures: [["Tuba", "1084"]]),
    Excerpt(id: 73, description: "Excerpt 4", measures: "Mov. III, 4 mm. before [3] - 3 mm. before [5]", pictures: [["Tuba", "1085"]]),
], mutes: "No", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "cqVIMEQfEd4"],
    ["Claudio Abbado, Chicago Symphony Orchestra", "UUypHJHFBq4"],
    ["Daniel Harding, Royal Concertgebouw Orchestra Amsterdam", "_JXMFbGRyII"],
    ["Leonard Bernstein, Concertgebouw Orchestra (With Score)", "ypClfhEwwCw"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "cQFjDBFXN58"],
    ["Lorin Maazel, New York Philharmonic", "d-rou1r9A5o"],
    ["Lorin Maazel, Sinfónica de Galicia", "IC56kGOgscI"],
    ["Marin Alsop, Peabody Symphony Orchestra", "UkvYOTJg9sM"],
    ["Paul Haas, Boston University Tanglewood Institute", "xoxI02g57TU"],
    ["Yannick Nézet-Séguin, Symphonieorchester des Bayerischen Rundfunks", "K-Pwh5Y5z14"],
    // Masterclasses
    ["Gene Pokorny", "nC0jlmSE5ls"]
])

let mahler2 = Composition(id: 18, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 2", date: "1894", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 74, description: "Excerpt 1", measures: "Mov. I, 3 mm. before [18] - 4 mm. after [18]", pictures: [["Tuba", "1086"]]),
    Excerpt(id: 75, description: "Excerpt 2", measures: "Mov. I, mm. 312 - 314", pictures: [["Tuba", "1087"]]),
    Excerpt(id: 76, description: "Excerpt 3", measures: "Mov. I, [20] - 4 mm. after [20]", pictures: [["Tuba", "1088"]]),
    Excerpt(id: 77, description: "Excerpt 4", measures: "Mov. V, [14] - [15]", pictures: [["Tuba", "1089"]]),
    Excerpt(id: 78, description: "Excerpt 5", measures: "Mov. V, mm. 301 - 307", pictures: [["Tuba", "1090"]]),
    Excerpt(id: 79, description: "Excerpt 6", measures: "Mov. V, [25] - 8 mm. after [26]", pictures: [["Tuba", "1091"]])
], mutes: "No", videos: [
    ["Bernard Haitink, Koninklijk Concertgebouworkest", "oUBx_Q-xw2M"],
    ["Gustavo Dudamel, Simón Bolívar Symphony Orchestra of Venezuela", "rKrsEbjXYX8"],
    ["Leonard Bernstein, London Symphony Orchestra", "edA9Zard3-U"],
    ["Leonard Bernstein, New York Philharmonic (With Score)", "z2KcsjA_PEQ"],
    ["Mariss Jansons, Royal Concertgebouw Orchestra", "sHsFIv8VA7w"],
    // Masterclasses
    ["Claudio Abbado, Lucerne festival Orchestra", "c7IZkVIH2D4"],
    ["New York Philharmonic Trombones", "jpngMjN6fmQ"],
    ["Southeast Trombone Symposium", "IQgPSZq1bzs"]
])

let mahler3 = Composition(id: 19, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 3", date: "1896", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 80, description: "Excerpt 1", measures: "Mov. I, [2] - 3 mm. after [4]", pictures: [["Tuba", "1092"]]),
    Excerpt(id: 81, description: "Excerpt 2", measures: "Mov. I, 1 mm. after [44] - 2 mm. before [45]", pictures: [["Tuba", "1093"]]),
    Excerpt(id: 82, description: "Excerpt 3", measures: "Mov. I, 6 mm. before [74] - End", pictures: [["Tuba", "1094"]]),
    Excerpt(id: 83, description: "Excerpt 4", measures: "Mov. III, 4 mm. before [20] - [21] ", pictures: [["Tuba", "1095"]])
], mutes: "No", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "oSBfEPAnDsY"],
    ["Bernard Haitink, Koninklijk Concertgebouworkest", "XYNk8VOGKa8"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "Xplx64LVENg"],
    ["Jukka-Pekka Saraste, WDR Sinfonieorchester Köln", "Cjp-n6xS1CE"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "1AwFutIcnrU"],
    ["Semyon Bychkov, WDR Sinfonieorchester Köln (With Score)", "pRhQhUtOpPI"]
])

let mahler5 = Composition(id: 20, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 5", date: "1902", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 84, description: "Excerpt 1", measures: "Mov. I, 10 mm. before [12] - [12]", pictures: [["Tuba", "1096"]]),
    Excerpt(id: 85, description: "Excerpt 2", measures: "Mov. II, 6 mm. before [20] - 7 mm. after [20] ", pictures: [["Tuba", "1097"]]),
    Excerpt(id: 86, description: "Excerpt 3", measures: "Mov. II, 8 mm. before [25] - [25] ", pictures: [["Tuba", "1098"]]),
    Excerpt(id: 87, description: "Excerpt 4", measures: "Mov. II, 4 mm. before End - End", pictures: [["Tuba", "1099"]]),
    Excerpt(id: 88, description: "Excerpt 5", measures: "Mov. III, 13 mm. before [16] - [17] ", pictures: [["Tuba", "1100"]]),
    Excerpt(id: 89, description: "Excerpt 6", measures: "Mov. III, [21] - [22] ", pictures: [["Tuba", "1101"]]),
    Excerpt(id: 90, description: "Excerpt 7", measures: "Mov. III, [25] - [26] ", pictures: [["Tuba", "1102"]]),
    Excerpt(id: 91, description: "Excerpt 8", measures: "Mov. III, 4 mm. after [30] - 8 mm. after [30] ", pictures: [["Tuba", "1103"]]),
    Excerpt(id: 92, description: "Excerpt 9", measures: "Mov. V, 9 mm. before [19] - [19] ", pictures: [["Tuba", "1104"]]),
    Excerpt(id: 93, description: "Excerpt 10", measures: "Mov. V, 1 mm. before [22] - 9 mm. before [23] ", pictures: [["Tuba", "1105"]]),
    Excerpt(id: 94, description: "Excerpt 11", measures: "Mov. V, 4 mm. before [24] - [24] ", pictures: [["Tuba", "1106"]])
], mutes: "No", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "fEGNNuEM3Fc"],
    ["Bernard Haitink, Koninklijk Concertgebouworkest", "MruTSRVecMo"],
    ["Christoph Eschenbach, Sinfónica de Galicia", "1tCk6nOOdzI"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "vOvXhyldUko"],
    ["Gustavo Dudamel, Simón Bolívar Symphony Orchestra", "1F5G9JngqZY"],
    ["Leonard Bernstein, Wiener Philharmoniker", "6EJn43FEmjo"],
    ["Leonard Bernstein, Wiener Philharmoniker (With Score)", "nO0nytFsumo"],
    ["Valery Gergiev, World Orchestra for Peace", "UjmthMDpyco"],
    // Masterclasses
    ["Gene Pokorny", "8ARJnpoWTgw"]
])

let mahler6 = Composition(id: 21, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 6", date: "1904", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 95, description: "Excerpt 1", measures: "Mov. I, 3 mm. before [40] - [40] ", pictures: [["Tuba", "1107"]]),
    Excerpt(id: 96, description: "Excerpt 2", measures: "Mov. I, 2 mm. before [44] - End", pictures: [["Tuba", "1108"]]),
    Excerpt(id: 97, description: "Excerpt 3", measures: "Mov. III, 3 mm. before [69] - 2 mm. before [70] ", pictures: [["Tuba", "1109"]]),
    Excerpt(id: 98, description: "Excerpt 4", measures: "Mov. III, 3 mm. after [82] - [86] ", pictures: [["Tuba", "1110"]]),
    Excerpt(id: 99, description: "Excerpt 5", measures: "Mov. IV, [104] - 8 mm. before [105] ", pictures: [["Tuba", "1111"]]),
    Excerpt(id: 100, description: "Excerpt 6", measures: "Mov. IV, [115] - [117] ", pictures: [["Tuba", "1112"]]),
    Excerpt(id: 101, description: "Excerpt 7", measures: "Mov. IV, [140] - 4 mm. after [141] ", pictures: [["Tuba", "1113"]]),
    Excerpt(id: 102, description: "Excerpt 8", measures: "Mov. IV, [153] - [154] ", pictures: [["Tuba", "1114"]]),
    Excerpt(id: 103, description: "Excerpt 9", measures: "Mov. IV, 6 mm. before [160] - 2 mm. before [161] ", pictures: [["Tuba", "1115"]])
], mutes: "No", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "25tSq_dYL3c"],
    ["Bernard Haitink, Chicago Symphony Orchestra", "YUj_GAKWziE"],
    ["Claudio Abbado, Berlin Philharmonic", "QmgUfF_DCLg"],
    ["Eliahu Inbal, Singapore Symphony Orchestra", "KnjQNwKu36U"],
    ["Herbert von Karajan, Berliner Philharmoniker", "DCIjasJaoOA"],
    ["Kenneth Kiesler, University of Michigan Symphony Orchestra", "bhl2a8egHxg"],
    ["Klaus Tennstedt, London Philharmonic Orchestra", "DrhsSYhuoUQ"],
    ["Leonard Bernstein cond/ Vienna Philharmonic Orchestra (With Score)", "oep5Rude4mQ"],
    ["Leonard Bernstein, Wiener Philharmoniker", "rypHeVr_X7c"],
    // Masterclasses
    ["Gene Pokorny", "KfCz8iPL96I"]
])

let mahler9 = Composition(id: 22, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 9", date: "1910", era: "Romantic", genre: "", excerpts: [
    Excerpt(id: 104, description: "Excerpt 1", measures: "Mov. I, 1 mm. after [9] - 4 mm. after [9] ", pictures: [["Tuba", "1116"]]),
    Excerpt(id: 105, description: "Excerpt 2", measures: "Mov. II, 3 mm. after [25] - 8 mm. after [25] ", pictures: [["Tuba", "1117"]]),
    Excerpt(id: 106, description: "Excerpt 3", measures: "Mov. III, Sempre l’istesso tempo after [32]", pictures: [["Tuba", "1118"]]),
    Excerpt(id: 107, description: "Excerpt 4", measures: "Mov. IV, Solo", pictures: [["Tuba", "1119"]])
], mutes: "Straight", videos: [
    ["Bernard Haitink, Concertgebouw Orchestra", "RjYs99atLUI"],
    ["정명훈 (Chung Myung-Whun), Concergebouworkest", "7NKvBNliyN8"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "udhHFt--10Q"],
    ["Daniel Barenboim, Staatskapelle Berlin", "RlGe8bsdpB8"],
    ["Daniele Gatti, Vienna Philharmonic Orchestra", "Q1VjTuVntGE"],
    ["Gustavo Dudamel, Los Angeles Philharmonic", "3GwrgASjQ9I"],
    ["Leonard Bernstein, Berlin Philharmonic Orchestra (With Score)", "ah3mcaRpc9Q"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "IoNEeKJ2x44"]
])

let mendelssohnMidsummer = Composition(id: 23, composer: "Felix Mendelssohn", composerLast: "Mendelssohn", name: "A Midsummer Night's Dream", date: "1842", era: "Romantic", genre: "Incidental Music", excerpts: [
    Excerpt(id: 108, description: "Excerpt 1", measures: "Overture, 12 mm. after [A] - 33 mm. after [A] ", pictures: [["Ophicleïde", "1120"]]),
    Excerpt(id: 109, description: "Excerpt 2", measures: "Overture, 8 mm. before [D] - [D] ", pictures: [["Ophicleïde", "1121"]]),
    Excerpt(id: 110, description: "Excerpt 3", measures: "Overture, mm. 545 - [H] ", pictures: [["Ophicleïde", "1122"]]),
    Excerpt(id: 111, description: "Excerpt 4", measures: "Wedding March, [B] - 8 mm. after [B] ", pictures: [["Ophicleïde", "1123"]]),
    Excerpt(id: 112, description: "Excerpt 5", measures: "Wedding March, [C] - 24 mm. after [C] ", pictures: [["Ophicleïde", "1124"]])
], mutes: "No", videos: [
    ["Alexis Hauser, McGill Symphony Orchestra", "zrhbm-kaxpk"],
    ["András Vass, Pannon Philharmonic Orchestra", "vQUrs0V4syc"],
    ["Avner Biron, The Israel Camerata Jerusalem Orchestra", "H2wYyTZKb6Q"],
    ["Francesco d'Avalos, Philharmonia Orchestra", "mqOY-02XAFk"],
    ["Paavo Järvi, Frankfurt Radio Symphony Orchestra", "njdTB6HxTj8"],
    ["Seiji Ozawa, Berlin Philharmonic", "yijwRZ6eqe0"],
    ["Walter Weller, Royal Scottish Orchestra", "gJs4KkUxN2Y"]
])

let mussorgskyNightBald = Composition(id: 24, composer: "Modest Mussorgsky", composerLast: "Mussorgsky", name: "Night on Bald Mountain", date: "1867", era: "Romantic", genre: "Symphonic Poem", excerpts: [
    Excerpt(id: 113, description: "Excerpt 1", measures: "mm. 14 - 10 mm. before [A] ", pictures: [["Tuba", "1125"]]),
    Excerpt(id: 114, description: "Excerpt 2", measures: "8 mm. before [N] - 3 mm. before [N] ", pictures: [["Tuba", "1126"]]),
    Excerpt(id: 115, description: "Excerpt 3", measures: "5 mm. before [V] - [V] ", pictures: [["Tuba", "1127"]])
], mutes: "No", videos: [
    ["Claudio Abbado, Berlinner Philharmoniker", "tu1no7hOlSs"],
    ["Eduardo Mata, Dallas Symphony Orchestra", "Fizh0M8TczA"],
    ["Evgeny Svetlanov, USSR Academic State Orchestra (With Score)", "by4khgR7Q5k"],
    ["Henryk Wierzchoń, Arthur Rubinstein School of Music Symphony Orchestra", "WOdc6hwq5lE"],
    ["Leonard Bernstein, New York Philharmonic Orchestra", "JLncxpU1FjQ"],
    ["Markus Stenz, Radio Filharmonisch Orkest", "52iOdAVU4C8"],
    ["Thomas Ludwig, Ludwig Symphony Orchestra", "XyR-poMsSWI"]
])

let respighiFountains = Composition(id: 25, composer: "Ottorino Respighi", composerLast: "Respighi", name: "Fontane di Roma", date: "1916", era: "Romantic", genre: "Symphonic Poem", excerpts: [
    // Removed due to copyright
    Excerpt(id: 116, description: "Excerpt 1", measures: "1 mm. before [11] - 4 mm. after [16] ", pictures: [["Tuba", /*"1128"*/"none"]])
], mutes: "No", videos: [
    ["Alan Gilbert, New York Philharmonic", "kk7LTvjdv1M"],
    ["Arturo Toscanini, Maazel Filarmonica", "u6bRHpcxJcM"],
    ["Eugene Ormandy, Philadelphia Orchestra", "aSVOR3_aJ3M"],
    ["Herbert von Karajan, Berlin Philharmonic", "eGZ9oslaeak"],
    // Bands
    ["Jerry Junkin, The University of Texas Wind Ensemble", "PM_UjFqclIc"],
    // Masterclasses
    ["Gene Pokorny", "KfCz8iPL96I"]
])

let rimskyKorsakovScheherazade = Composition(id: 26, composer: "Nikolai Rimsky-Korsakov", composerLast: "Rimsky-Korsakov", name: "Scheherazade", date: "1888", era: "Romantic", genre: "Symphonic Suite", excerpts: [
    Excerpt(id: 117, description: "Excerpt 1", measures: "Mov. I, [H] - [L] ", pictures: [["Tuba", "1129"]])
], mutes: "No", videos: [
    ["Eugene Ormandy, Philadelphia Orchestra", "LEN5ObBND88"],
    ["Leif Segerstam, Sinfónica de Galicia", "zY4w4_W30aQ"],
    ["Nejc Bečan, Gimnazija Kranj Symphony Orchestra", "17lEx0ytE_0"],
    ["Valery Gergiev, Vienna Philharmonic", "SQNymNaTr-Y"],
    ["Yevgeny Svetlanov, USSR State Symphony Orchestra", "jR_Q7NbLzyU"],
    ["Yuri Temirkanov, Saint-Petersburg Philharmonic Orchestra", "vdnUBQT5Bqw"]
])

let sibelius1 = Composition(id: 27, composer: "Jean Sibelius", composerLast: "Sibelius", name: "Symphony No. 1", date: "1899", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 118, description: "Excerpt 1", measures: "Mov. IV, 4 mm. after [N] - 22 mm. after [O]", pictures: [["Tuba", "1130"]])
], mutes: "No", videos: [
    ["David Robertson, Radio Philharmonic Orchestra", "-ilE1K09JoQ"],
    ["Hannu Lintu, Singapore Symphony Orchestra", "DZa0DHaEC8s"],
    ["Herbert von Karajan, Berliner Philharmoniker", "TxKob4TYWw0"],
    ["Herbert von Karajan, Berliner Philharmoniker (With Score)", "GYQFCZvNTlo"],
    ["Jukka-Pekka Saraste, Oslo Philharmonic Orchestra", "eBBWvzHuC1k"],
    ["Leonard Bernstein, Wiener Philharmoniker", "trjVOodyNFE"],
    ["Leonard Bernstein, Weiner Philharmoniker", "UJGWzJHsOdE"],
    ["Paavo Järvi, Orchestre de Paris", "dCIw_4oJ4Gg"],
    ["Vladimir Ashkenazy, Philharmonia Orchestra", "qWE7_imNOzk"],
])

let sibelius2 = Composition(id: 28, composer: "Jean Sibelius", composerLast: "Sibelius", name: "Symphony No. 2", date: "1902", era: "Modern", genre: "Symphony", excerpts: [
    Excerpt(id: 119, description: "Excerpt 1", measures: "Mov. II, [F] - mm. 116", pictures: [["Tuba", "1131"]])
], mutes: "No", videos: [
    ["Dima Slobodeniouk, Orquesta Sinfónica de Galicia", "g82t0AJ1FnY"],
    ["George Szell, Royal Concertgebouw Orchestra", "raIy56s-O7w"],
    ["Gustavo Dudamel, Gothenburg Symphony Orchestra", "bpCcRZY1grc"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "WFfbXvJXimg"],
    ["Leonard Bernstein, Wiener Philharmoniker", "SAOf46CXaaw"],
    ["Paavo Järvi, Orchestre Paris", "K97J2Vlk-a8"],
    ["Petri Sakari, Iceland Symphony Orchestra (With Score)", "YXGxOa682Uc"],
    ["Susanna Mälkki, Frankfurt Radio Symphony", "iXU8EXL7a_4"],
    ["Yan Pascal Tortelier, Iceland Symphony Orchestra", "Z6iNaFWV3tc"]
])

let sousaStarsAndStripes = Composition(id: 29, composer: "John Philip Sousa", composerLast: "Sousa", name: "The Stars and Stripes Forever", date: "1896", era: "Romantic", genre: "March", excerpts: [
    Excerpt(id: 120, description: "Excerpt 1", measures: "mm. 1 - 20", pictures: [["Euphonium", "1132"], ["Tuba", "1133"]]),
    Excerpt(id: 121, description: "Excerpt 2", measures: "mm. 20 - 37", pictures: [["Euphonium", "1176"], ["Tuba", "1177"]]),
    Excerpt(id: 122, description: "Excerpt 3", measures: "mm. 85 - 110", pictures: [["Euphonium", "1134"], ["Tuba", "1135"]])
], mutes: "No", videos: [
    ["The Band of the Grenadier Guards", "jyrmVBfe2Bg"],
    ["\"The President's Own\" United States Marine Band", "a-7XWhyvIpE"],
    ["\"The President's Own\" United States Marine Band (With Score)", "DRQWP-TL4gk"],
    ["The United States Army Band \"Pershing's Own\"", "ShUBdoE2ib0"],
    ["The United States Army Field Band", "M5bcpjUjLpU"],
    ["United States Navy Band", "_K0uUhxThO4"],
    // Orchestras
    ["Leonard Bernstein, New York Philharmonic", "Pkli8XgjOAw"],
    ["John Williams, Boston Pops Orchestra", "QAnky-QJwII"],
])

let straussAlsoSprach = Composition(id: 30, composer: "Richard Strauss", composerLast: "Strauss", name: "Also sprach Zarathustra", date: "1896", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 123, description: "Excerpt 1", measures: "[6] - 6 mm. after [6]", pictures: [["Tuba 1", "1136"], ["Tuba 2", "1137"]]),
    Excerpt(id: 124, description: "Excerpt 2", measures: "5 mm. after [16] - 3 mm. before [17]", pictures: [["Tuba 1", "1138"], ["Tuba 2", "1139"]]),
    Excerpt(id: 125, description: "Excerpt 3", measures: "Ziemlich langsam after [17] - 8 mm. after Ziemlich langsam", pictures: [["Tuba 1", "1140"], ["Tuba 2", "1141"]]),
    Excerpt(id: 126, description: "Excerpt 4", measures: "12 mm. before [43] - 5 mm. before [43]", pictures: [["Tuba 1", "1142"], ["Tuba 2", "1143"]]),
    Excerpt(id: 127, description: "Excerpt 5", measures: "10 mm. before [46] - 1 mm. before [46]", pictures: [["Tuba 1", "1144"]]),
    Excerpt(id: 128, description: "Excerpt 6", measures: "6 mm. before [49] - 5 mm. before [51]", pictures: [["Tuba 1", "1145"], ["Tuba 2", "1146"]])
], mutes: "No", videos: [
    ["Georg Solti, Chicago Symphony Orchestra", "IFPwm0e_K98"],
    ["Giuseppe Sinopoli, Staatskapelle Dresden", "LpNRBublNr0"],
    ["Gustavo Dudamel, Vienna Philharmonic Orchestra", "ETveS23djXM"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra (With Score)", "c8r_pZoaZf0"],
    ["Herbert von Karajan, Vienna Philharmonic", "h3eEHZCahVU"],
    ["Jonathan Nott, Gustav Mahler Youth Orchestra", "6RdZ7rO_cr0"],
    ["Mariss Jansons, Royal Concertgebouw Orchestra", "D4d88IgvhK4"],
    ["Mariss Jansons, Symphonieorchester des Bayerischen Rundfunks", "hC-PA0YGzK0"],
    // Masterclasses
    ["Gene Pokorny", "KfCz8iPL96I"]
])

let straussDeathAndTransfiguration = Composition(id: 31, composer: "Richard Strauss", composerLast: "Strauss", name: "Death and Transfiguration", date: "1889", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 129, description: "Excerpt 1", measures: "4 mm. before [V] - 3 mm. before [W] ", pictures: [["Tuba", "1147"]]),
    Excerpt(id: 130, description: "Excerpt 2", measures: "5 mm. before [Z] - 8 mm. after [Aa] ", pictures: [["Tuba", "1148"]])
], mutes: "No", videos: [
    ["Alexis Hauser, McGill Symphony Orchestra", "Pd_GmPLPpRg"],
    ["Arturo Toscanini, NBC Orchestra (With Score)", "L3bD7g3mp_Y"],
    ["David Zinman, Tonhalle Orchestra Zürich (With Score)", "6hfQpaePuxo"],
    ["David Zinman, Zurich Tonhalle Orchestra", "3D5Up1aYJJs"],
    ["George Szell, Cleveland Orchestra", "4K3E1wZWSn0"],
    ["George Szell, Cleveland Orchestra", "jHiNvJr-OxY"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "4f92pYZYGfc"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "W6M3NdqyXNc"],
    ["Jan Latham-Koenig, Symfonieorkest Vlaanderen", "mu2M67IQ68Q"],
    ["Mikko Franck, Orchestre Philharmonique de Radio France", "umfttWN5xYo"]
])

let straussDonJuan = Composition(id: 32, composer: "Richard Strauss", composerLast: "Strauss", name: "Don Juan", date: "1888", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 131, description: "Excerpt 1", measures: "[P] - 8 mm. after [P] ", pictures: [["Tuba", "1149"]]),
    Excerpt(id: 132, description: "Excerpt 2", measures: "[S] - 2 mm. before [U] ", pictures: [["Tuba", "1150"]])
], mutes: "No", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "XG4uBRBMdzY"],
    ["Georg Solti, Chicago Symphony Orchestra", "_um5yLJx-RM"],
    ["Herbert von Karajan, Osaka Philharmonic Orchestra", "F_V5KhUxWG8"],
    ["Thomas Schippers, Cincinnati Symphony Orchestra (With Score)", "8woshq-F21s"],
    ["Wolfgang Sawallisch, Philadelphia Orchestra", "KP89c9KfetA"]
])

let straussDonQuixote = Composition(id: 33, composer: "Richard Strauss", composerLast: "Strauss", name: "Don Quixote", date: "1897", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 133, description: "Excerpt 1", measures: "Introduction, [3] - 6 mm. after [3] ", pictures: [["Tenor Tuba in B♭", "1151"], ["Tuba", "1152"]]),
    Excerpt(id: 134, description: "Excerpt 2", measures: "Introduction, 1 mm. before [9] - 6 mm. after [9] ", pictures: [["Tenor Tuba in B♭", "1153"], ["Tuba", "1154"]]),
    Excerpt(id: 135, description: "Excerpt 3", measures: "[14] - [15]", pictures: [["Tenor Tuba in B♭", "1155"]]),
    Excerpt(id: 136, description: "Excerpt 4", measures: "[46] - 6 mm. after [47]", pictures: [["Tenor Tuba in B♭", "1156"], ["Tuba", "1157"]]),
    Excerpt(id: 137, description: "Excerpt 5", measures: "4 mm. before [62] - 4 mm. after [62] ", pictures: [["Tenor Tuba in B♭", "1158"], ["Tuba", "1159"]])
], mutes: "Straight", videos: [
    ["Bernard Haitink, Symphonieorchester des Bayerischen Rundfunks", "_u5Zq769TJ4"],
    ["Dennis Russell Davies, Orquesta Sinfónica de Galicia", "Bo7KAGhrrIs"],
    ["Herbert von Karajan, Berliner Philharmoniker", "_6P1WHXKAlk"],
    ["Lorin Maazel, Symphonieorchester des Bayerischen Rundfunks", "-7EwD2Vz8fw"],
    ["George Pehlivanian, Orchestra dell'Accademia Nazionale di Santa Cecilia (With Score)", "5PvCGu2Ue0U"],
    ["Seiji Ozawa, Boston Symphony Orchestra", "Un6zfgAJi8I"],
    ["Wolfgang Sawallisch, NHK Symphony", "dJNEuvfeshg"],
    // Masterclasses
    ["Michael Mulcahy", "oHsbvs-xn6o"]
])

let straussHeldenleben = Composition(id: 34, composer: "Richard Strauss", composerLast: "Strauss", name: "Ein Heldenleben", date: "1898", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 138, description: "Excerpt 1", measures: "4 mm. after [3] - [4]", pictures: [["Tenor Tuba in B♭", "1160"]]),
    Excerpt(id: 139, description: "Excerpt 2", measures: "[8] - 6 mm. after [8] ", pictures: [["Tenor Tuba in B♭", "1161"], ["Tuba", "1162"]]),
    Excerpt(id: 140, description: "Excerpt 3", measures: "2 mm. before [14] - 2 mm. after [14]", pictures: [["Tenor Tuba in B♭", "1163"], ["Tuba", "1164"]]),
    Excerpt(id: 141, description: "Excerpt 4", measures: "2 mm. before [58] - [66] ", pictures: [["Tenor Tuba in B♭", "1165"], ["Tuba", "1166"]]),
    Excerpt(id: 142, description: "Excerpt 5", measures: "1 mm. before [74] - 2 mm. after [75] ", pictures: [["Tenor Tuba in B♭", "1167"], ["Tuba", "1168"]]),
    Excerpt(id: 143, description: "Excerpt 6", measures: "[79] - 4 mm. after [79]", pictures: [["Tenor Tuba in B♭", "1169"], ["Tuba", "1170"]])
], mutes: "Straight", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra (With Score)", "mE-mZUEXWsg"],
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "Us1jfC7bMpA"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "nu5AXJGmkJk"],
    ["Manfred Honeck, Pittsburgh Symphony Orchestra", "NGlzlNlnw_w"],
    ["Mariss Jansons, Symphonie-Orchestrer des Bayerischen Rundfunks", "_2-dLoWorUs"],
    ["Valery Gergiev, Munich Philharmonic Orchestra", "m-aaCruKsLI"],
    // Masterclasses
    ["Gene Pokorny", "KfCz8iPL96I"],
    ["Michael Mulcahy", "-f30y6mgIdw"],
    ["Southeast Trombone Symposium", "YqBPA00DBIU"]
])

let straussEulenspiegel = Composition(id: 35, composer: "Richard Strauss", composerLast: "Strauss", name: "Till Eulenspiegel's Merry Pranks", date: "1895", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 144, description: "Excerpt 1", measures: "[13] - 1 mm. before [14]", pictures: [["Tuba", "1171"]]),
    Excerpt(id: 145, description: "Excerpt 2", measures: "8 mm. before [19] - 16 mm. after [19]", pictures: [["Tuba", "1172"]]),
    Excerpt(id: 146, description: "Excerpt 3", measures: "[25] - 5 mm. after [25]", pictures: [["Tuba", "1173"]]),
    Excerpt(id: 147, description: "Excerpt 4", measures: "7 mm. before [37] - 4 mm. before [38]", pictures: [["Tuba", "1174"]]),
    Excerpt(id: 148, description: "Excerpt 5", measures: "2 mm. before [40] - 9 mm. after [40]", pictures: [["Tuba", "1175"]])
], mutes: "Straight", videos: [
    ["Christoph von Dohnányi, NDR Elbphilharmonie Orchester", "EMcQQFWAnA0"],
    ["Georg Solti, Wiener Philharmoniker", "ZpA47nVfgBY"],
    ["Herbert von Karajan, Berliner Philharmoniker", "99qWgSItaNQ"],
    ["Leonard Bernstein, New York Philharmonic Orchestra (With Score)", "1zbCfP9wGt4"],
    ["Lorin Maazel, Symphonieorchester des Bayerischen Rundfunk (With Score)", "QV5r9KG1eyc"],
    ["Richard Strauss, Vienna Philharmonic", "IouFZBgEG3s"],
    ["Masahiko Tanaka, Waseda Symphony Orchestra", "S7O9Oa22nsQ"],
    ["Zubin Mehta, New York Philharmonic", "ZU556MvQN6c"],
    // Masterclasses
    ["Gene Pokorny", "KfCz8iPL96I"]
])

let stravinskyRite = Composition(id: 36, composer: "Igor Stravinsky", composerLast: "Stravinsky", name: "The Rite of Spring", date: "1913", era: "Modern", genre: "Ballet", excerpts: [
    Excerpt(id: 149, description: "Excerpt 1", measures: "[57] - 2 mm. after [57] ", pictures: [["Tuba 1", "1178"], ["Tuba 2", "1179"]]),
    Excerpt(id: 149, description: "Excerpt 2", measures: "[78] - 6 mm. after [78] ", pictures: [["Tuba 1", "1180"], ["Tuba 2", "1181"]]),
    Excerpt(id: 150, description: "Excerpt 3", measures: "1 mm. after [112] - [114] ", pictures: [["Tuba 1", "1182"], ["Tuba 2", "1183"]])
], mutes: "Straight", videos: [
    ["Claudio Abbado, London Symphony Orchestra", "RRyd5zR_3Bc"],
    ["Gianluigi Gelmetti, Radio-Sinfonieorchester Stuttgart des SWR", "U89DW5idH-g"],
    ["Jaap van Zweden, Radio Filharmonisch Orkest", "5UJOaGIhG7A"],
    ["Leonard Bernstein, London Philharmonic Orchestra", "a9M2oTHa3GM"],
    ["Leonard B​e​r​n​ste​i​n, New York Philharmonic Orchestra (With Score)", "rP42C-4zL3w"],
    ["Lorin Maazel, The Cleveland Orchestra (With Score)", "0XyTWt82XQM"],
    ["Pierre Boulez, BBC Symphony Orchestra", "yGZh4vww97w"],
    ["Sir Simon Rattle, London Symphony Orchestra", "EkwqPJZe8ms"],
    ["Valery Gergiev, Mariinsky Theatre Orchestra", "YOZmlYgYzG4"],
    ["Zubin Mehta, Berliner Philharmoniker", "BhsRshwB5q4"]
])

let tchaikRomeoAndJuliet = Composition(id: 37, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Romeo and Juliet", date: "1880", era: "Romantic", genre: "Overture, Fantasia", excerpts: [
    Excerpt(id: 151, description: "Excerpt 1", measures: "[S] - 27 mm. after [S] ", pictures: [["Tuba", "1184"]])
], mutes: "No", videos: [
    ["Claudio Abbado, Berliner Philharmoniker", "znKS1QuCUI0"],
    ["Dmitri Slobodeniouk, Netherlands Radio Philharmonic Orchestra", "f6qZUCi7ToQ"],
    ["Gustavo Dudamel, Berliner Philharmoniker", "2l8llogGKto"],
    ["Herbert von Karajan, Berliner Philharmoniker", "tnyC2uwJ4qg"],
    ["Herbert von Karajan, Wiener Philharmoniker", "2jTHmretpw4"],
    ["Valery Gergiev, London Symphony Orchestra", "Cxj8vSS2ELU"],
    ["Valery Gergiev, Mariinsky Theatre Orchestra (With Score)", "cn3U8AVoWdY"],
    ["Yannick Nézet-Séguin, Rotterdam Philharmonic Orchestra", "_Y_tLuudGGk"],
    // Masterclasses
    ["Sir Georg Solti, Chicago Symphony (Excerpts)", "-MInLxTHD_M"]
])

let tchaikovskySleepingBeauty = Composition(id: 38, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "The Sleeping Beauty", date: "1899", era: "Romantic", genre: "Ballet", excerpts: [
    Excerpt(id: 152, description: "Excerpt 1", measures: "Mov. V (Waltz), mm. 12 - 28", pictures: [["Tuba", "1185"]])
], mutes: "No", videos: [
    ["Herbert von Karajan, Berlin Philharmonic", "450Tljmw0Q4"],
    ["Herbert von Karajan, Wiener Philharmoniker", "jTCKGn9XBkk"],
    ["James Levine, Bécsi Filharmonikus Zenekar (With Score)", "GFR2kaKaIvo"],
    ["Mstislav Rostropovich, Berliner Philharmoniker", "UA2R2QR19Bs"],
    ["Yves Abel, The Nordwestdeutsche Philharmonie", "42WWTJgYcxc"],
])

let tchaikSwanLake = Composition(id: 39, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Swan Lake", date: "1877", era: "Romantic", genre: "Ballet", excerpts: [
    Excerpt(id: 153, description: "Excerpt 1", measures: "No. 2, [20] - 16 mm. after [20] ", pictures: [["Tuba", "1186"]])
], mutes: "No", videos: [
    ["Ormsby Wilkins, Kennedy Center Opera House Orchstra", "gfmc6ZVl7uA"],
    ["David Lloyd-Jones, The New London Orchestra", "rQsECoq9XGM"],
    ["Ernest Ansermet, Orchestre de la Suisse Romande", "ILfgvsH0m9E"],
    ["Herbert von Karajan, Berlin Philharmonic", "yJdh84BEiQg"],
    ["Viktor Fedotov, Kirov Theatre Orchestra", "9rJoB7y6Ncs"]
])

let tchaik1 = Composition(id: 40, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Symphony No. 1", date: "1868", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 154, description: "Excerpt 1", measures: "Mov. IV, 8 mm. before [B] - [B] ", pictures: [["Tuba", "1187"]])
], mutes: "No", videos: [
    ["Evgeny Svetlanov, USSR State Symphony Orchestra (With Score)", "vZRsNzIwYAA"],
    ["Herbert von Karajan, Berliner Philharmoniker", "_krJMxZfZcQ"],
    ["Mariss Jansons, BBC National Orchestra of Wales", "PbaGmqA9qkM"],
    ["Paavo Järvi, Frankfurt Radio Symphony Orchestra", "ocIajFkPwyU"],
    ["Yuri Simonov, Moscow Philharmonic Orchestra", "J8IHZqFrtpA"],
    ["Yuri Temirkanov, Royal Philharmonic Orchestra", "--0qNLlD6kI"],
])

let tchaik2 = Composition(id: 41, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Symphony No. 2", date: "1880", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 155, description: "Excerpt 1", measures: "Movement I, [P] - 18 mm. after [P] ", pictures: [["Tuba", "1188"]])
], mutes: "No", videos: [
    ["Evgeny Svetlanov, USSR State Symphony Orchestra", "rxyN1GHMatM"],
    ["Herbert von Karajan, Berlin Philharmonic", "CRGK4cv0k9c"],
    ["Leonard Bernstein, New York Philharmonic Orchestra", "Q2gnjbifvFU"],
    ["Mariss Jansons, BBC National Orchestra of Wales", "7GkV6rQ0RPg"],
    ["Nicholas Hersh, Stanford Summer Symphony Orchestra", "WfAyIL8fb5I"],
    ["Yuri Temirkanov, Royal Philharmonic Orchestra", "Xm3F8SVaTls"]
])

let tchaik4 = Composition(id: 42, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Symphony No. 4", date: "1878", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 156, description: "Excerpt 1", measures: "Mov. I, mm. 6 - 15", pictures: [["Tuba", "1189"]]),
    Excerpt(id: 157, description: "Excerpt 2", measures: "Mov. I, mm. 174 - [K] ", pictures: [["Tuba", "1190"]]),
    Excerpt(id: 158, description: "Excerpt 3", measures: "Mov. I, 5 mm. after [T] - 3 mm. before [U]", pictures: [["Tuba", "1191"]]),
    Excerpt(id: 159, description: "Excerpt 4", measures: "Mov. IV, mm. 38 - 51", pictures: [["Tuba", "1192"]]),
    Excerpt(id: 160, description: "Excerpt 5", measures: "Mov. IV, mm. 187 - 205", pictures: [["Tuba", "1193"]]),
    Excerpt(id: 161, description: "Excerpt 6", measures: "Mov. IV, mm. 249 - End", pictures: [["Tuba", "1194"]])
], mutes: "No", videos: [
    ["Carlos Miguel Prieto, Frankfurt Radio Symphony", "Y7G5ithbFys"],
    ["Christian Lindberg, The Arctic Philharmonic Orchestra", "ieYFdj1wI_M"],
    ["Claudio Abbado, Chicago Symphony Orchestra", "XxvTGgoStcY"],
    ["Gennady Rozhdestvensky, USSR State TV and Radio Symphony Orchestra (With Score)", "_Xldfaf4NGw"],
    ["Herbert Von Karajan, Vienna Philharmonic Orchestra", "cnXd4ZqN_c8"],
    ["Leonard Bernstein, New York Philharmonic", "4d1Me2gRZIQ"],
    // Masterclasses
    ["Sir Georg Solti, Chicago Symphony (Excerpts)", "L6dZbi3TEAo"]
])

let tchaik5 = Composition(id: 43, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Symphony No. 5", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 162, description: "Excerpt 1", measures: "Mov. I, 4 mm. before [E] - 3 mm. after [E] ", pictures: [["Tuba", "1195"]]),
    Excerpt(id: 163, description: "Excerpt 2", measures: "Mov. I, mm. 357 - 373", pictures: [["Tuba", "1196"]]),
    Excerpt(id: 164, description: "Excerpt 3", measures: "Mov. II, mm. 149 - 156", pictures: [["Tuba", "1197"]]),
    Excerpt(id: 165, description: "Excerpt 4", measures: "Mov. IV, mm. 304 - 312", pictures: [["Tuba", "1198"]]),
    Excerpt(id: 166, description: "Excerpt 5", measures: "Mov. IV, mm. 426 - 433", pictures: [["Tuba", "1199"]]),
    Excerpt(id: 167, description: "Excerpt 6", measures: "Mov. IV, mm. 490 - 504", pictures: [["Tuba", "1200"]])
], mutes: "No", videos: [
    ["Elim Chan, Netherlands Philharmonic Orchestra", "xFf5GA2UpMs"],
    ["Emmanuel Krivine, Orchestre National de France", "Z1hFlRVB7DI"],
    ["Herbert von Karajan, Berliner Philharmoniker", "NeNeQrUXymg"],
    ["Leonard Bernstein, Boston Symphony Orchestra", "w2JBT0HC98I"],
    ["Leonard Bernstein, New York Philharmonic Orchestra (With Score)", "4_PSjr47AUo"],
    ["Manfred Honeck, Frankfurt Radio Symphony", "a_B02BZp-5Y"],
    ["Valery Gergiev, Mariinsky Orchestra", "nmMLFvjkcEs"],
    ["Vasily Petrenko, The Oslo Philharmonic", "JUk0WZVCnk4"],
    // Masterclasses
    ["Sir Georg Solti, Chicago Symphony (Mov. II Excerpts)", "eaC_StuAKf4"],
    ["Sir Georg Solti, Chicago Symphony (Mov. IV Excerpts)", "aoj9eWV_pyQ"]
])

let tchaik6 = Composition(id: 44, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Symphony No. 6", date: "1893", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 168, description: "Excerpt 1", measures: "Mov. I, mm. 67 - 70", pictures: [["Tuba", "1201"]]),
    Excerpt(id: 169, description: "Excerpt 2", measures: "Mov. I, [O] - 2 mm. before [Q] ", pictures: [["Tuba", "1202"]]),
    Excerpt(id: 170, description: "Excerpt 3", measures: "Mov. III, [G] - [H] ", pictures: [["Tuba", "1203"]]),
    Excerpt(id: 171, description: "Excerpt 4", measures: "Mov. III, 1 mm. after [Dd] - [Kk] ", pictures: [["Tuba", "1204"]])
], mutes: "No", videos: [
    ["정명훈 (Chung Myung-Whun), Seoul Philharmonic Orchestra", "IH-zp9LjiEs"],
    ["Claudio Abbado, Orquesta Sinfónica Simón Bolívar", "zIJiPlbJjs8"],
    ["Daniele Gatti, The Orchestre National de France", "NfusWGFWMq8"],
    ["Georg Solti", "V4qLtjCXxkg"],
    ["Herbert von Karajan, Wiener Philharmonic", "KvGC8hZC29U"],
    ["Herbert von Karajan, Wiener Philharmonic", "-qgo1KFj0do"],
    ["Lionel Bringuier, Frankfurt Radio Symphony Orchestra", "SVnF3x44rvU"],
    ["Valery Gergiev, Mariinsky Theatre Orchestra (With Score)", "8VswsTffasc"],
    // Masterclasses
    ["Sir Georg Solti, Chicago Symphony (Excerpts)", "PCk1SBQMlJI"]
])

let verdiNabucco = Composition(id: 45, composer: "Giuseppe Verdi", composerLast: "Verdi", name: "Nabucco", date: "1842", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 172, description: "Excerpt 1", measures: "Overture, mm. 1 to mm. 16", pictures: [["Cimbasso", "1205"]])
], mutes: "No", videos: [
    ["Claudio Abbado, Berliner Philharmoniker", "maaKrLc6QlYdxz"],
    ["Claudio Abbado, London Symphony Orchestra", "Vvyjv7Ufc7w"],
    ["Giuseppe Sinopoli, Vienna Philharmonic Orchestra", "3RNBiC7q_nY"],
    ["James Levine, Metropolitan opera", "Lb_jWkv8uxY"],
    ["Marco Armiliato, Orchestra of the Deutsche Oper Berlin", "jGhd5kGM7dk"],
    ["Oliver Dohnanyi, Slovak Radio Symphony Orchestra", "LLRBPZs-zBg"],
    ["Pier Giorgio Morandi, Hungarian State Opera Orchestra", "eenFoCy-I78"],
    ["Zygmunt Nitkiewicz, Orchestra Of The Józef Marcin Żebrowski Music School", "OseGETWEnCo"]
])

let wagnerRheingold = Composition(id: 46, composer: "Richard Wagner", composerLast: "Wagner", name: "Das Rheingold", date: "1854", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 173, description: "Excerpt 1", measures: "Scene III, Lento e sostenuto - Vivace", pictures: [["Tuba", "1206"]])
], mutes: "No", videos: [
    ["China National Opera House", "9d-3nqzKTKU"],
    ["Georg Solti, Vienna Philharmonic Orchestra (With Score)", "loTqK2Fyrrw"],
    ["Georg Solti, Vienna Philharmonic Orchestra (With Score)", "VsR11uFzBJg"],
    ["Herbert von Karajan", "dBi0YXM3zmI"],
    ["Pierre Boulez", "3ZP-yXsNV2E"],
    ["Sir Simon Rattle, Orchestra of the Age of Enlightenment", "CUFWNKFajjA"],
    ["Zubin Mehta, Valencian Community Orchestra", "XgX14XYfYxQ"]
])

let wagnerMeistersinger = Composition(id: 47, composer: "Richard Wagner", composerLast: "Wagner", name: "Die Meistersinger von Nürnberg", date: "1867", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 174, description: "Excerpt 1", measures: "Overture, mm. 1 - 27", pictures: [["Tuba", "1207"]]),
    Excerpt(id: 175, description: "Excerpt 2", measures: "Overture, mm. 59 - 88", pictures: [["Tuba", "1208"]]),
    Excerpt(id: 176, description: "Excerpt 3", measures: "Overture, mm. 158 - 188", pictures: [["Tuba", "1209"]])
], mutes: "No", videos: [
    ["Christian Thielemann, Philadelphia Orchestra", "uz-9IkVKEU4"],
    ["Christian Thielemann, Münchner Philharmoniker", "ZVO5s9zAqAQ"],
    ["Christian Thielemann, Vienna Philharmonic Orchestra", "uyypHlrZsgg"],
    ["Christian Thielemann, Vienna Philharmonic Orchestra (With Score)", "jPI420hngqw"],
    ["Johannes Wildner, Polish National Radio Symphony Orchestra", "2_kOgXSTmDA"],
    ["Klaus Tennstedt, London Philharmonic", "5JUqTtzovbw"],
    ["Kurt Masur, Leipzig Gewandhaus Orchestra", "AQB3rWeFFFM"],
    ["Lorin Maazel, Toscanini Philharmonic", "9-JaIa8fBKA"],
    ["Wilhelm Furtwängler, Berlin Philharmonic Orchestra", "FoU-iCT21fc"],
    // Masterclasses
    ["Gene Pokorny", "KfCz8iPL96I"],
    ["Michael Stephan", "m4PapG5aWcE"]
])

let wagnerRide = Composition(id: 48, composer: "Richard Wagner", composerLast: "Wagner", name: "Die Walküre", date: "1870", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 177, description: "Excerpt 1", measures: "Act III Scene I, 8 mm. before [11] - [12]", pictures: [["Tuba", "1210"]])
], mutes: "No", videos: [
    ["Adam Fischer, Vienna State Opera", "NMTc4t6RHmw"],
    ["Georg Solti, Vienna Philharmonic Orchestra (With Score)", "Qx55EmiFadg"],
    ["Herbert von Karajan,  Berlin Philharmonic", "w8v6rlasLyw"],
    ["Marek Janowski, Bayreuth Festival Orchestra", "80KUzCA71tg"],
    ["Zubin Mehta, Valencian Community Orchestra", "_C-0hH5G8MU"],
    // Masterclasses
    ["Gene Pokorny", "KfCz8iPL96I"],
    ["Georgia Trombone Summit", "sC-BebXLtrA"]
])

let wagnerFaust = Composition(id: 49, composer: "Richard Wagner", composerLast: "Wagner", name: "Faust Overture", date: "1840", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 178, description: "Excerpt 1", measures: "mm. 1 - 3", pictures: [["Tuba", "1211"]])
], mutes: "No", videos: [
    ["Alexander Rahbari, Malaga Philharmonic Orchestra", "O5rP4PfCraA"],
    ["Arturo Toscanini, BBC Symphony Orchestra", "9LWOnIKzD2I"],
    ["Arturo Toscanini, NBC Symphony Orchestra", "8snDlU9Cwm4"],
    ["Christian Thielemann, Staatskapelle Dresden", "j0Bici-m1KQ"],
    ["George Szell, Concertgebouworkest Amsterdam", "icAEmPqzfq8"],
    ["Julian Armstrong, London Festival Orchestra (With Score)", "nk1towQ10WY"],
    ["Lorin Maazel, Berliner Philharmoniker", "IrxGCsL5-RM"],
    // Masterclasses
    ["Gene Pokorny", "KfCz8iPL96I"]
])

let wagnerGotterdamerung = Composition(id: 50, composer: "Richard Wagner", composerLast: "Wagner", name: "Götterdämmerung", date: "1874", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 179, description: "Excerpt 1", measures: "Prelude to Act I, [28] - 5 mm. before [29] ", pictures: [["Tuba", "1212"]]),
    Excerpt(id: 180, description: "Excerpt 2", measures: "Siegfried’s Funeral March, [43] - [44]", pictures: [["Tuba", "1213"]])
], mutes: "No", videos: [
    ["Adam Fischer, Vienna State Opera", "kLly5R4gDiM"],
    ["Georg Solti, Vienna Philharmonic Orchestra (With Score)", "BQHtYVjCCF0"],
    ["Joseph Keilberth, Bayreuth Festival Orchestra", "KtQ40fqs6Kc"],
    ["Karl Böhm, Bayreuth Festival Orchestra", "9_TKIStwoQI"],
    ["Marek Janowski, Bayreuth Festival Orchestra", "ZKv8J_4jdSI"],
    ["Pierre Boulez, Bayreuth Festival Orchestra", "_ww4JHkloa8"],
    ["Zubin Mehta, Valencian Community Orchestra", "ebhrZZJ-mLg"]
])

let wagnerLohengrin = Composition(id: 51, composer: "Richard Wagner", composerLast: "Wagner", name: "Lohengrin", date: "1848", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 181, description: "Excerpt 1", measures: "Prelude to Act III, [2] - [3] ", pictures: [["Tuba", "1214"]]),
    Excerpt(id: 182, description: "Excerpt 2", measures: "Prelude to Act III, 7 mm. after [5] - [6] ", pictures: [["Tuba", "1215"]])
], mutes: "No", videos: [
    ["Andris Nelsons, Bayreuth Festival", "VXwSV0sjYzg"],
    ["Daniel Barenboim, Orchestra of the Milan Scala", "kSzkYafY0pM"],
    ["Georg Solti, Vienna Philharmonic Orchestra", "zUrXqwmf3ZU"],
    ["Silvio Varviso, Bayreuth Festival Orchestra and Chorus", "_ReY89_fM0g"],
    // Masterclasses
    ["Gene Pokorny", "KfCz8iPL96I"]
])

let wagnerTannhauser = Composition(id: 52, composer: "Richard Wagner", composerLast: "Wagner", name: "Tannhäuser", date: "1845", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 183, description: "Excerpt 1", measures: "Overture, 1 mm. after [A] - 27 mm. before [B] ", pictures: [["Tuba", "1216"]]),
    Excerpt(id: 184, description: "Excerpt 2", measures: "Overture, 1 mm. before [I] - [K] ", pictures: [["Tuba", "1217"]]),
    Excerpt(id: 186, description: "Excerpt 3", measures: "Overture, [M] - End", pictures: [["Tuba", "1218"]]),
    Excerpt(id: 185, description: "Excerpt 4", measures: "Venusburg, mm. 98 - 119", pictures: [["Tuba", "1219"]])
], mutes: "No", videos: [
    ["Christian Thielemann, Münchner Philharmoniker", "KTM7E4-DN0o"],
    ["Daniel Barenboim", "Ozp8CbktEwQ"],
    ["Klaus Tennstedt, Berliner Philharmoniker", "AWIjohOIYNc"],
    ["Wolfgang Sawallisch, Bayreuth Festival Orchestra & Choir (With Score)", "LyZlLsBWwbo"],
    ["Zubin Mehta, New York Philharmonic Orchestra (With Score)", "3_Eq9H4bSdQ"]
])

//MARK: Composers

let berlioz = Composer(id: 1, name: "Hector Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2000, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.", excerpts: [
    berliozBenvenuto, berliozFaust, berliozKingLear, berliozLeCorsaire, berliozRomeo, berliozSymphonie
])

let brahms = Composer(id: 2, name: "Johannes Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2001, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.", excerpts: [
    brahmsAcademic, brahms2, brahmsTragic
])

let bruckner = Composer(id: 3, name: "Anton Bruckner", ipa: " 'antɔn ˈbʁʊknɐ", image: 2002, country: "Austria", dates: "1824-1896", bio: "Anton Bruckner was an Austrian organist, music theorist, and composer of the romantic era. He is best known for his symphonies and religious music. Bruckner was unlike other composers of his time, in that he was very a very humble man.", excerpts: [
    bruckner4, bruckner7, bruckner8, bruckner9
])

let franck = Composer(id: 4, name: "César Franck", ipa: "seɪˈzar frɑŋk", image: 2003, country: "United Kingdom of the Netherlands (Now Belgium)", dates: "1822 - 1890", bio: "Franck studied music in Paris at a young age. After his studies, he returned to Belgium and gained a terrible reputation for his oratorio \"Ruth\", and moved to Paris where he became an organist and teacher. Later in life, he became the organist for the Basilica of Saint Clotilde, where he remained for the rest of his life, composing in his free time pieces that are now considered standard repetoire.", excerpts: [
    franckD
])

let holst = Composer(id: 5, name: "Gustav Holst", ipa: "ˈgʊs tɑv hoʊlst", image: 2004, country: "England", dates: "1874-1934", bio: "Holst was a popular English composer of the modern era. He aspired to become a concert pianist, but neuritis in his right arm prevented him. Against his father's wishes, he studied to become a composer. He was unable to support himself from his compositions alone, and started to play and teach the trombone professionally. He is most well known for his orchestral composition \"The Planets\".", excerpts: [
    holstFirstSuite, holstPlanets
])

let mahler = Composer(id: 7, name: "Gustav Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 2006, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.", excerpts: [
    mahler1, mahler2, mahler3, mahler5, mahler6, mahler9
])

let mendellsohn = Composer(id: 8, name: "Felix Mendelssohn", ipa: "'fi lɪks 'mɛn dl sən", image: 2007, country: "Germany", dates: "1809-1947", bio: "Mendelssohn was born into a Jewish family, but was baptised Reformed Christian at the age of seven. He was known as a child prodigy, but his parents did not seek to capitalize on his talents. Well known as a composer, conductor, and organist, Mendelssohn helped to bring fame to the music of Bach.", excerpts: [
    mendelssohnMidsummer
])

let mussorgsky = Composer(id: 9, name: "Modest Mussorgsky", ipa: "moʊˈdɛst mʊˈsɔrg ski", image: 2008, country: "Russia", dates: "1839-1881", bio: "Mussorgsky was one of the most important composers in Russia during his lifetime. He frequently incorporated folk music, and discarded western traditions in favor of Russian nationalism. Many of his works are most famous through arrangements by other composers.", excerpts: [
    mussorgskyNightBald
])

let respighi = Composer(id: 10, name: "Ottorino Respighi", ipa: "ottoˈriːno reˈspiːɡi", image: 2009, country: "Italy", dates: "1879-1936", bio: "Respighi was an Italian violinist, composer, and musicologist. Hist interest in musicology led to the composition of his three most famous compositions: \"Fountains of Rome\", \"Pines of Rome\", and \"Roman Festivals\"", excerpts: [
    respighiFountains
])

let rimskyKorsakov = Composer(id: 11, name: "Nikolai Rimsky-Korsakov", ipa: "nʲɪkəˈlaj ˈrʲimskʲɪj ˈkorsəkəf", image: 2010, country: "Russia", dates: "1844-1908", bio: "Nikolai Rimsky-Korsakov was one of the most famous Russian composers. He was a master orchestrator, publishing a textbook on the subject using musical examples solely from his own compositions, and his most famous compositions are his orchestral works. Rimsky-Korsakov also spent a large portion of his musical life in association with the Russian military.", excerpts: [
    rimskyKorsakovScheherazade
])

let sibelius = Composer(id: 12, name: "Jean Sibelius", ipa: "ʒɑn  sɪˈbeɪ li əs", image: 2011, country: "Finland", dates: "1865-1957", bio: "Sibelius is the most well known composer to come out of Finland. His music is credited with helping Finland to develop a national identity, and his most famous work \"Finlandia\" is known as Finland's unofficial national anthem. Sibelius mysteriously stopped composing in the last thirty years of his life, retiring to a quite life in Järvenpää.", excerpts: [
    sibelius1, sibelius2
])

let sousa = Composer(id: 13, name: "John Philip Sousa", ipa: "dʒɒn ˈfɪl ɪp 'su zə", image: 2012, country: "The United States of America", dates: "1854–1932", bio: "John Philip Sousa was an American composer of the late romantic era famous for his American military marches. He is known as \"The March King\". Sousa spent much of his career conducting The United States Marine Band, before starting his own band in 1892. Sousa also aided in the creation of the Sousaphone, a large brass instrument similar to the Helicon and Tuba.", excerpts: [
    sousaStarsAndStripes
])


let rStrauss = Composer(id: 14, name: "Richard Strauss", ipa: "ˈʁɪçaʁt ˈʃtʁaʊs", image: 2013, country: "Germany", dates: "1864-1949", bio: "Richard Strauss was one of the leading composers of the Romantic Era. He, along with Gustav Mahler, were considered successors of Richard Wagner. Although Strauss composed music for almost every classical genre, he is most famous for his tone poems. Strauss' compositional output began when he was just six years old, and continued almost eighty years later until his death.", excerpts: [
    straussAlsoSprach, straussDeathAndTransfiguration, straussDonJuan, straussDonQuixote, straussHeldenleben, straussEulenspiegel
])

let stravinsky = Composer(id: 15, name: "Igor Stravinsky", ipa: "ˈi gɔr strəˈvɪn ski", image: 2014, country: "Russia", dates: "1882-1971", bio: "Igor Stravinsky was one of the most influential composers of the twentieth century. Stravinsky's music is very unique from that of other composers, and often contains russian folk melodies. Throughout his life, the kinds of compositions that he composed also changed dramatically, from symphonies, to chamber music, to ballets.", excerpts: [
    stravinskyRite
])

let tchaikovsky = Composer(id: 16, name: "Pyotr Ilyich Tchaikovsky", ipa: "ˈpyɔtr iˈlyitʃ tʃaɪˈkɒfski", image: 2015, country: "Russia", dates: "1840-1893", bio: "Tchaikovsky was the first Russian composer to gain international fame. Tchaikovsky recieved a western European style music education, which seemed to counter the traditional Russian music practices. This dichotomy posed a great challenge for Tchaikovsky, one that affected his self confidence a lot. Although Tchaikovsky's music gained popular support, his life was deeply affected by depression and personal crises.", excerpts: [
    tchaikRomeoAndJuliet, tchaikovskySleepingBeauty, tchaikSwanLake, tchaik1, tchaik2, tchaik4, tchaik5, tchaik6
   
])

let verdi = Composer(id: 17, name: "Giuseppe Verdi", ipa: "dʒuˈzɛppe ˈverdi", image: 2016, country: "Italy", dates: "1813-1901", bio: "Giuseppe Verdi was an Italian opera composer who took after Rossini, Bellini, and Donizetti. Rossini had sympathy for the Risorgimento movement for the unification of Italy, and some choruses from his early operas were in the spirit of this movement. Verdi participated briefly as an elected politician, and sought to establish himself as a landowner in his native region.", excerpts: [
    verdiNabucco
])

let wagner = Composer(id: 18, name: "Richard Wagner", ipa: "ˈʁɪçaʁt ˈvaːɡnɐ", image: 2017, country: "Germany", dates: "1813-1883", bio: "Wagner is one of the most well known composers of all time. His music frequently appears in television shows and movies. He was most well known in his era for his operas, which usually run about four hours. Wagner was unusual as an opera composer because he himself wrote the liberetto for the operas he composed. Wagner had his own opera house constructed, which still stands to this day.", excerpts: [
    wagnerRheingold, wagnerMeistersinger, wagnerRide, wagnerFaust, wagnerGotterdamerung, wagnerLohengrin, wagnerTannhauser
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
        berliozBenvenuto, berliozFaust, berliozKingLear, berliozLeCorsaire, berliozRomeo, berliozSymphonie, brahmsAcademic, brahms2, brahmsTragic, bruckner4, bruckner7, bruckner8, bruckner9, franckD, holstFirstSuite, holstPlanets, mahler1, mahler2, mahler3, mahler5, mahler6, mahler9, mendelssohnMidsummer, mussorgskyNightBald, respighiFountains, rimskyKorsakovScheherazade, sibelius1, sibelius2, sousaStarsAndStripes, straussAlsoSprach, straussDeathAndTransfiguration, straussDonJuan, straussDonQuixote, straussHeldenleben, straussEulenspiegel, stravinskyRite, tchaikRomeoAndJuliet, tchaikovskySleepingBeauty, tchaikSwanLake, tchaik1, tchaik2, tchaik4, tchaik5, tchaik6, verdiNabucco, wagnerRheingold, wagnerMeistersinger, wagnerRide, wagnerFaust, wagnerGotterdamerung, wagnerLohengrin, wagnerTannhauser
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        berlioz, brahms, bruckner, franck, holst, mahler, mendellsohn, mussorgsky, respighi, rimskyKorsakov, sibelius, sousa, rStrauss, stravinsky, tchaikovsky, verdi, wagner
    ]
}

/**
 A Model for storing favorite compositions IDs as strings in an encapsulated list. Data is stored internally on every change.
 */
class Favorites: ObservableObject {
    // the actual composition the user has favorited
    private var compositionIDs: [String]

    // the key we're using to read/write in UserDefaults
    private let saveKey = "Favorites"

    init() {
        // load our saved data
        self.compositionIDs = UserDefaults.standard.stringArray(forKey: saveKey) ?? [String]()
    }

    // returns true if our set contains this composition
    func contains(_ image: String) -> Bool {
        compositionIDs.contains(image)
    }

    // adds the resort to our set, updates all views, and saves the change
    func add(_ image: String) {
        objectWillChange.send()
        compositionIDs.append(image)
        save()
    }

    // removes the composition from our set, updates all views, and saves the change
    func remove(_ image: String) {
        objectWillChange.send()
        var counter = 0
        var removeIndex = 0
        while counter < compositionIDs.count {
            if compositionIDs[counter] == image {
                removeIndex = counter
            }
            counter += 1
        }
        compositionIDs.remove(at: removeIndex)
        save()
    }
    
    func removeAll() {
        objectWillChange.send()
        compositionIDs.removeAll()
        save()
    }

    func save() {
        // write out our data
        UserDefaults.standard.set(self.compositionIDs, forKey: saveKey)
    }
}

/**
 A model for saving user settings. Data is readable and writeable directly to memory from accessing and setting published variables.
 */
class settingsModel: ObservableObject {
    /**
     A static list to display names of random options in the Picker.
     */
    var randomOptions = ["All", "Favorites"]
    
    /**
     Selected Randoms is the user's choice for selecting whether only favorite excerpts or all excerpts will show in the RandomCompositionView. If the user has not chosen, it will default to 0 (All excerpts).
     <p>
     Note: Data will be saved and read directly from memory on read and write of this variable.
     */
    @Published var selectedRandoms: Int = UserDefaults.standard.integer(forKey: "Randoms") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.selectedRandoms, forKey: "Randoms")
        }
    }
}


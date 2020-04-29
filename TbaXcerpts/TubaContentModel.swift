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
], mutes: "", videos: [
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

let berliozBenvenuto = Composition(id: 2, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Benvenuto Cellini", date: "1838", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 5, description: "Excerpt 1", measures: "Overture, [15] - 5 mm. after [19]", pictures: [["Tuba", "1004"]])
], mutes: "", videos: [
    //TODO: YouTube for Belvenuto Cellini
    ["", ""]
])

let berliozKingLear = Composition(id: 3, composer: "Hector Berlioz", composerLast: "Berlioz", name: "King Lear", date: "1831", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 6, description: "Excerpt 1", measures: "3 mm. after [21] - 8 mm. after [22]", pictures: [["Tuba", "1005"]])
], mutes: "", videos: [
    // TODO: YouTube for King Lear
    [""]
])

let berliozLeCorsaire = Composition(id: 4, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Le Corsaire", date: "1844", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 7, description: "Excerpt 1", measures: "[5] - 17 mm. before [6] ", pictures: [["Tuba", "1006"]]),
    Excerpt(id: 8, description: "Excerpt 2", measures: "3 mm. after [12] - [13] ", pictures: [["Tuba", "1007"]]),
    Excerpt(id: 9, description: "Excerpt 3", measures: "[16] - 8 mm. after [17] ", pictures: [["Tuba", "1008"]]),
    Excerpt(id: 10, description: "Excerpt 4", measures: "6 mm. before [19] to [19] ", pictures: [["Tuba", "1009"]])
], mutes: "", videos: [
    // TODO: YouTube for Le Corsaire
    ["", ""]
])

let berliozRomeo = Composition(id: 5, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Roméo et Juliette", date: "1839", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 11, description: "Excerpt 1", measures: "14 mm. before [4] - 8 mm. after [6] ", pictures: [["Tuba", "1010"]]),
    Excerpt(id: 12, description: "Excerpt 2", measures: "27 mm. before [84] - 1 mm. after [84] ", pictures: [["Tuba", "1011"]]),
    Excerpt(id: 13, description: "Excerpt 3", measures: "2 mm. after [89] - 13 mm. after [89] ", pictures: [["Tuba", "1012"]])
], mutes: "", videos: [
    // TODO: YouTube for Romeo et juliette
    ["", ""]
])

let berliozSymphonie = Composition(id: 6, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Symphonie fantastique", date: "1830", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 14, description: "Excerpt 1", measures: "Mov. IV, 2 mm. before [53] - 7 mm. before [54]", pictures: [["Ophicleïde 1", "1013"]]),
    Excerpt(id: 15, description: "Excerpt 2", measures: "Mov. IV, [56] - 3 mm. after [58]", pictures: [["Ophicleïde 1", "1014"], ["Ophicleïde 2", "1015"]]),
    Excerpt(id: 16, description: "Excerpt 3", measures: "Mov. V, [60] - 1 mm. before [61]", pictures: [["Ophicleïde 1", "1016"]]),
    Excerpt(id: 17, description: "Excerpt 4", measures: "Mov. V, 11 mm. before [63] - [63]", pictures: [["Ophicleïde 1", "1017"]]),
    Excerpt(id: 18, description: "Excerpt 5", measures: "Mov. V, 6 mm. after [66] - 14 mm. before [69]", pictures: [["Ophicleïde 1", "1018"], ["Ophicleïde 2", "1019"]]),
    Excerpt(id: 19, description: "Excerpt 6", measures: "Mov. V, [84] - End", pictures: [["Ophicleïde 1", "1020"], ["Ophicleïde 2", "1021"]])
], mutes: "", videos: [
    ["정명훈 (Chung Myung-Whun)", "5HgqPpjIH5c"],
    ["Leopold Stokowski, New Philharmonia Orchestra", "ewoAW-Zyuj8"],
    ["Mariss Jansons, Bavarian Radio Symphony Orchestra", "yK6iAxe0oEc?t=284"],
    ["Sir Colin Davis, London Symphony Orchestra", "HSsxoPcUaaQ"],
    // Masterclasses
    ["Southeast Trombone Symposium", "oYSnGq5wNxU"]
])

let brahmsAcademic = Composition(id: 7, composer: "Johannes Brahms", composerLast: "Brahms", name: "Academic Festival Overture", date: "1880", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 20, description: "Excerpt 1", measures: "[C] - 14 mm. before [E]", pictures: [["Tuba", "1022"]]),
    Excerpt(id: 21, description: "Excerpt 2", measures: "[K] - 3 mm. after [M]", pictures: [["Tuba", "1023"]]),
    Excerpt(id: 22, description: "Excerpt 3", measures: "mm. 379 - End", pictures: [["Tuba", "1024"]])
], mutes: "", videos: [
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
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "qbcfuMlNRWg"],
    ["Carlos Kleiber, Wiener Philharmoniker", "XHmkl7GM_es"],
    ["Carlos Kleiber, Wiener Philharmoniker (With Score)", "HCkSpCh4Wcw"],
    ["Herbert von Karajan, Berlin Philarmonic Orchestra", "nX3RX3A3CbI"],
    ["Kurt Masur, Gewandhausorchester Leipzig", "lSii-jC6-Uo"],
    ["Leonard Bernstein, Wiener Philharmoniker", "6nKd-ia7_Lc"],
    ["Philippe Herreweghe, Frankfurt Radio Symphony Orchestra", "vMPP8DkVhk8"],
    ["Seiji Ozawa, Saito Kinen Orchestra", "QnTNiYTHQ90"],
    // Masterclasses
    ["NDR Elbphilharmonie Orchestra Trombones", "xIM-R4zWO9w"]
])

let brahmsTragic = Composition(id: 9, composer: "Johannes Brahms", composerLast: "Brahms", name: "Tragic Overture", date: "1880", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 25, description: "Excerpt 1", measures: "mm. 10 - 16", pictures: [["Tuba", "1027"]]),
    Excerpt(id: 26, description: "Excerpt 2", measures: "[E] - 5 mm. after [E]", pictures: [["Tuba", "1028"]]),
    Excerpt(id: 27, description: "Excerpt 3", measures: "mm. 395 - 4 mm. before [T]", pictures: [["Tuba", "1029"]])
], mutes: "", videos: [
    ["Claudio Abbado, Berliner Philharmoniker", "DmTMrgZ4Q3U"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "d3Ud6w5Ikn8"],
    ["Daniele Gatti, Royal Concertgebouw Orchestra", "TQ5NEdUiIec"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "3ixfKBIkz1U"],
    ["Herbert von Karajan, Wiener Philharmoniker", "c-UKntDUWPo"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "siYoz9CLA2c"],
    ["Sir Colin Davis, European Union Youth Orchestra", "4hkSZiIbJyA"],
    ["Sir Georg Solti, Chicago Symphony Orchestra", "xcyfLyR2QZk"]
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
], mutes: "", videos: [
    ["Claudio Abbado, Wiener Philharmoniker", "gcBg-tXn0fs"],
    ["Daniel Barenboim, Royal Concertgebouw Orchestra", "xdv-9RFZX2w"],
    ["Eliahu Inbal, Frankfurt Radio Symphony", "DEssCDEAyig"],
    ["Gustavo Gimeno, The Radio Philharmonic Orchestra", "G_VFA988d8s"],
    ["Herbert von Karajan, Berliner Philharmoniker", "rCvOXwgOvOo"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "LY7m119eOys"],
    ["Stanislaw Skrowaczewski, Orquesta Sinfónica de Galicia", "P_BXBiHtIGM"]
])

let bruckner7 = Composition(id: 37, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 7", date: "1881", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 38, description: "Excerpt 1", measures: "Mov. I, 10 mm. after [A] - 7 mm. before [B] ", pictures: [["Tuba", "1039"]]),
    Excerpt(id: 39, description: "Excerpt 2", measures: "Mov. I, mm. 127 - 130", pictures: [["Tuba", "1040"]]),
    Excerpt(id: 40, description: "Excerpt 3", measures: "Mov. I, 2 mm. after [M] - [N]", pictures: [["Tuba", "1041"]]),
    Excerpt(id: 41, description: "Excerpt 4", measures: "Mov. II, [X] - [Y]", pictures: [["Tuba", "1042"]]),
    Excerpt(id: 42, description: "Excerpt 5", measures: "Mov. III, 8 mm. after [C] - 3 mm. before [D]", pictures: [["Tuba", "1043"]]),
    Excerpt(id: 43, description: "Excerpt 6", measures: "Mov. IV, [P] - [S] ", pictures: [["Tuba", "1044"]]),
    Excerpt(id: 44, description: "Excerpt 7", measures: "Mov. IV, [V] - [W] ", pictures: [["Tuba", "1045"]])
], mutes: "", videos: [
    ["Andris Nelsons, Gewandhausorchester Leipzig", "_6sX6aIlgJk"],
    ["Bernard Haitink, Wiener Philharmoniker", "_6sX6aIlgJk"],
    ["Christoph Eschenbach, Frankfurt Radio Symphony", "uaV3eEJB55c"],
    ["Christian Thielemann, Wiener Philharmoniker", "cuXPkoOM2j8"],
    ["Herbert von Karajan, Wiener Philharmoniker", "3pioV8yB3iA"],
    ["Herbert von Karajan, Wiener Philharmoniker", "2XfhRC03Riw"],
    ["Otto Klemperer, ", "wGoYMjVagqQ"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "2X2bbusaOzI"],
    ["Wilhelm Furtwängler, Berliner Philharmoniker", "ihK5eDpP2vU"],
    // Masterclasses
    [" London Philharmonic Orchestra Trombones","D0SRo79T_Sw"]
])

let bruckner8 = Composition(id: 38, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 8", date: "1887", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 45, description: "Excerpt 1", measures: "Mov. I, 1 mm. before [V] - 7 mm. before [X]", pictures: [["Tuba", "1046"]]),
    Excerpt(id: 46, description: "Excerpt 2", measures: "Mov. III, [H] - [I] ", pictures: [["Tuba", "1047"]]),
    Excerpt(id: 47, description: "Excerpt 3", measures: "Mov. III, [O] - 2 mm. after [Q]", pictures: [["Tuba", "1048"]]),
    Excerpt(id: 48, description: "Excerpt 4", measures: "Mov. IV, mm. 3 - 40", pictures: [["Tuba", "1049"]]),
    Excerpt(id: 49, description: "Excerpt 5", measures: "Mov. IV, [X] - [Z] ", pictures: [["Tuba", "1050"]]),
    Excerpt(id: 50, description: "Excerpt 6", measures: "Mov. IV, 1 mm. before [Gg] - [Hh]", pictures: [["Tuba", "1051"]]),
    Excerpt(id: 51, description: "Excerpt 7", measures: "Mov. IV, 5 mm. before [Ii] - [Ll]", pictures: [["Tuba", "1052"]])
], mutes: "", videos: [
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

let bruckner9 = Composition(id: 39, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 9", date: "1887", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 52, description: "Excerpt 1", measures: "Mov. I, [N] - [O] ", pictures: [["Tuba", "1053"]]),
    Excerpt(id: 53, description: "Excerpt 2", measures: "Mov. II, mm. 44 - 50", pictures: [["Tuba", "1054"]]),
    Excerpt(id: 54, description: "Excerpt 3", measures: "Mov. III, [Q] - [R] ", pictures: [["Tuba", "1055"]])
], mutes: "", videos: [
    ["Bernard Haitink, The Orchestre National de France", "MIJET6NO4-k"],
    ["Claudio Abbado, Berliner Philharmoniker Orchester", "DKQCkmeWJAc"],
    ["Claudio Abbado, Vienna Philharmonic", "jQo65DZlJ18"],
    ["Herbert Blomstedt, Gustav Mahler Jugendorchester", "KBZgSC-8Yp0"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "Tw2LNhwnquk"],
    ["Nézet-Séguin, Wiener Philharmoniker", "wcCamtD5ufs"],
    ["Sergiu Celibidache, Munich Philharmonic Orchestra", "JvlkX4VGN-c"],
    ["Stanisław Skrowaczewski, Frankfurt Radio Symphony Orchestra", "Az-kHLRQhsk"],
    ["Wilhelm Furtwängler, Berliner Philharmoniker", "tOfTE-vbKDc"]
])

let franckD = Composition(id: 40, composer: "César Franck", composerLast: "Franck", name: "Symphony in D minor", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 55, description: "Excerpt 1", measures: "Mov. III, [M] - 18 mm. after [N]", pictures: [["Tuba", "1056"]]),
    Excerpt(id: 56, description: "Excerpt 2", measures: "Mov. III, 4 mm. before [S] - End", pictures: [["Tuba", "1057"]])
], mutes: "", videos: [
    ["Kurt Masur, New York Philharmonic Orchestra", "r0W3fqfr2CY"],
    ["Leonard Bernstein, Orchestre National de France", "uosj6PZLKKE"],
    ["Marc Minkowski, Frankfurt Radio Symphony", "uRWFjK11lfw"],
    ["Marc Soustrot, University of Gothenburg Symphony Orchestra", "9srAs4ss2kU"],
    ["Pierre Monteux, Chicago Symphony Orchestra", "G7obO7XyyQc"],
    ["Ricardo Muti, Philadelphia Orchestra", "0nF6TobCyV4"],
    ["Sergiu Celibidache, Munich Philharmonic Orchestra", "ytdSWSE7zxo"]
])

let holstFirstSuite = Composition(id: 41, composer: "Gustav Holst", composerLast: "Holst", name: "First Suite in E♭ for Military Band", date: "1909", era: "Modern", genre: "Suite for Wind Band", excerpts: [
    Excerpt(id: 57, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 8", pictures: [["Euphonium", "1058"], ["Tuba", "1059"]]),
    Excerpt(id: 58, description: "Excerpt 2", measures: "Mov. I, 7 mm. after [B] - [C]", pictures: [["Euphonium", "1060"], ["Tuba", "1061"]]),
    Excerpt(id: 59, description: "Excerpt 3", measures: "Mov. II, [F] - 3 mm. before End", pictures: [["Euphonium", "1062"], ["Tuba", "1063"]])
], mutes: "", videos: [
    // TODO: Find YouTube for Holst First Suite
    ["", ""]
])

let holstPlanets = Composition(id: 42, composer: "Gustav Holst", composerLast: "Holst", name: "The Planets", date: "1916", era: "Modern", genre: "Orchestral Suite", excerpts: [
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
], mutes: "", videos: [
    ["André Previn,  London Symphony Orchestra (With Score)", "YRDF2YJojAM"],
    ["Edward Gardner, National Youth Orchestra", "be7uEyyNIT4"],
    ["Eugene Ormandy, Philadelphia Orchestra", "YtphY-4xjQw"],
    ["Herbert Von Karajan, Berlin Philharmonic Orchestra", "gd_pt39NwFM"],
    ["Maciej Tarnowski, Warsaw Philharmonic Orchestra", "3OD_HzdZwKk"],
    ["Sir Adrian Boult, BBC Symphony Orchestra (With Score)", "eSqb7gD5acY"],
    ["Sir Charles Groves, Royal Philharmonic Orchestra", "UmOTMkoCCkM"],
    ["William Steinberg, Boston Symphony Orchestra", "Isic2Z2e2xs"]
])


let pictures = [["Tuba", ""]]
let pictures2 = [["Tenor Tuba", ""], ["Tuba", ""]]

/*
X Berlioz Damnation of Faust
X Berlioz Benvenuto Cellini
X Berlioz King Lear
X Berlioz Le Corsaire
X Berlioz Romeo and Juliet
X Berlioz Symphonie Fantastique
X Brahms Academic Festival Overture
X Brahms Tragic Overture
X Brahms: Symphony No. 2
X Bruckner Symphony No. 4
X Bruckner Symphony No. 7
X Bruckner Symphony No. 8
X Bruckner Symphony No. 9
X Franck Symphony in D
X Holst First Suite in Eb
X Holst The Planets
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

let liszt = Composer(id: 6, name: "Franz Liszt", ipa: "frɑnts lɪst", image: 2005, country: "Hungary", dates: "1811-1886", bio: "Liszt was an extremely well known composer and performer throughout his life, and befriended many other composers, including Chopin, Wagner, Berlioz, and Schumann. Liszt was very prolific, leaving behind a vast body of diverse work. He invented the symphonic poem, and was one of the first musicians to perform what we now know to be a recital. Liszt also performed from memory, being one of the first musicians to do so.", excerpts: [
])

let mahler = Composer(id: 7, name: "Gustav Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 2006, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.", excerpts: [
])

let mendellsohn = Composer(id: 8, name: "Felix Mendelssohn", ipa: "'fi lɪks 'mɛn dl sən", image: 2007, country: "Germany", dates: "1809-1947", bio: "Mendelssohn was born into a Jewish family, but was baptised Reformed Christian at the age of seven. He was known as a child prodigy, but his parents did not seek to capitalize on his talents. Well known as a composer, conductor, and organist, Mendelssohn helped to bring fame to the music of Bach.", excerpts: [
])

let mussorgsky = Composer(id: 9, name: "Modest Mussorgsky", ipa: "moʊˈdɛst mʊˈsɔrg ski", image: 2008, country: "Russia", dates: "1839-1881", bio: "Mussorgsky was one of the most important composers in Russia during his lifetime. He frequently incorporated folk music, and discarded western traditions in favor of Russian nationalism. Many of his works are most famous through arrangements by other composers.", excerpts: [
])

let respighi = Composer(id: 10, name: "Ottorino Respighi", ipa: "ottoˈriːno reˈspiːɡi", image: 2009, country: "Italy", dates: "1879-1936", bio: "Respighi was an Italian violinist, composer, and musicologist. Hist interest in musicology led to the composition of his three most famous compositions: \"Fountains of Rome\", \"Pines of Rome\", and \"Roman Festivals\"", excerpts: [
])

let rimskyKorsakov = Composer(id: 11, name: "Nikolai Rimsky-Korsakov", ipa: "nʲɪkəˈlaj ˈrʲimskʲɪj ˈkorsəkəf", image: 2010, country: "Russia", dates: "1844-1908", bio: "Nikolai Rimsky-Korsakov was one of the most famous Russian composers. He was a master orchestrator, publishing a textbook on the subject using musical examples solely from his own compositions, and his most famous compositions are his orchestral works. Rimsky-Korsakov also spent a large portion of his musical life in association with the Russian military.", excerpts: [
])

let sibelius = Composer(id: 12, name: "Jean Sibelius", ipa: "ʒɑn  sɪˈbeɪ li əs", image: 2011, country: "Finland", dates: "1865-1957", bio: "Sibelius is the most well known composer to come out of Finland. His music is credited with helping Finland to develop a national identity, and his most famous work \"Finlandia\" is known as Finland's unofficial national anthem. Sibelius mysteriously stopped composing in the last thirty years of his life, retiring to a quite life in Järvenpää.", excerpts: [
])

let sousa = Composer(id: 13, name: "John Philip Sousa", ipa: "dʒɒn ˈfɪl ɪp 'su zə", image: 2012, country: "The United States of America", dates: "1854–1932", bio: "John Philip Sousa was an American composer of the late romantic era famous for his American military marches. He is known as \"The March King\". Sousa spent much of his career conducting The United States Marine Band, before starting his own band in 1892. Sousa also aided in the creation of the Sousaphone, a large brass instrument similar to the Helicon and Tuba.", excerpts: [
])


let rStrauss = Composer(id: 14, name: "Richard Strauss", ipa: "ˈʁɪçaʁt ˈʃtʁaʊs", image: 2013, country: "Germany", dates: "1864-1949", bio: "Richard Strauss was one of the leading composers of the Romantic Era. He, along with Gustav Mahler, were considered successors of Richard Wagner. Although Strauss composed music for almost every classical genre, he is most famous for his tone poems. Strauss' compositional output began when he was just six years old, and continued almost eighty years later until his death.", excerpts: [

])

let stravinsky = Composer(id: 15, name: "Igor Stravinsky", ipa: "ˈi gɔr strəˈvɪn ski", image: 2014, country: "Russia", dates: "1882-1971", bio: "Igor Stravinsky was one of the most influential composers of the twentieth century. Stravinsky's music is very unique from that of other composers, and often contains russian folk melodies. Throughout his life, the kinds of compositions that he composed also changed dramatically, from symphonies, to chamber music, to ballets.", excerpts: [
    
])

let tchaikovsky = Composer(id: 16, name: "Pyotr Ilyich Tchaikovsky", ipa: "ˈpyɔtr iˈlyitʃ tʃaɪˈkɒfski", image: 2015, country: "Russia", dates: "1840-1893", bio: "Tchaikovsky was the first Russian composer to gain international fame. Tchaikovsky recieved a western European style music education, which seemed to counter the traditional Russian music practices. This dichotomy posed a great challenge for Tchaikovsky, one that affected his self confidence a lot. Although Tchaikovsky's music gained popular support, his life was deeply affected by depression and personal crises.", excerpts: [
   
])

let verdi = Composer(id: 17, name: "Giuseppe Verdi", ipa: "dʒuˈzɛppe ˈverdi", image: 2016, country: "Italy", dates: "1813-1901", bio: "Giuseppe Verdi was an Italian opera composer who took after Rossini, Bellini, and Donizetti. Rossini had sympathy for the Risorgimento movement for the unification of Italy, and some choruses from his early operas were in the spirit of this movement. Verdi participated briefly as an elected politician, and sought to establish himself as a landowner in his native region.", excerpts: [

])

let wagner = Composer(id: 18, name: "Richard Wagner", ipa: "ˈʁɪçaʁt ˈvaːɡnɐ", image: 2017, country: "Germany", dates: "1813-1883", bio: "Wagner is one of the most well known composers of all time. His music frequently appears in television shows and movies. He was most well known in his era for his operas, which usually run about four hours. Wagner was unusual as an opera composer because he himself wrote the liberetto for the operas he composed. Wagner had his own opera house constructed, which still stands to this day.", excerpts: [

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
        berliozBenvenuto, berliozFaust, berliozKingLear, berliozLeCorsaire, berliozRomeo, berliozSymphonie, brahmsAcademic, brahms2, brahmsTragic, bruckner4, bruckner7, bruckner8, bruckner9, franckD, holstFirstSuite, holstPlanets
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        berlioz, brahms, bruckner, franck, holst, liszt, mahler, mendellsohn, mussorgsky, respighi, rimskyKorsakov, sibelius, sousa, rStrauss, stravinsky, tchaikovsky, verdi, wagner
    ]
}



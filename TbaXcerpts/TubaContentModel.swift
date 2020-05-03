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

let bruckner7 = Composition(id: 11, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 7", date: "1881", era: "Romantic", genre: "Symphony", excerpts: [
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

let bruckner8 = Composition(id: 12, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 8", date: "1887", era: "Romantic", genre: "Symphony", excerpts: [
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

let bruckner9 = Composition(id: 13, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 9", date: "1887", era: "Romantic", genre: "Symphony", excerpts: [
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

let franckD = Composition(id: 14, composer: "César Franck", composerLast: "Franck", name: "Symphony in D minor", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
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

let holstFirstSuite = Composition(id: 15, composer: "Gustav Holst", composerLast: "Holst", name: "First Suite in E♭ for Military Band", date: "1909", era: "Modern", genre: "Suite for Wind Band", excerpts: [
    Excerpt(id: 57, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 8", pictures: [["Euphonium", "1058"], ["Tuba", "1059"]]),
    Excerpt(id: 58, description: "Excerpt 2", measures: "Mov. I, 7 mm. after [B] - [C]", pictures: [["Euphonium", "1060"], ["Tuba", "1061"]]),
    Excerpt(id: 59, description: "Excerpt 3", measures: "Mov. II, [F] - 3 mm. before End", pictures: [["Euphonium", "1062"], ["Tuba", "1063"]])
], mutes: "", videos: [
    // TODO: Find YouTube for Holst First Suite
    ["", ""]
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

let mahler1 = Composition(id: 17, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 1", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 70, description: "Excerpt 1", measures: "Mov. I, 11 mm. before [25] - [25]", pictures: [["Tuba", "1082"]]),
    Excerpt(id: 71, description: "Excerpt 2", measures: "Mov. II, 3 mm. after [15] - 3 mm. before [16]", pictures: [["Tuba", "1083"]]),
    Excerpt(id: 72, description: "Excerpt 3", measures: "Mov. II, 3 mm. after [32] - End", pictures: [["Tuba", "1084"]]),
    Excerpt(id: 73, description: "Excerpt 4", measures: "Mov. III, 4 mm. before [3] - 3 mm. before [5]", pictures: [["Tuba", "1085"]]),
], mutes: "", videos: [
    //TODO: Find YouTube videos for Mahler 1
    ["", ""]
])

let mahler2 = Composition(id: 18, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 2", date: "1894", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 74, description: "Excerpt 1", measures: "Mov. I, 3 mm. before [18] - 4 mm. after [18]", pictures: [["Tuba", "1086"]]),
    Excerpt(id: 75, description: "Excerpt 2", measures: "Mov. I, mm. 312 - 314", pictures: [["Tuba", "1087"]]),
    Excerpt(id: 76, description: "Excerpt 3", measures: "Mov. I, [20] - 4 mm. after [20]", pictures: [["Tuba", "1088"]]),
    Excerpt(id: 77, description: "Excerpt 4", measures: "Mov. V, [14] - [15]", pictures: [["Tuba", "1089"]]),
    Excerpt(id: 78, description: "Excerpt 5", measures: "Mov. V, mm. 301 - 307", pictures: [["Tuba", "1090"]]),
    Excerpt(id: 79, description: "Excerpt 6", measures: "Mov. V, [25] - 8 mm. after [26]", pictures: [["Tuba", "1091"]])
], mutes: "", videos: [
    ["Bernard Haitink, Koninklijk Concertgebouworkest", "oUBx_Q-xw2M"],
    ["Gustavo Dudamel, Simón Bolívar Symphony Orchestra of Venezuela", "rKrsEbjXYX8"],
    ["Leonard Bernstein, London Symphony Orchestra", "edA9Zard3-U"],
    ["Leonard Bernstein, New York Philharmonic (With Score)", "z2KcsjA_PEQ"],
    ["Mariss Jansons, Royal Concertgebouw Orchestra", "sHsFIv8VA7w"],
    // Masterclasses
    ["New York Philharmonic Trombones", "jpngMjN6fmQ"],
    ["Southeast Trombone Symposium", "IQgPSZq1bzs"]
])

let mahler3 = Composition(id: 19, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 3", date: "1896", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 80, description: "Excerpt 1", measures: "Mov. I, [2] - 3 mm. after [4]", pictures: [["Tuba", "1092"]]),
    Excerpt(id: 81, description: "Excerpt 2", measures: "Mov. I, 1 mm. after [44] - 2 mm. before [45]", pictures: [["Tuba", "1093"]]),
    Excerpt(id: 82, description: "Excerpt 3", measures: "Mov. I, 6 mm. before [74] - End", pictures: [["Tuba", "1094"]]),
    Excerpt(id: 83, description: "Excerpt 4", measures: "Mov. III, 4 mm. before [20] - [21] ", pictures: [["Tuba", "1095"]])
], mutes: "", videos: [
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
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "fEGNNuEM3Fc"],
    ["Bernard Haitink, Koninklijk Concertgebouworkest", "MruTSRVecMo"],
    ["Christoph Eschenbach, Sinfónica de Galicia", "1tCk6nOOdzI"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "vOvXhyldUko"],
    ["Gustavo Dudamel, Simón Bolívar Symphony Orchestra", "1F5G9JngqZY"],
    ["Leonard Bernstein, Wiener Philharmoniker", "6EJn43FEmjo"],
    ["Leonard Bernstein, Wiener Philharmoniker (With Score)", "nO0nytFsumo"],
    ["Valery Gergiev, World Orchestra for Peace", "UjmthMDpyco"]
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
], mutes: "", videos: [
    //TODO: YouTube for Mahler 6
    ["", ""]
])

let mahler9 = Composition(id: 22, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 9", date: "1910", era: "Romantic", genre: "", excerpts: [
    Excerpt(id: 104, description: "Excerpt 1", measures: "Mov. I, 1 mm. after [9] - 4 mm. after [9] ", pictures: [["Tuba", "1116"]]),
    Excerpt(id: 105, description: "Excerpt 2", measures: "Mov. II, 3 mm. after [25] - 8 mm. after [25] ", pictures: [["Tuba", "1117"]]),
    Excerpt(id: 106, description: "Excerpt 3", measures: "Mov. III, Sempre l’istesso tempo after [32]", pictures: [["Tuba", "1118"]]),
    Excerpt(id: 107, description: "Excerpt 4", measures: "Mov. IV, Solo", pictures: [["Tuba", "1119"]])
], mutes: "", videos: [
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
], mutes: "", videos: [
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
], mutes: "", videos: [
    //TODO: YouTube for Mussorgsky Night
    ["", ""]
])

let respighiFountains = Composition(id: 25, composer: "Ottorino Respighi", composerLast: "Respighi", name: "Fontane di Roma", date: "1916", era: "Romantic", genre: "Symphonic Poem", excerpts: [
    Excerpt(id: 116, description: "Excerpt 1", measures: "1 mm. before [11] - 4 mm. after [16] ", pictures: [["Tuba", "1128"]])
], mutes: "", videos: [
    ["Alan Gilbert, New York Philharmonic", "kk7LTvjdv1M"],
    ["Arturo Toscanini, Maazel Filarmonica", "u6bRHpcxJcM"],
    ["Eugene Ormandy, Philadelphia Orchestra", "aSVOR3_aJ3M"],
    ["Herbert von Karajan, Berlin Philharmonic", "eGZ9oslaeak"],
    // Bands
    ["Jerry Junkin, The University of Texas Wind Ensemble", "PM_UjFqclIc"]
])

let rimskyKorsakovScheherazade = Composition(id: 26, composer: "Nikolai Rimsky-Korsakov", composerLast: "Rimsky-Korsakov", name: "Scheherazade", date: "1888", era: "Romantic", genre: "Symphonic Suite", excerpts: [
    Excerpt(id: 117, description: "Excerpt 1", measures: "Mov. I, [H] - [L] ", pictures: [["Tuba", "1129"]])
], mutes: "", videos: [
    ["André Previn, Vienna Philharmonic Orchestra", "p_iPn1GbUUU"],
    ["Eugene Ormandy, Philadelphia Orchestra", "LEN5ObBND88"],
    ["Leif Segerstam, Sinfónica de Galicia", "zY4w4_W30aQ"],
    ["Nejc Bečan, Gimnazija Kranj Symphony Orchestra", "17lEx0ytE_0"],
    ["Valery Gergiev, Vienna Philharmonic", "SQNymNaTr-Y"],
    ["Yevgeny Svetlanov, USSR State Symphony Orchestra", "jR_Q7NbLzyU"],
    ["Yuri Temirkanov, Saint-Petersburg Philharmonic Orchestra", "vdnUBQT5Bqw"]
])

let sibelius1 = Composition(id: 27, composer: "Jean Sibelius", composerLast: "Sibelius", name: "Symphony No. 1", date: "1899", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 118, description: "Excerpt 1", measures: "Mov. IV, 4 mm. after [N] - 22 mm. after [O]", pictures: [["Tuba", "1130"]])
], mutes: "", videos: [
    //TODO: YouTube for Sibelius 1
    ["", ""]
])

let sibelius2 = Composition(id: 28, composer: "Jean Sibelius", composerLast: "Sibelius", name: "Symphony No. 2", date: "1902", era: "Modern", genre: "Symphony", excerpts: [
    Excerpt(id: 119, description: "Excerpt 1", measures: "Mov. II, [F] - mm. 116", pictures: [["Tuba", "1131"]])
], mutes: "", videos: [
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
], mutes: "", videos: [
    //TODO: YouTube for Stars and Stripes
    ["", ""]
])

let straussAlsoSprach = Composition(id: 30, composer: "Richard Strauss", composerLast: "Strauss", name: "Also sprach Zarathustra", date: "1896", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 123, description: "Excerpt 1", measures: "[6] - 6 mm. after [6]", pictures: [["Tuba 1", "1136"], ["Tuba 2", "1137"]]),
    Excerpt(id: 124, description: "Excerpt 2", measures: "5 mm. after [16] - 3 mm. before [17]", pictures: [["Tuba 1", "1138"], ["Tuba 2", "1139"]]),
    Excerpt(id: 125, description: "Excerpt 3", measures: "Ziemlich langsam after [17] - 8 mm. after Ziemlich langsam", pictures: [["Tuba 1", "1140"], ["Tuba 2", "1141"]]),
    Excerpt(id: 126, description: "Excerpt 4", measures: "12 mm. before [43] - 5 mm. before [43]", pictures: [["Tuba 1", "1142"], ["Tuba 2", "1143"]]),
    Excerpt(id: 127, description: "Excerpt 5", measures: "10 mm. before [46] - 1 mm. before [46]", pictures: [["Tuba 1", "1144"]]),
    Excerpt(id: 128, description: "Excerpt 6", measures: "6 mm. before [49] - 5 mm. before [51]", pictures: [["Tuba 1", "1145"], ["Tuba 2", "1146"]])
], mutes: "", videos: [
    ["Andris Nelsons, Berliner Philharmoniker", "xJoYv6A-UOU"],
    ["Georg Solti, Chicago Symphony Orchestra", "IFPwm0e_K98"],
    ["Giuseppe Sinopoli, Staatskapelle Dresden", "LpNRBublNr0"],
    ["Gustavo Dudamel, Vienna Philharmonic Orchestra", "ETveS23djXM"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra (With Score)", "c8r_pZoaZf0"],
    ["Herbert von Karajan, Vienna Philharmonic", "h3eEHZCahVU"],
    ["Jonathan Nott, Gustav Mahler Youth Orchestra", "6RdZ7rO_cr0"],
    ["Mariss Jansons, Royal Concertgebouw Orchestra", "D4d88IgvhK4"],
    ["Mariss Jansons, Symphonieorchester des Bayerischen Rundfunks", "hC-PA0YGzK0"]
])

let straussDeathAndTransfiguration = Composition(id: 31, composer: "Richard Strauss", composerLast: "Strauss", name: "Death and Transfiguration", date: "1889", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 129, description: "Excerpt 1", measures: "4 mm. before [V] - 3 mm. before [W] ", pictures: [["Tuba", "1147"]]),
    Excerpt(id: 130, description: "Excerpt 2", measures: "5 mm. before [Z] - 8 mm. after [Aa] ", pictures: [["Tuba", "1148"]])
], mutes: "", videos: [
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
], mutes: "", videos: [
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
], mutes: "", videos: [
    ["Bernard Haitink, Symphonieorchester des Bayerischen Rundfunks", "_u5Zq769TJ4"],
    ["Dennis Russell Davies, Orquesta Sinfónica de Galicia", "Bo7KAGhrrIs"],
    ["Herbert von Karajan, Berliner Philharmoniker", "_6P1WHXKAlk"],
    ["Lorin Maazel, Symphonieorchester des Bayerischen Rundfunks", "-7EwD2Vz8fw"],
    ["George Pehlivanian, Orchestra dell'Accademia Nazionale di Santa Cecilia (With Score)", "5PvCGu2Ue0U"],
    ["Seiji Ozawa, Boston Symphony Orchestra", "Un6zfgAJi8I"],
    ["Wolfgang Sawallisch, NHK Symphony", "dJNEuvfeshg"]
])

let straussHeldenleben = Composition(id: 34, composer: "Richard Strauss", composerLast: "Strauss", name: "Ein Heldenleben", date: "1898", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 138, description: "Excerpt 1", measures: "4 mm. after [3] - [4]", pictures: [["Tenor Tuba in B♭", "1160"]]),
    Excerpt(id: 139, description: "Excerpt 2", measures: "[8] - 6 mm. after [8] ", pictures: [["Tenor Tuba in B♭", "1161"], ["Tuba", "1162"]]),
    Excerpt(id: 140, description: "Excerpt 3", measures: "2 mm. before [14] - 2 mm. after [14]", pictures: [["Tenor Tuba in B♭", "1163"], ["Tuba", "1164"]]),
    Excerpt(id: 141, description: "Excerpt 4", measures: "2 mm. before [58] - [66] ", pictures: [["Tenor Tuba in B♭", "1165"], ["Tuba", "1166"]]),
    Excerpt(id: 142, description: "Excerpt 5", measures: "1 mm. before [74] - 2 mm. after [75] ", pictures: [["Tenor Tuba in B♭", "1167"], ["Tuba", "1168"]]),
    Excerpt(id: 143, description: "Excerpt 6", measures: "[79] - 4 mm. after [79]", pictures: [["Tenor Tuba in B♭", "1169"], ["Tuba", "1170"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra (With Score)", "mE-mZUEXWsg"],
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "Us1jfC7bMpA"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "nu5AXJGmkJk"],
    ["Manfred Honeck, Pittsburgh Symphony Orchestra", "NGlzlNlnw_w"],
    ["Mariss Jansons, Symphonie-Orchestrer des Bayerischen Rundfunks", "_2-dLoWorUs"],
    ["Valery Gergiev, Munich Philharmonic Orchestra", "m-aaCruKsLI"],
    // Masterclasses
    ["Southeast Trombone Symposium", "YqBPA00DBIU"]
])

let straussEulenspiegel = Composition(id: 35, composer: "Richard Strauss", composerLast: "Strauss", name: "Till Eulenspiegel's Merry Pranks", date: "1895", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 144, description: "Excerpt 1", measures: "[13] - 1 mm. before [14]", pictures: [["Tuba", "1171"]]),
    Excerpt(id: 145, description: "Excerpt 2", measures: "8 mm. before [19] - 16 mm. after [19]", pictures: [["Tuba", "1172"]]),
    Excerpt(id: 146, description: "Excerpt 3", measures: "[25] - 5 mm. after [25]", pictures: [["Tuba", "1173"]]),
    Excerpt(id: 147, description: "Excerpt 4", measures: "7 mm. before [37] - 4 mm. before [38]", pictures: [["Tuba", "1174"]]),
    Excerpt(id: 148, description: "Excerpt 5", measures: "2 mm. before [40] - 9 mm. after [40]", pictures: [["Tuba", "1175"]])
], mutes: "", videos: [
    ["Christoph von Dohnányi, NDR Elbphilharmonie Orchester", "EMcQQFWAnA0"],
    ["Georg Solti, Wiener Philharmoniker", "ZpA47nVfgBY"],
    ["Herbert von Karajan, Berliner Philharmoniker", "99qWgSItaNQ"],
    ["Leonard Bernstein, New York Philharmonic Orchestra (With Score)", "1zbCfP9wGt4"],
    ["Lorin Maazel, Symphonieorchester des Bayerischen Rundfunk (With Score)", "QV5r9KG1eyc"],
    ["Richard Strauss, Vienna Philharmonic", "IouFZBgEG3s"],
    ["Masahiko Tanaka, Waseda Symphony Orchestra", "S7O9Oa22nsQ"],
    ["Zubin Mehta, New York Philharmonic", "ZU556MvQN6c"]
])
//1176, 1177 used

let stravinskyRite = Composition(id: 36, composer: <#T##String#>, composerLast: <#T##String#>, name: <#T##String#>, date: <#T##String#>, era: <#T##String#>, genre: <#T##String#>, excerpts: <#T##[Excerpt]#>, mutes: <#T##String#>, videos: <#T##[[String]]#>)

let pictures = [["Tuba", ""]]
let pictures2 = [["Tenor Tuba in B♭", ""], ["Tuba", ""]]

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
 Liszt/Brown Les Preludes <- Cannot Find
 Liszt/Kindig Mazeppa <- Cannot Find
X Mahler Symphony No. 1
X Mahler Symphony No. 2
X Mahler Symphony No. 3
X Mahler Symphony No. 5
X Mahler Symphony No. 6
X Mahler Symphony No. 9
X Mendelssohn A Midsummernight’s Dream
X Mussorgsky Night on Bald Mountain
 Mussorgsky/Ravel: Pictures at an Exhibition // NOT PD(!)
X Respighi Fountains of Rome
X Rimsky-Korsakov Scheherazade
X Sibelius Symphony 2
X Sibelius Symphony No. 1
X Sousa The Stars and Stripes Forever
X Strauss Also sprach Zarathustra
X Strauss Ein Heldenleben
X Strauss Till Elenspiegels lustige Streiche
 Stravinsky Rite of Spring
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
        berliozBenvenuto, berliozFaust, berliozKingLear, berliozLeCorsaire, berliozRomeo, berliozSymphonie, brahmsAcademic, brahms2, brahmsTragic, bruckner4, bruckner7, bruckner8, bruckner9, franckD, holstFirstSuite, holstPlanets, mahler1, mahler2, mahler3, mahler5, mahler6, mahler9, mendelssohnMidsummer, mussorgskyNightBald, respighiFountains, rimskyKorsakovScheherazade, sibelius1, sibelius2, sousaStarsAndStripes, straussAlsoSprach, straussDeathAndTransfiguration, straussDonJuan, straussDonQuixote, straussHeldenleben, straussEulenspiegel, stravinskyRite
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        berlioz, brahms, bruckner, franck, holst, mahler, mendellsohn, mussorgsky, respighi, rimskyKorsakov, sibelius, sousa, rStrauss, stravinsky, tchaikovsky, verdi, wagner
    ]
}



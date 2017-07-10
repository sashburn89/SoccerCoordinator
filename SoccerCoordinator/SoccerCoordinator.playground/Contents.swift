/*
 Name           Height (inches)	Soccer Experience	Guardian Name(s)
 Joe Smith              42      YES                 Jim and Jan Smith
 Jill Tanner            36      YES                 Clara Tanner
 Bill Bon               43      YES                 Sara and Jenny Bon
 Eva Gordon             45      NO                  Wendy and Mike Gordon
 Matt Gill              40      NO                  Charles and Sylvia Gill
 Kimmy Stein            41      NO                  Bill and Hillary Stein
 Sammy Adams            45      NO                  Jeff Adams
 Karl Saygan            42      YES                 Heather Bledsoe
 Suzane Greenberg       44      YES                 Henrietta Dumas
 Sal Dali               41      NO                  Gala Dali
 Joe Kavalier           39      NO                  Sam and Elaine Kavalier
 Ben Finkelstein        44      NO                  Aaron and Jill Finkelstein
 Diego Soto             41      YES                 Robin and Sarika Soto
 Chloe Alaska           47      NO                  David and Jamie Alaska
 Arnold Willis          43      NO                  Claire Willis
 Phillip Helm           44      YES                 Thomas Helm and Eva Jones
 Les Clay               42      YES                 Wynonna Brown
 Herschel Krustofski	45      YES                 Hyman and Rachel Krustofski
 
 */


// Listing of players and their information in one dictionary. Using let because player information does not change.

let joeSmith: [String: String] = ["Name": "Joe Smith", "Height": "42", "Soccer Experience": "yes", "Guardian Names": "Jim and Jan Smith"]
let jillTanner: [String: String] = ["Name": "Jill Tanner", "Height": "36", "Soccer Experience": "yes", "Guardian Names": "Clara Tanner"]
let billBon: [String: String] = ["Name": "Bill Bon", "Height": "43", "Soccer Experience": "yes", "Guardian Names": "Sara and Jenny Bon"]
let evaGordon: [String: String] = ["Name": "Eva Gordon", "Height": "45", "Soccer Experience": "no", "Guardian Names": "Wendy and Mike Gordon"]
let mattGill: [String: String] = ["Name": "Matt Gill", "Height": "40", "Soccer Experience": "no", "Guardian Names": "Charles and Sylvia Gill"]
let kimmyStein: [String: String] = ["Name": "Kimmy Stein", "Height": "41", "Soccer Experience": "no", "Guardian Names": "Bill and Hillary Stein"]
let sammyAdams: [String: String] = ["Name": "Sammy Adams", "Height": "45", "Soccer Experience": "no", "Guardian Names": "Jeff Adams"]
let karlSaygan: [String: String] = ["Name": "Karl Saygan", "Height": "42", "Soccer Experience": "yes", "Guardian Names": "Heather Bledsoe"]
let suzanneGreenberg: [String: String] = ["Name": "SuzanneGreenberg", "Height": "44", "Soccer Experience": "yes", "Guardian Names": "Henrietta Dumas"]
let salDali: [String: String] = ["Name": "Sal Dali", "Height": "41", "Soccer Experience": "no", "Guardian Names": "Gala Dali"]
let joeKavalier: [String: String] = ["Name": "Joe Kavalier", "Height": "39", "Soccer Experience": "no", "Guardian Names": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: String] = ["Name": "Ben Finkelstein", "Height": "44", "Soccer Experience": "no", "Guardian Names": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: String] = ["Name": "Diego Soto", "Height": "41", "Soccer Experience": "yes", "Guardian Names": "Robin and Sarika Soto"]
let chloeAlaska: [String: String] = ["Name": "Chloe Alaska", "Height": "47", "Soccer Experience": "no", "Guardian Names": "David and Jamie Alaska"]
let arnoldWillis: [String: String] = ["Name": "Arnold Willis", "Height": "43", "Soccer Experience": "no", "Guardian Names": "Claire Willis"]
let phillipHelm: [String: String] = ["Name": "Phillip Helm", "Height": "44", "Soccer Experience": "yes", "Guardian Names": "Thomas Helm and Eva Jones"]
let lesClay: [String: String] = ["Name": "Les Clay", "Height": "42", "Soccer Experience": "yes", "Guardian Names": "Wynonna Brown"]
let herschelKrustofski: [String: String] = ["Name": "Herschel Krustofski", "Height": "45", "Soccer Experience": "yes", "Guardian Names": "Hyman and Rachel Krustofski"]

// Combining all the dictionaries of players into one dictionary. Using var because this list can change based on number of participants. Not specifying type because they are all Dictionaries and not strings or other elements.
var playerList = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzanneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Creating empty dictionaries for each team. Using var because the number of players and which players can change again based on number of players. Specifying String of type String because of pulling from Dictionaries of String type String.
var teamSharks: [[String: String]] = []
var teamDragons: [[String: String]] = []
var teamRaptors: [[String: String]] = []

// Creating a dictionary contaning the team dictionaries. Using let because the amount of teams and their names do not change.
let teams = [teamSharks, teamDragons, teamRaptors]


// Dictionaries for the experienced or inExperienced players
var xP: [[String: String]] = []
var inXP: [[String: String]] = []

// The logic associated with seperating out players into experienced or inexperienced. After attainging two groups of experienced or inexperienced we can then assign those players to the teams later.
for players in playerList {
    for (key, value) in players {
        if (value == "yes") {
            xP.append(players)
        } else if (value == "no") {
            inXP.append(players)
        }
    }
}


// Divvying up players equally to teams if they are experienced

for i in 0..<xP.count {
    let player = xP[i]
    let mod = i % 3
    if mod == 0 {
        teamRaptors.append(player)
    } else if mod == 1 {
        teamDragons.append(player)
    } else {
        teamSharks.append(player)
    }
}

// Finally divvying up players equally to teams if they are not experienced

for i in 0..<inXP.count {
    let player = inXP[i]
    let mod = i % 3
    if mod == 0 {
        teamRaptors.append(player)
    } else if mod == 1 {
        teamDragons.append(player)
    } else {
        teamSharks.append(player)
    }
}

// Printing letters for teams

var letters: [String] = []

for player in teamSharks {
    letters.append("Dear \(player["Guardian Names"]!), your child, \(player["Name"]!), has been drafted for the team Sharks! The first practice is March 17th at 3PM.")
}

for player in teamDragons {
    letters.append("Dear \(player["Guardian Names"]!), your child, \(player["Name"]!), has been drafted for the team Dragons! The first practice is March 17th at 1PM.")
}

for player in teamRaptors {
    letters.append("Dear \(player["Guardian Names"]!), your child, \(player["Name"]!), has been drafted for the team Raptors! The first practice is March 18th at 1PM.")
}

for i in 0..<letters.count {
    print(letters[i])
}
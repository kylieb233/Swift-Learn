//
//  Movies.swift
//  Beck_MovieApp
//
//  Created by Kylie beck on 11/23/24.
//

import Foundation

struct Movies {
    var genre : String
    var list_Array: [MovieList]
    
}

struct MovieList {
    var movieName = ""
    var movieImage = ""
    var movieInfo = ""
}

var genres = ["Drama", "Action", "Horror", "Comedy"].sorted()

var comedyMovie = [
    MovieList(movieName: "Moana", movieImage: "moana", movieInfo: "A story about a princess who wants to save her island"),
    MovieList(movieName: "School of Rock", movieImage: "rock", movieInfo: "A fake teacher tries to teach kids about music"),
    MovieList(movieName: "Grown Ups", movieImage: "grown", movieInfo: "A couple of guys try to be the perfect grownups."),
    MovieList(movieName: "Vacation", movieImage: "vacation", movieInfo: "A man wants to relive his old vacation with his family."),
    MovieList(movieName: "Ted", movieImage: "ted", movieInfo: "A bear becomes friends with his roomate and learns about life.")
]

var dramaMovie = [
    MovieList(movieName: "Wonder", movieImage: "wonder", movieInfo: "He wants to be normal but he learns that he's perfect anyway"),
    MovieList(movieName: "It Ends with Us", movieImage: "blake", movieInfo: "A story about a girl who is a victim of abuse."),
    MovieList(movieName: "Titanic", movieImage: "titanic", movieInfo: "The famous Titanic boat and the love story of Rose and Jack"),
    MovieList(movieName: "Wicked", movieImage: "wicked", movieInfo: "A witch becomes friends with another witch, they start out bad but become best friends."),
    MovieList(movieName: "Pride and Predjudice", movieImage: "pride", movieInfo: "A love story between fateful lovers.")
]

var horrorMovie = [
    MovieList(movieName: "The Exorcist", movieImage: "exorcist", movieInfo: "A chilling tale of demonic possession, where a mother seeks the help of two priests to save her young daughter from an unholy force."),
    MovieList(movieName: "A Nightmare on Elm Street",movieImage: "elmstreet",movieInfo: "Freddy Krueger, a vengeful spirit with razor-sharp claws, haunts teenagers in their dreams, turning their worst fears into deadly reality."),
    MovieList(movieName: "Hereditary", movieImage: "hereditary",movieInfo: "A dark and unsettling story of a family unraveling as they uncover sinister secrets after the death of their enigmatic grandmother."),
    MovieList(movieName: "The Conjuring",movieImage: "conjuring",movieInfo: "Paranormal investigators Ed and Lorraine Warren face their most terrifying case yet, as they try to help a family plagued by a malevolent spirit."),
    MovieList(movieName: "Get Out",movieImage: "getout",movieInfo: "A young African-American man uncovers horrifying truths while visiting his girlfriend's mysterious family estate.")
    
]
var actionMovie = [
    MovieList(movieName: "Mad Max: Fury Road",movieImage: "madmax",movieInfo: "A high-octane chase through a post-apocalyptic wasteland, where Furiosa and Max team up to escape the tyranny of Immortan Joe and save a group of captive women."),
    MovieList(movieName: "Die Hard",movieImage: "diehard",movieInfo: "John McClane, an off-duty cop, fights terrorists in a high-rise building during a Christmas party, using his wit and courage to save hostages."),
    MovieList(movieName: "John Wick",movieImage: "johnwick",movieInfo: "After the tragic loss of his wife, legendary hitman John Wick is pulled back into a world of violence when a gang steals his car and kills his beloved dog."),
    MovieList(movieName: "The Dark Knight",movieImage: "darkknight",movieInfo: "Batman faces his ultimate nemesis, the Joker, in a battle of chaos versus order, questioning the morality of heroism and the cost of justice."),
    MovieList(movieName: "Gladiator",movieImage: "gladiator",movieInfo: "Maximus, a betrayed Roman general, rises as a gladiator to seek revenge against the corrupt emperor who murdered his family.")
]

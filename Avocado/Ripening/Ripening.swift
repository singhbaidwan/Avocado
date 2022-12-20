//
//  Ripening.swift
//  Avocado
//
//  Created by Dalveer singh on 20/12/22.
//

import SwiftUI
struct Ripening:Identifiable{
    var id = UUID()
    var image:String
    var stage:String
    var title:String
    var description:String
    var ripeness:String
    var instruction:String
}
let ripeningData:[Ripening] = [
    Ripening(image: "avocado-ripening-1",
             stage: "1",
             title: "Hard",
             description: "Fresh off the tree,the avocado is very-very hard with no give.",
             ripeness: "5+ days",
             instruction: "Hold avocados at room temperature until they are fully ripe."),
    Ripening(image: "avocado-ripening-2",
             stage: "2",
             title: "Conditioned",
             description: "Ripening has begun, however the avocado is still very firm",
             ripeness: "4-5 days",
             instruction: "Hold avocados at room temperature until they are fully ripe."),
    Ripening(image: "avocado-ripening-3",
             stage: "3",
             title: "Breaking",
             description: "As it ripens, the avocado is firm but yields slightly to pressure.",
             ripeness: "2 Days",
             instruction: "Hold avocados at room temperature until they are fully ripe."),
    Ripening(image: "avocado-ripening-4",
             stage: "4",
             title: "Ripe",
             description: "The avocado is ripe and yields slightly to gentle pressure",
             ripeness: "Firm-ripe",
             instruction: "Avocados are best for thin and thick slices and small cubes"),
    Ripening(image: "avocado-ripening-5",
             stage: "5",
             title: "Ripe",
             description: "The avocado is ripe and yields slightly to gentle pressure",
             ripeness: "Ripe",
             instruction: "Avocados are best for thin and thick slices and small cubes")
]

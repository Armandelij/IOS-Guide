//
//  Data.swift
//  ScollView(MiniProject)
//
//  Created by Elijah Armande on 3/15/23.
//

import Foundation

struct Animal: Identifiable { // This is labeled with the "Identifiable" tag so we can loop through it
    
    let name: String
    let imageName: String
    let description: String
    let id = UUID()
    
    
    static func examples() -> [Animal] {
        
        [Animal(name: "Cheetah",
                imageName: "cheetah",
                description: "The cheetah is a large cat native to Africa and Southwest Asia. It is the fastest land animal, capable of running at 80 to 98 km/h, as such has evolved specialized adaptations for speed, including a light build, long thin legs and a long tail."),
        
        Animal(name: "Giraffe",
               imageName: "giraffe",
               description: "The giraffe is a large African hoofed mammal belonging to the genus Giraffa. It is the tallest living terrestrial animal and the largest ruminant on Earth. Traditionally, giraffes were thought to be one species, Giraffa camelopardalis, with nine subspecies."),
         
         Animal(name: "Lion",
                imageName: "lion",
                description: "The lion is a large cat of the genus Panthera native to Africa and India. It has a muscular, broad-chested body; short, rounded head; round ears; and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane."),
         
         Animal(name: "Monkey",
                imageName: "monkey",
                description: "Monkey is a common name that may refer to most mammals of the infraorder Simiiformes, also known as the simians. Traditionally, all animals in the group now known as simians are counted as monkeys except the apes, which constitutes an incomplete paraphyletic grouping; however, in the broader sense based on cladistics, apes (Hominoidea) are also included, making the terms monkeys and simians synonyms in regards to their scope."),
         
         Animal(name: "Panda",
                imageName: "panda",
                description: "The giant panda is a bear species endemic to China. It is characterised by its bold black-and-white coat and rotund body. The name giant panda is sometimes used to distinguish it from the red panda, a neighboring musteloid."),
         
         Animal(name: "Penguin",
                imageName: "penguin",
                description: "Penguins are a group of aquatic flightless birds. They live almost exclusively in the Southern Hemisphere: only one species, the Galápagos penguin, is found north of the Equator. Highly adapted for life in the water, penguins have countershaded dark and white plumage and flippers for swimming."),
         
         Animal(name: "Polar Bear",
                imageName: "polar-bear",
                description: "The polar bear is a hypercarnivorous bear whose native range lies largely within the Arctic Circle, encompassing the Arctic Ocean, its surrounding seas and surrounding land masses, this includes the most northern regions of North America and Eurasia."),
         
         Animal(name: "Rhino",
                imageName: "rhino",
                description: "A rhinoceros, commonly abbreviated to rhino, is a member of any of the five extant species of odd-toed ungulates in the family Rhinocerotidae. Two of the extant species are native to Africa, and three to South and Southeast Asia."),
         
         Animal(name: "Tiger",
                imageName: "tiger",
                description: "The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boar."),
         
         Animal(name: "Zerba",
                imageName: "zebra",
                description: "Zebras are African equines with distinctive black-and-white striped coats. There are three living species: the Grévy's zebra, plains zebra, and the mountain zebra. Zebras share the genus Equus with horses and asses, the three groups being the only living members of the family Equidae.")]
        
        
   
    }
    
    static func example1() -> Animal {
        Animal(name: "Tiger", imageName: "tiger", description: "The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boar.")
    }
    
    static func example2() -> Animal {
        Animal(name: "Monkey", imageName: "monkey", description: "Monkey is a common name that may refer to most mammals of the infraorder Simiiformes, also known as the simians. Traditionally, all animals in the group now known as simians are counted as monkeys except the apes, which constitutes an incomplete paraphyletic grouping; however, in the broader sense based on cladistics, apes (Hominoidea) are also included, making the terms monkeys and simians synonyms in regards to their scope.")
    }
    
    
}

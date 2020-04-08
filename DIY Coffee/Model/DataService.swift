//
//  DataService.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 25/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
//MARK:- Coffees
    
let coffees: [Coffee] = [Coffee(tital: "Espresso", image: "espresso", description: """
Italian: [esˈprɛsso]) is coffee of Italian origin, brewed by forcing a small amount of nearly boiling water under pressure (expressing) through finely ground coffee beans. Espresso is generally thicker than coffee brewed by other methods, has a higher concentration of suspended and dissolved solids, and has crema on top (a foam with a creamy consistency). As a result of the pressurised brewing process, the flavors and chemicals in a typical cup of espresso are very concentrated. Espresso is also the base for other drinks such as a caffè latte, cappuccino, caffè macchiato, caffè mocha, flat white, or caffè Americano.
Espresso has more caffeine per unit volume than most coffee beverages, but because the usual serving size is much smaller, the total caffeine content is less than a mug of standard brewed coffee, contrary to a common belief. Although the actual caffeine content of any coffee drink varies by size, bean origin, roast method and other factors, a typical serving of espresso contains 120 to 170 milligrams of caffeine whereas a typical serving of drip coffee contains 150 to 200 mg.
"""), Coffee(tital: "Cappuccino", image: "Cappucino", description: """
An espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam).
Variations of the drink involve the use of cream instead of milk, and flavoring with cinnamon or chocolate powder. It is typically smaller in volume than a caffe latte, with a thicker layer of microfoam.
The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink.
The Viennese bestowed the name "Kapuziner", possibly in the 18th century, on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown outside Italy until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century. The drink has since spread worldwide and can be found at a number of establishments.
"""), Coffee(tital: "Flat White", image: "flatwhite", description: """
A flat white is a coffee drink consisting of espresso with microfoam (steamed milk with small, fine bubbles and a glossy or velvety consistency). It is comparable to a latte, but smaller in volume and with less microfoam, therefore having a higher proportion of coffee to milk, and milk that is more velvety in consistency – allowing the espresso to dominate the flavour, while being supported by the milk.
"""), Coffee(tital: "Latte", image: "Latte", description: """
Latte is a coffee drink made with espresso and steamed milk.
The term as used in English is a shortened form of the Italian caffè e latte, caffelatte or caffellatte, which means "milk coffee". The word is also sometimes spelled latté or lattè in English with different kinds of accent marks, which can be a hyperforeignism or a deliberate attempt to indicate that the word is not pronounced according to the rules of English orthography.
In northern Europe and Scandinavia, the term café au lait has traditionally been used for the combination of espresso and milk. In France, café latte is mostly known from the original Italian name of the drink (caffè latte or caffelatte); a combination of espresso and steamed milk equivalent to a "latte" is in French called grand crème and in German Milchkaffee or (in Austria) Wiener Melange.
Variants include the chocolate-flavored mocha or replacing the coffee with another drink base such as masala chai (spiced Indian tea), mate, matcha, turmeric or rooibos, and other types of milk, such as soy milk or almond milk, are also used.
"""), Coffee(tital: "Caffè macchiato", image: "Macchiato", description: """
Caffè macchiato (Italian pronunciation: [kafˈfɛ mmakˈkjaːto]), sometimes called espresso macchiato, is an espresso coffee drink with a small amount of milk, usually foamed. In Italian, macchiato means "stained" or "spotted" so the literal translation of caffè macchiato is "stained” or “marked coffee.
The origin of the name "macchiato" stems from baristas needing to show the serving waiters the difference between an espresso and an espresso with a tiny bit of milk in it; the latter was "marked". The idea is reflected in the Portuguese name for the drink: café pingado, meaning coffee with a drop.
""")]
   
    func getCoffee() -> [Coffee] {
        return coffees
    }
    
//MARK:- Appliences
    
    let appliences : [Applience] = [Applience(title: "Coffee Cone", image: "Coffee Cone", description: """
One of the oldest, simplest, fastest and cheapest ways to brew coffee is the drip method using a coffee cone and paper filter. Hot water is poured evenly over coffee grounds in a paper filter. With gravity, the brewed coffee drips slowly and directly into a cup or pot. Coffee cones are made of plastic, glass, stainless steel or ceramic. The shape of the cone and their filters will influence the flavours. Popular brands include Melitta, Hario V60, Kalita Wave and Bee House.
"""), Applience(title: "Chemex", image: "Chemex", description: """
Chemex is a beautifully designed and elegant pour over, glass flask that was invented in 1941 by Dr. Peter Schlumbohm. It uses a special Chemex paper filter that is 20-30% heavier than other filters. Similar to the coffee cone, hot water is poured over coffee grounds in a paper filter. The brewed coffee drips into the bottom of the flask which doubles as its own carafe.
"""), Applience(title: "French Press", image: "FrenchPress", description: """
The French Press method, invented in 1929, is widely considered as the best and easiest method for brewing superior and consistent coffee. It extracts, arguably, more superior flavours than any other method. In a press pot, ground coffee is soaked, steeped and strained in hot water; therefore, coffee’s flavourful essential oils, caffeine and antioxidants are better diffused and preserved leaving the purest flavours of the coffee. It is well suited for coffee drinkers that enjoy a luscious, expressive and complex taste experience. The most common brand is Bodum.
"""), Applience(title: "AeroPress", image: "AeroPress", description: """
Relatively new, the maker of Aerobie Frisbee (Alan Adler) created and launched the AeroPress in 2005. The AeroPress is plastic and comes in 3 parts. A filter sits in a coffee basket at the bottom of the brew chamber. Coffee grounds rest in the brew chamber where hot water is added then immerses/steeps the coffee. To extract the coffee, a plunger is pressed down creating air pressure to force brewed coffee through a filter and into a cup.
"""), Applience(title: "Stovetop Moka Pot", image: "Stovetop Moka Pot", description: """
Originally patented in 1933 by Alfonso Bialetti, stovetop style coffee makers use steam pressure from boiled water in the lower section to pass through coffee grounds in the mid chamber of the pot. Brewed coffee then sits in the higher chamber. A well designed stovetop pot will created better pressure. Common brands include Bialetti, Pedrini, and Kabalo.
"""), Applience(title: "Siphon", image: "Siphon", description: """
The siphon is a fancy and flashy coffee maker. It can be a fun way to make coffee and impress friends at the same time, but it can be a fussy process. It was invented in Germany in the 1840s. Coffee grounds are added to the upper vessel and vapor pressure forces hot water up to immerse the coffee. Once the heat is removed, gravity pushes the brewed coffee back through a filter into the bottom vessel. Common brands include Hario, Yama and Bodum.
""")]
    
    func getApplience() -> [Applience] {
        return appliences
    }
    
    
//MARK:- Articles
    
   
    
}

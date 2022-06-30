//
//  MapViewController.swift
//  cat-apult
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class MapViewController: UIViewController {
    
    //country info
    var count = 0
    var countryList = [
        ["name": "Hawaii",
         "image": "hawaii",
         "catImage": "hawaiiCat",
         "intro": "Aloha, and welcome to Hawai’i- the Rainbow State! Hawai’i’s eight islands feature beautiful beaches, volcanoes, and culture, like the hula dance and lūʻaus.",
        "customs":"""
        - Kuleana: A lei is a garland made of Hawaiian flowers that have been strung together into a circle in order to be worn. When presented with a lei, keep it on and express thanks to the people who present it as it represents celebration, friendship, luck, and love.
        - “Aloha (hello, goodbye, or love)”  and “Mahalo (thank you)” are two very commonly used terms; use them to communicate with the locals and express your respect for their culture.
        - Take shoes off whenever indoors. This shows respect because you’re refraining from bringing in germs to someone’s home.
""",
        "safety":"""
        - Be wary of mosquitoes and the diseases that they can spread. Bring insect repellant and attempt to wear light colored long-sleeve shirts, pants, and shoes- especially when mosquitoes are most active.
        - Bring sunscreen with a minimum of SPF 30 as Hawaii has a tropical climate; make sure the sunscreen is reef-safe so as to prevent damage to Hawai’i’s coral reefs.
        - Stay on designated paths and trails when hiking and avoid standing on edges as they are prone to collapsing.
""",
        "eco":"""
        - Take a direct flight to the island you’re visiting to limit jet fuel waste and carbon emissions, and limit your trip to one island.
        - Book accommodations from locally owned businesses to prevent tourism leakage and plastic waste as well as for proximity to activities you are interested in.
        - Take care of the biodiverse coral reefs by using reef-safe sunscreen and not stepping on the reefs.
"""],
        
        ["name": "Texas",
         "image": "texas",
         "catImage": "texasCat",
         "intro": "Howdy y’all! Welcome to Texas- the Lone Star State and the home of CATAPULT’s developers! This state, even larger than France, and blends many cultures.",
         "customs":"""
        - It’s normal to greet strangers in passing( e.g. a nod, morning greetings, smiles, eye contact).
        - There are many different cultures in Texas, so be aware of cultural differences and language barriers (Spanish, Vietnamese, etc.)
        - Texas has three federally recognized tribe reservations: the Alabama-Coushatta, Tigua, and Kickapoo, among others. Be aware of your impact to these communities while traveling the area, respect their voices on how to share their space.
""",
         "safety": """
        - Concealed carry of firearms without a permit is allowed, so be vigilant at all times. While random gun violence is not necessarily common, it can’t hurt to be aware.
        - Texas has many different climates, so be knowledgeable about where you are; in desert climates, bring plenty of water to avoid heat strokes. Also, precipitation often arrives quickly, so be prepared to drive in stormy weather.
        - Dangerous creatures:
            Portuguese Man-o-Wars often wash up on beaches- do not touch even when dead
            Tarantulas, scorpions, and millipedes are dangerous and may bite, so stay away at all times
            Texas is home to many venomous snakes; they often have bulging heads and/or rattling or clicking noises. If red and yellow bands touch on their skin then the snake is venomous, and vertical pupils are venomous while round pupils are not.
""",
         "eco": """
        - Texas has a variety of state parks and wildlife trails, many of which are available for camping. When camping, make sure to bring trash bags or other means to contain waste. Put out fires at night and avoid tampering with the wildlife
        - Birding trips are offered in the Gulf Coast and south Texas, and the World Birding Center lies in the Rio Grande Valley!
        - Visit a nearby park and maybe have a picnic! Just make sure not to leave trash. When going to the beach, don’t feed the birds. They can get aggressive.

"""],
        
        ["name": "Brazil",
         "image": "brazil",
         "catImage": "brazilCat",
         "intro": "Bem-vindo to Terra do Brasil, otherwise known as Brazil! Home to the Amazon rainforest, spectacular carnival festivals, and a multitude of talented soccer players!",
         "customs": """
        - Not finishing food is considered impolite as it seems like you didn’t enjoy the food.
        - Use the formal “you” whenever speaking to an elder [“o senhor”/”a senhora”].
        - Kissing people on both cheeks is common and used as a greeting.
""",
         "safety": """
        - Pick-pocketers are prevalent in city areas, so when possible, dress similarly to a local and attempt to blend in to avoid attracting attention.
        - Rigging and card-skimming is common in subway station ATMs, so attempt to exchange your money at an exchange booth located in banks or airports.
        - In order to stay vigilant, avoid wearing headphones and listening to music when walking alone.

""",
         "eco": """
        - Visit the Araras Eco Lodge or the Jaguar Ecological Reserve to support tourism operators who protect their local ecosystems. These locations are part of a private ecological reserve program, which gives landowners tax breaks in return for preserving a portion of their land.
        - Visit the Pousada Uakari to support the Mamiraua Sustainable Development Institute, which preserves the habitat of the Uakari monkey and improves the living standards of local human populations living around the Uakari reserve.
        - Take a Viare Travel tour in Sao Paulo, Brazil. The tour is led by local Brazilian operators who lead tourists in spending time in nature and getting to know other locals. The tours provide a positive impact to the communities visited and support small local businesses visited along the way.
"""],
        
        ["name": "France",
         "image": "france",
         "catImage": "franceCat",
         "intro": "Bonjour les amis, and welcome to France! This country features astounding architecture, such as the Eiffel Tower and the Palace of Versailles!",
         "customs": """
        - Greeting people before having a conversation is especially important. Start any conversation with “Bonjour [hello]” or “Bonsoir [good evening].”
        - Attempt to learn a few basic french phrases to accommodate locals. A few examples are “S’il vous plait (please)”, “Pardon (pardon/sorry – particularly useful in crowded places)”, “Merci (Thanks)”, and “Au Revoir (goodbye)".
        - Waving at waiters to summon them is considered rude; simply make eye contact or raise a slight hand to get their attention.
""",
         "safety": """
        - Street harassment is widely prevalent in the form of catcalling and (somewhat rare) actual attacks. Stick to crowded areas and avoid wandering on your own.
        - Be wary of taxis because some may be scam artists who overcharge for their services. If a driver is offering to take you somewhere and their car has no taxi sign, don’t get in.
        - Fake charity collectors may approach you in public demanding money. If this happens, don't pay attention and simply walk away.

""",
         "eco": """
        - Travel around major French cities using the Velib scheme, a public bicycle sharing program. With bike-rental stations spread throughout the city, tourists can enjoy an eco-friendly, inexpensive method of transport during their time in France.
        - Explore eco-friendly lodging by going to hotels with the title La Clef Verte. These are hotels that have taken a more environmental approach to water, energy, and waste, and help raise the awareness of their guests.
        - Instead of visiting large chain restaurants, visit small cafes and private restaurants or bakeries. These contribute much less waste than large chain franchises.

"""],
        
        ["name": "Egypt",
         "image": "egypt",
         "catImage": "egyptCat",
         "intro": "أهلا, and welcome to Egypt- the Land of Pharaohs and a Thousand Suns! With scorching deserts and looming pyramids, Egypt showcases centuries of civilization and culture.",
         "customs": """
        - Egypt is a mostly Muslim country, so the country’s culture includes modest dress. Attempt to dress modestly out of respect, and carry a scarf in case you end up needing one (as a head covering).
        - Tipping is a major part of Egyptian culture, and locals rely on them to make a living. Typically, tips for servers and hotel staff range from 3-10LE and tips for guides are 50LE and up.
        - Learn a few phrases in Arabic as Egyptian locals will attempt to communicate with you out of friendliness and curiosity. Some may attempt or ask to take pictures with tourists.

""",
         "safety": """
        - Be wary of scams. Vendors may present you with a gift and then demand a donation or payment. Locals may offer safe passage across a busy street or offer to show a shortcut and then demand a tip, otherwise known as a baksheesh.
        - Sadly, Egypt is not friendly to LGBTQIA+ travelers so avoid making public displays of affection while visiting.
        - Verbal harassment to women is common on the streets, so attempt to travel in groups and travel only on well-lit streets.
""",
         "eco": """
        - Instead of taking a Nile cruise, explore the Nile on a felucca- a small traditional wooden sailboat for up to 10 passengers. These are often run by local businesses, so sailing on them will support locals and their lifestyle. Temples can also be visited during the trip.
        - Visit the Bedouin, a nomadic tribe in the desert, and explore their traditions and unique way of life. Those who visit can enjoy traditional food and visit traditional Bedouin tents.
        - Support the preservation of Red Sea ecosystems by scuba diving with sustainable, eco-friendly suba agencies.

"""],
        
        ["name": "Japan",
         "image": "japan",
         "catImage": "japanCat",
         "intro": "ようこそ to Japan-the Land of Cherry Blossoms! Japan’s 6,852 islands are home to rich sceneries, which include volcanoes, waterfalls, beaches, and more.",
         "customs": """
       - As a general rule, take your shoes off whenever you come to a change of level in a building or a tatami mat; oftentimes, there will be shoe racks, bags, or slippers to use.
       - Learn the extensive etiquette of bathing in an onsen. Major rules include washing beforehand and not wearing clothes in the onsen.
       - Though often not expected of foreigners, Japan is infamous for its culture centered around bowing, which follows many rules and portrays respect in proper situations.


""",
         "safety": """
        - Keep an eye out for “no smoking” signs. In some places, smoking in public is prohibited and offenders can be fined.
        - Drinking alcohol on the street is legal in Japan, with some vending machines even selling beer and sake. Just ensure you act respectful and don’t draw attention to yourself if you’re drinking in a park or on a beach. The legal drinking age is 20 years old and this is enforced by Japanese police.
        - All japanese phones flash when taking a picture, so be aware of your surroundings, especially in subways, because there are ill-intentioned people.

""",
         "eco": """
        - Traveling eco-friendly and economical once you get to your destination is made possible with the Japanese Rail Pass, only available for tourists in Japan.
        - Support private tours with local guides and independent workers and experience Japan’s real community by shopping local and not contributing to overcrowding.
        - Try keeping your own Zero Waste Travel Kit, and learn about plastic waste in Japan.
"""
        ],
        
        ["name": "Australia",
         "image": "australia",
         "catImage": "australiaCat",
         "intro": "G'day mate! Welcome to Australia-the Land Down Under! This continent features the Outback, Aboriginal culture, the Great Barrier Reef, and creepy crawlies.",
         "customs": """
        - Australia is home to Aboriginal and Torres Strait Islander people who have inhabited the continent for 60,000 years, also making them the oldest living civilization on Earth. There are many museums displaying cultural art.
        - Australia has its own slang, so don’t take everything you hear literally!
        - Tipping in Australia is around 10% and 5% in cafes.
""",
         "safety": """
        - Make sure to wear sunscreen with a high SPF because the sun is very strong. A hat and sunglasses are also recommended.
        - If you're planning to travel the outback, make sure you understand and prepare for the scale of the country. Make sure others know where you are, and pack plenty of food and water to prepare for the long stretches without towns for thousands of miles.
        - Swim between red and yellow flags on the beaches. They show the beach is being supervised and there is an active lifeguard on duty. Yellow flag = conditions could potentially be dangerous. Red flag = beach is closed for swimming due to dangerous conditions.

""",
         "eco": """
        - Australia sports many beautiful hiking trails: Fraser Island Great Walk, Heysen Trail, and Jatbula Trail. Make sure to stay on the path and not leave any belongings.
        - Scuba dive or snorkel at Australia’s Great Barrier Reef. Make sure not to leave any gear in the reef or touch them.
        - Visit Kakadu National Park and observe the wetlands, rock formations, indigenous rock art, and a fantastic variety of birdlife and aquatic life.

"""
        ]
    ]
    
    /*@IBOutlet weak var horizontallyScrollableStackView: UIStackView!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for _ in 0...10 {
            if let worldMap = Bundle.main.loadNibNamed(worldMap, owner: nil, options: nil)!.first as? worldMap {
                horizontallyScrollableStackView.addArrangedSubview(worldMap)
            }
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func countryPressed(_ sender: UIButton) {
        let compare = sender.titleLabel!.text
        if compare == "Hawaii"{
            count = 0
        }
        else if compare == "Texas"{
            count = 1
        }
        else if compare == "Brazil"{
            count = 2
        }
        else if compare == "France"{
            count = 3
        }
        else if compare == "Egypt"{
            count = 4
        }
        else if compare == "Japan"{
            count = 5
        }
        else if compare == "Australia"{
            count = 6
        }
        let destinationVC = CategoriesViewController()
        let segue = UIStoryboardSegue(identifier: "toCategories", source: self, destination: destinationVC)
        prepare(for: segue, sender: self)
        performSegue(withIdentifier: "toCategories", sender: self)

    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print(count)
        if segue.identifier == "toCategories"{
            let destinationVC = segue.destination as? CategoriesViewController
            
            destinationVC?.countryDictionary = countryList[count]
        }

    }
    

}

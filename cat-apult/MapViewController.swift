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
        "customs":"Kuleana: Your responsibility as a foreigner to respect and uphold appreciation for the sanctity of Hawai’i \nIndigenous communities in Hawai’i have complex histories with tourism, learn and listen to their voices before entering their home \nLei: garland made of Hawaiian flowers that have been strung together into a circle in order to be worn \nWhen presented with a lei, keep it on (only remove in privacy) and express thanks to the people who present it; it represents celebration, friendship, luck, and love \n“Aloha” [hello, goodbye, or love]  and “Mahalo” [thank you] are two very commonly used terms- use them! \nTake shoes off whenever indoors; this shows respect because you’re refraining from bringing in germs to someone’s home",
        "safety":"Be wary of mosquitoes and the diseases that they can spread; bring insect repellant and attempt to wear light colored long-sleeve shirts, pants, and shoes- especially when mosquitoes are most active \nBring sunscreen with a minimum of SPF 30 as Hawaii has a tropical climate; make sure the sunscreen is reef-safe so as to prevent damage to Hawaii’s coral reefs \nStay on designated paths and trails when hiking; avoid standing on edges because they are prone to collapsing",
        "eco":"Take a direct flight to the island you’re visiting to limit jet fuel waste and carbon emissions, and limit your trip to one island \nBook accommodations from locally owned businesses to prevent tourism leakage, plastic waste, and proximity to activities you want to do \nTake care of the biodiverse coral reefs through these measures (and more) \nBook from companies certified by Hawai’i’s Sustainable Tourism Association \nClean your shoes! This is important for many reasons, Hawai’i’s landscape is sensitive and you can unknowingly carry invasive species anywhere that can compromise entire ecosystems \nRespect Native Hawaiians, engage in sustainable ecotourism to respect Indigenous communities and their histories"],
        
        ["name": "Texas",
         "customs": "Considered impolite to stare \nIt’s normal to greet strangers in passing; e.g. a nod, morning greetings, smiles, eye contact \n“Southern hospitality” is common in many places; people will often be friendly \nVery fast speed limits; if people are driving at a certain speed (faster than the limit), drive at their speed \nThere are many different cultures in texas, so be aware of cultural differences and language barriers (spanish, vietnamese, etc.)",
         "safety": "Concealed carry of firearms without a permit is allowed, so be aware at all times \nTexas has many different climates, so be knowledgeable about where you are; in desert climates, bring plenty of water to avoid heat strokes; also, precipitation often arrives quickly, so be prepared to drive in stormy weather \nDangerous creatures: \nportuguese man-o-wars often wash up on beaches- do not touch even when dead \nTarantulas, scorpions, and millipedes are dangerous and may bite, so stay away at all times \nTexas is home to many venomous snakes; they often have bulging heads [due to venom sacks], some may make rattling or clicking noises, if red and yellow bands touch on their skin then the snake is venomous, vertical pupils are venomous while round pupils are not",
         "eco": ""
        ],
        
        ["name": "Brazil",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        
        ["name": "France",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        
        ["name": "Egypt",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        
        ["name": "China",
         "customs": "",
         "safety": "",
         "eco": ""
        ],
        
        ["name": "Japan",
         "customs": "As a general rule, take your shoes off whenever you come to a change of level in a building or a tatami mat, oftentimes there will be shoe racks, bags, or slippers to use \nLearn the extensive etiquette of bathing in an onsen, major rules include washing before hand and not wearing clothes into the onsen. \nThough often not expected of foreigners, Japan is infamous for its culture around bowing, which follows many rules and portrays respect in proper situations. \nEating and drinking etiquette! \nDon’t tip, or blow your nose! \nCommon Japanese hand gestures and beckoning signals can be seen here.",
         "safety": "",
         "eco": "River rafting in Gunma prefecture: environmentally low impact due to Japan’s excess of mountainous regions. Tourists love rafting the Tone River in the town Minakami! \nHiking: Japan has amazing hiking opportunities, one of the most popular being the Kumano Kodo in Kansai with an expansive history of important spiritual sites. \nMountain Climbing: Another low impact activity, mountain climbing in Japan is popular with tourists who are ready for a workout! \nHot Springs (Onsen): Japan’s naturally warmed hot springs conserve energy. To respect Japanese culture and environment around onsen, it is imperative to follow certain traditional rules. \nScuba Diving/Snorkeling: Low impact on environment paired with great education about Japanese oceans and wildlife makes for a great daytime activity in Japan! Checkout popular locations here. \nTextile Culture: Help keep local culture alive by learning about and supporting Japanese artisans and traditional crafts  while visiting. \nSustainable Tourism in the Ogasawara Islands: Check out the mandatory rulebook here to responsibly appreciate and protect this beautiful destination."
        ],
        
        ["name": "Australia",
         "customs": "",
         "safety": "",
         "eco": ""
        ]
    ]
    

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
        else if compare == "China"{
            count = 5
        }
        else if compare == "Japan"{
            count = 6
        }
        else if compare == "Australia"{
            count = 7
        }
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toCategories"{
            let destinationVC = segue.destination as? CategoriesViewController
            destinationVC?.countryDictionary = countryList[count]
        }
    }
    

}

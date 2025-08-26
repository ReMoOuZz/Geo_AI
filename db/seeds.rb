# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Remodule les seeds pour respecter le modèle de questions comme suit :

# content : question
# difficulty : facile, intermédiaire, difficile
# category : reliefs, fleuves et océans / régions, états, villes et capitales / ethnies, religions, langues et coutumes /  politique et géopolitique
# region : Europe, Océanie, Amérique, Afrique, Asie (un array de 5 continents)
# 1 correct_answer (string d'une bonne réponse)
# 3 incorrect_answers (un array de 3 mauvaises réponses)
# Contexte : texte de 25 mots max expliquant la bonne réponse  Propose moi 150questions sur la catégorie "reliefs, fleuves et océans"

questions_data = [
  # SEEDS DRAPEAUX (60) via Claude Sonnet 4.0
  {
    content: "Quel pays a ce drapeau : bandes horizontales rouge, jaune et noire ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Allemagne",
    incorrect_answers: ["France", "Russie", "Luxembourg"]
    contexte: "Ce drapeau est resté celui de l'Allemagne après sa réunification, le 3 octobre 1990"
  },
  {
    content: "Quel pays a un drapeau avec une feuille d'érable rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Canada",
    incorrect_answers: ["États-Unis", "Mexique", "Brésil"]
    contexte: "La feuille d'érable est devenue le symbole national du Canada en 1965."
  },
  {
    content: "Quel pays a un drapeau avec un cercle rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Japon",
    incorrect_answers: ["Chine", "Corée du Sud", "Thaïlande"]
    contexte: "Le cercle rouge représente le soleil levant, symbole du Japon."
  },
  {
    content: "Quel pays a un drapeau avec une croix blanche sur fond rouge ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Danemark",
    incorrect_answers: ["Suède", "Norvège", "Finlande"]
    contexte: "Le Dannebrog danois est considéré comme le plus ancien drapeau national."
  },
  {
    content: "Quel pays africain a un drapeau avec un aigle au centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Zambie",
    incorrect_answers: ["Égypte", "Nigeria", "Kenya"]
    contexte: "L'aigle zambien symbolise la capacité à s'élever au-dessus des difficultés."
  },
  {
    content: "Quel pays a un drapeau avec 50 étoiles et 13 bandes ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "États-Unis",
    incorrect_answers: ["Canada", "Mexique", "Argentine"]
    contexte: "Les 50 étoiles représentent les États, les 13 bandes les colonies."
  },
  {
    content: "Quel pays a un drapeau entièrement vert avec un croissant et une étoile blancs ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Pakistan",
    incorrect_answers: ["Bangladesh", "Arabie Saoudite", "Iran"]
    contexte: "Le vert représente l'islam, le croissant et l'étoile l'unité musulmane."
  },
  {
    content: "Quel pays a un drapeau avec une croix jaune sur fond bleu ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Suède",
    incorrect_answers: ["Norvège", "Finlande", "Danemark"]
    contexte: "Les couleurs bleue et jaune sont traditionnelles de la Suède royale."
  },
  {
    content: "Quel pays a un drapeau avec un dragon au centre ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Bhoutan",
    incorrect_answers: ["Chine", "Mongolie", "Tibet"]
    contexte: "Le dragon du tonnerre symbolise la spiritualité bhoutanaise traditionnelle."
  },
  {
    content: "Quel pays a un drapeau tricolore vertical vert, blanc et rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Italie",
    incorrect_answers: ["Irlande", "Mexique", "Iran"]
    contexte: "Inspiré du drapeau français, adopté lors de l'unification italienne."
  },
  {
    content: "Quel pays a un drapeau avec l'Union Jack dans le coin supérieur gauche ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Zélande",
    incorrect_answers: ["Ecosse", "Tahiti", "Canada"]
    contexte: "L'Union Jack rappelle l'héritage britannique de la Nouvelle-Zélande."
  },
  {
    content: "Quel pays a un drapeau avec une étoile blanche sur fond rouge, blanc, bleu ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Chili",
    incorrect_answers: ["Cuba", "Porto Rico", "Texas"]
  },
  {
    content: "Quel pays a un drapeau avec un cèdre vert au centre ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Liban",
    incorrect_answers: ["Syrie", "Jordanie", "Irak"]
    contexte: "L'étoile représente l'unité du pays, le rouge le sang versé."
  },
  {
    content: "Quel pays a un drapeau avec une croix blanche sur fond rouge ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Suisse",
    incorrect_answers: ["Suède", "Angleterre", "Géorgie"]
    contexte: "Seul drapeau national carré au monde avec le Vatican."
  },
  {
    content: "Quel pays a un drapeau avec un soleil au centre sur fond bleu et blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Argentine",
    incorrect_answers: ["Uruguay", "Brésil", "Chili"]
    contexte: "Le soleil de Mai commémore la révolution de mai 1810."

  },
  {
    content: "Quel pays a un drapeau avec une lune croissante et une étoile sur fond rouge ?",
    difficulty: "Difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Turquie",
    incorrect_answers: ["Maroc", "Algérie", "Pakistan"]
    contexte: "Symboles islamiques adoptés par l'Empire ottoman historique."
  },
  {
    content: "Quel pays a un drapeau noir, rouge et jaune en bandes verticales ?",
    difficulty: "Facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Belgique",
    incorrect_answers: ["Italie", "Autriche", "Espagne"]
    contexte: "Le 30 septembre 1830, le gouvernement provisoire adopte le drapeau national"
  },
  {
    content: "Lequel de ces pays n'a pas de bandes bleue, jaune et rouge dans son drapeau?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Pérou",
    incorrect_answers: ["Venezuela", "Équateur", "Colombie"]
    contexte: "Ces couleurs sont l'héritage de la Grande Colombie de Bolívar, le Pérou est exclu."
  },
  {
    content: "Quel pays a un drapeau entièrement rouge avec 5 étoiles jaunes ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Chine",
    incorrect_answers: ["Vietnam", "Corée du Nord", "Laos"]
    contexte: "Rouge communiste, grande étoile pour le parti, 4 petites pour classes."
  },
  {
    content: "Quel pays a un drapeau avec un lion tenant une épée ?",
    difficulty: "Difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Sri Lanka",
    incorrect_answers: ["Myanmar", "Thaïlande", "Cambodge"]
    contexte: "Lion singhalais traditionnel symbolisant la bravoure nationale."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc et vert ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Algérie",
    incorrect_answers: ["Maroc", "Tunisie", "Libye"]
    contexte: "Vert pour l'islam, blanc pour la paix, rouge pour liberté."
  },
  {
    content: "Quel pays a un drapeau avec des bandes orange, blanche et verte avec une roue au centre ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Inde",
    incorrect_answers: ["Bangladesh", "Pakistan", "Sri Lanka"]
    contexte: "La roue d'Ashoka représente le dharma et le progrès."
  },
  {
    content: "Quel pays a un drapeau avec quatre étoiles représentant la Croix du Sud ?",
    difficulty: "Difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Zélande",
    incorrect_answers: ["Australie", "Samoa", "Fidji"]
    contexte: "La Croix du Sud guide la navigation dans l'hémisphère sud."
  },
  {
    content: "Quel pays a un drapeau avec un aigle dévorant un serpent sur un cactus ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Mexique",
    incorrect_answers: ["Guatemala", "Équateur", "Pérou"]
    contexte: "Légende aztèque de la fondation de Tenochtitlan."
  },
  {
    content: "Quel pays a un drapeau avec une unique étoile dorée sur fond rouge ?",
    difficulty: "Intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Vietnam",
    incorrect_answers: ["Chine", "Corée du Nord", "Laos"]
    contexte: "Étoile à cinq branches symbolisant les classes sociales unies."
  },
  {
    content: "Quel pays a un drapeau avec un trident au centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Barbade",
    incorrect_answers: ["Jamaïque", "Trinité-et-Tobago", "Bahamas"]
    contexte: "Trident brisé symbolisant l'indépendance des liens coloniaux."
  },
  {
    content: "Quel pays a un drapeau avec une kalashnikov ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Mozambique",
    incorrect_answers: ["Angola", "Zimbabwe", "Zambie"]
    contexte: "Seul drapeau national avec une arme moderne représentant la lutte."
  },
  {
    content: "Quel pays a un drapeau avec un quetzal (oiseau) sur la déclaration d'indépendance au centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Guatemala",
    incorrect_answers: ["Honduras", "Costa Rica", "Nicaragua"]
    contexte: "Quetzal oiseau sacré maya symbolisant la liberté."
  },
  {
    content: "Quel pays a un drapeau avec 5 étoiles et la carte du pays sur fond bleu ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Kosovo",
    incorrect_answers: ["Serbie", "Macédoine du Nord", "Monténégro"]
    contexte: "L'indépendance du Kosovo a été proclamée unilatéralement le 17 février 2008"
  },
  {
    content: "Quel pays d'Afrique porte un drapeau avec les couleurs verte, rouge, blanche ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Madagascar",
    incorrect_answers: ["Cap-Vert", "Mauritius", "Les Comores"]
    contexte: "Les couleurs du drapeau représentent des principes vénérés toujours"
  },
  {
    content: "Quel pays a un drapeau avec des bandes blanche et rouge + un triangle bleu à gauche ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "République tchèque",
    incorrect_answers: ["Slovaquie", "Slovénie", "Pologne"]
    contexte: "Triangle bleu distinctif le démarquant du drapeau polonais."
  },
  {
    content: "Quel pays a un drapeau avec une couronne royale dans le coin supérieur gauche ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Liechtenstein",
    incorrect_answers: ["Monaco", "Luxembourg", "Andorre"]
    contexte: "Couronne princière ajoutée pour le distinguer du drapeau haïtien."

  },
  {
    content: "Quel pays n'a pas de condor des Andes sur son drapeau ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Vénézuela",
    incorrect_answers: ["Colombie", "Équateur", "Bolivie"]
    contexte: "Le condor représente la liberté andine, le Vénézuela n'est pas dans les Andes."
  },
  {
    content: "Quel pays a un drapeau avec deux mains vers le ciel en son centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Brunei",
    incorrect_answers: ["Malaisie", "Indonésie", "Singapour"]
    contexte: "Deux mains qui personnifient l'engagement du gouvernement à promouvoir la sérénité"
  },
  {
    content: "Quel pays a un drapeau avec un yin-yang au centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Corée du Sud",
    incorrect_answers: ["Corée du Nord", "Mongolie", "Tibet"]
    contexte: "Taegeuk représente l'équilibre des forces cosmiques."
  },
  {
    content: "Quel pays a un drapeau avec une grue couronnée (oiseau) au centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Ouganda",
    incorrect_answers: ["Kenya", "Tanzanie", "Rwanda"]
    contexte: "Grue royale, oiseau national symbolisant la beauté ougandaise."
  },
  {
    content: "Combien y a-t-il d'étoiles sur le drapeau des Etats-Unis ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "50",
    incorrect_answers: ["41", "51", "40"]
    contexte: "Les 50 étoiles représentent les États, Puerto Rico n'est pas un état des Etats-Unis"

  },
  {
    content: "Quel pays a un drapeau avec un bouclier masaï traditionnel ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Kenya",
    incorrect_answers: ["Tanzanie", "Ouganda", "Éthiopie"]
    contexte: "Les Masaï sont un peuple d'éleveurs et de guerriers d'Afrique de l'Est"
  },
  {
    content: "Quel pays a un drapeau avec un makatea (atoll) stylisé ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Marshall",
    incorrect_answers: ["Palau", "Nauru", "Tuvalu"]
    contexte: "Cet archipel est formé d'îles volcaniques et d'atolls coralliens."
  },
  {
    content: "Quel pays a un drapeau avec une constellation d'étoiles ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Brésil",
    incorrect_answers: ["Venezuela", "Guyana", "Suriname"]
    contexte: "Les étoiles représentent la constellation de la Croix du Sud et les États du pays"
  },
  {
    content: "Quel pays a un drapeau bleu avec l'Union Jack et 4 étoiles ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Zélande",
    incorrect_answers: ["Australie", "Fidji", "Tuvalu"],
    contexte: "Quatre étoiles de la Croix du Sud pour la NZ et cinq pour l'Australie."
  },
  {
    content: "Quel pays océanien a un drapeau bleu clair avec des étoiles dorées ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Tuvalu",
    incorrect_answers: ["Samoa", "Palau", "Nauru"],
    contexte: "Neuf étoiles représentent les neuf atolls de l'archipel."
  },
  {
    content: "Quel pays a un drapeau avec un cercle jaune sur fond bleu ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Palau",
    incorrect_answers: ["Nauru", "Kiribati", "Samoa"],
    contexte: "Le cercle jaune représente la pleine lune, symbole de paix."
  },
  {
    content: "Quel drapeau océanien est rouge avec un carré bleu et des étoiles ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Samoa",
    incorrect_answers: ["Tonga", "Fidji", "Vanuatu"],
    contexte: "Carré bleu avec cinq étoiles représentant la Croix du Sud."
  },
  {
    content: "Quel pays a un drapeau rouge avec une croix blanche ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Tonga",
    incorrect_answers: ["Samoa", "Fidji", "Vanuatu"],
    contexte: "Seul pays océanien jamais colonisé, croix symbole chrétien."
  },
  {
    content: "Quel archipel a un drapeau bleu clair avec l'Union Jack et armoiries ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Fidji",
    incorrect_answers: ["Tuvalu", "Îles Cook", "Nauru"],
    contexte: "Écu avec lion tenant une noix de coco et canne à sucre."
  },
  {
    content: "Quel pays océanien a un drapeau avec un triangle noir et jaune ?",
    difficulty: "Difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Vanuatu",
    incorrect_answers: ["Samoa", "Tonga", "Palau"],
    contexte: "Y stylisé représentant l'archipel, défense de porc et fougère."
  },
  {
    content: "Quel micro-État (île) a un drapeau bleu avec une bande jaune horizontale ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Nauru",
    incorrect_answers: ["Palau", "Tuvalu", "Kiribati"],
    contexte: "Bande jaune représente l'équateur, étoile blanche l'île."
  },
  {
    content: "Quel pays a un drapeau avec soleil levant et oiseau-frégate ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Kiribati",
    incorrect_answers: ["Nauru", "Tuvalu", "Palau"],
    contexte: "Seul drapeau avec soleil levant doré sur fond bleu et rouge."
  },
  {
    content: "Quel territoire a l'Union Jack avec cercle d'étoiles blanches ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Îles Cook",
    incorrect_answers: ["Niue", "Tokelau", "Samoa américaines"],
    contexte: "Quinze étoiles représentent les quinze îles de l'archipel."
  },
  {
    content: "Quel état Australien a un drapeau bleu avec l'Union Jack et un lion ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Tasmanie",
    incorrect_answers: ["Îles Cook", "Tokelau", "Pitcairn"],
    contexte: "Fond jaune unique, Union Jack et cinq étoiles jaunes."
  },
  {
    content: "Quel pays a un drapeau rouge et blanc avec triangle vert ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Îles Salomon",
    incorrect_answers: ["Vanuatu", "Fidji", "Papouasie"],
    contexte: "Diagonal divisant le drapeau, cinq étoiles blanches."
  },
  {
    content: "Quel pays a un drapeau noir, rouge et jaune avec oiseau-paradis ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["Îles Salomon", "Vanuatu", "Fidji"],
    contexte: "Diagonal divisant triangle rouge et noir, Croix du Sud."
  },
  {
    content: "Quel archipel américain a un triangle rouge et blanc avec un aigle ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Samoa américaines",
    incorrect_answers: ["Guam", "Îles Mariannes", "Îles Marshall"],
    contexte: "Aigle américain tenant simboles samoans traditionnels."
  },
  {
    content: "Quel territoire américain a un drapeau bleu foncé avec armoiries ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Guam",
    incorrect_answers: ["Samoa américaines", "Îles Mariannes", "Wake"],
    contexte: "Écusson ovale rouge avec cocotier et embarcation traditionnelle."
  },
  {
    content: "Quel drapeau a des bandes blanche et orange avec étoile blanche ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Îles Marshall",
    incorrect_answers: ["Palau", "Nauru", "Kiribati"],
    contexte: "Bandes diagonales représentant l'équateur et les atolls."
  },
  {
    content: "Quel micro-État a un drapeau bleu avec triangle rouge et étoiles ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "États fédérés de Micronésie",
    incorrect_answers: ["Palau", "Îles Marshall", "Nauru"],
    contexte: "Quatre étoiles blanches représentant les quatre États fédérés."
  },
  {
    content: "Quel territoire français a trois bandes verticales avec emblème ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Calédonie",
    incorrect_answers: ["Polynésie française", "Wallis-et-Futuna", "Tahiti"],
    contexte: "Drapeau indépendantiste kanak avec flèche faîtière."
  },
  {
    content: "Quel pays africain a un drapeau vert avec croissant et étoile ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Algérie",
    incorrect_answers: ["Pakistan", "Tunisie", "Mauritanie"],
    contexte: "L'Algérie prend son indépendance vis à vis de la France le 5 juillet 1962."
  },
  {
    content: "Quel drapeau possède des bandes noire, blanche, verte avec un triangle et une étoile ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Jordanie",
    incorrect_answers: ["Syrie", "Liban", "Palestine"],
    contexte: "Cèdre du Liban millénaire, symbole de force et éternité."
  },
  {
    content: "Quel pays a deux bandes rouges et une bande blanche ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Autriche",
    incorrect_answers: ["Suisse", "Luxembourg", "Allemagne"],
    contexte: "L'origine remonte au blason de la maison régnante des Babenberg"
  },
  {
    content: "Quel pays a un drapeau bleu et blanc avec un soleil ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Uruguay",
    incorrect_answers: ["Chili", "Paraguay", "Bolivie"],
    contexte: "Soleil de Mai inspiré du drapeau argentin."
  },
  {
    content: "Quel pays a un drapeau bleu ciel avec soleil et aigle ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Kazakhstan",
    incorrect_answers: ["Azerbaïdjan", "Turkménistan", "Turquie"],
    contexte: "L'aigle était le symbole de Gengis Khan"
  },
  {
    content: "Quel pays africain a des bandes verte, jaune et rouge avec étoile ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Ghana",
    incorrect_answers: ["Liberia", "Mali", "Burkina Faso"],
    contexte: "Première colonie africaine indépendante, étoile noire de liberté."
  },
  {
    content: "Quel pays européen a un drapeau rouge avec une croix bleue et blanche ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Norvège",
    incorrect_answers: ["Suède", "Finlande", "Islande"],
    contexte: "Croix scandinave, à ne pas confondre avec le drapeau Islandais"
  },
  {
    content: "Quel pays  a un drapeau vert avec losange jaune ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Brésil",
    incorrect_answers: ["Bolivie", "Pérou", "Colombie"],
    contexte: "Devise 'Ordem e Progresso', sphère céleste avec étoiles."
  },
  {
    content: "Quel pays asiatique a un drapeau blanc et rouge horizontal, sans motif?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Indonésie",
    incorrect_answers: ["Pologne", "Monaco", "Singapour"],
    contexte: "Monaco et Pologne sont en Europe, Singapour a une lune et des étoiles"
  },
  {
    content: "Quel pays a un drapeau à 5 couleurs avec un croissant ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Comores",
    incorrect_answers: ["Mauritanie", "Algérie", "Tunisie"],
    contexte: "Quatre bandes représentent les quatre îles principales."
  },
  {
    content: "Quel pays européen a un drapeau rouge avec aigle noir bicéphale ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Albanie",
    incorrect_answers: ["Serbie", "Monténégro", "Macédoine"],
    contexte: "Aigle de Skanderbeg, héros national résistant aux Ottomans."
  },

  # SEEDS DRAPEAUX GEMINI > NON VERIFIEES

  [
  {
    content: "À quel pays appartient ce drapeau tricolore vertical bleu, blanc, rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "France",
    incorrect_answers: ["Italie", "Belgique", "Pays-Bas"],
    contexte: "Le drapeau français, ou 'drapeau tricolore', est l'emblème national de la France depuis la Révolution française. Ses couleurs symbolisent liberté, égalité, fraternité."
  },
  {
    content: "Ce drapeau avec des bandes horizontales noire, rouge et or est celui de quel pays ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Allemagne",
    incorrect_answers: ["Belgique", "Autriche", "Espagne"],
    contexte: "Le drapeau de l'Allemagne, adopté en 1949, représente l'unité et la liberté. Les couleurs proviennent des uniformes des soldats durant les guerres napoléoniennes."
  },
  {
    content: "Quel pays est représenté par un drapeau aux bandes verticales verte, blanche et rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Italie",
    incorrect_answers: ["France", "Irlande", "Hongrie"],
    contexte: "Le 'Tricolore' italien s'inspire du drapeau français. Le vert représente l'espoir, le blanc la foi et le rouge la charité."
  },
  {
    content: "Ce drapeau, connu sous le nom d'Union Jack, est l'emblème de quel État ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Royaume-Uni",
    incorrect_answers: ["Irlande", "Islande", "Finlande"],
    contexte: "L'Union Jack est une superposition des drapeaux de l'Angleterre, de l'Écosse et de l'Irlande du Nord, symbolisant l'union de ces royaumes."
  },
  {
    content: "À quel pays correspond le drapeau rouge et jaune avec un blason au centre ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Espagne",
    incorrect_answers: ["Portugal", "Andorre", "Vatican"],
    contexte: "Surnommé 'la Rojigualda', le drapeau espagnol arbore les couleurs des anciens royaumes d'Aragon et de Castille, avec les armoiries nationales."
  },
  {
    content: "Quel pays utilise un drapeau à bandes horizontales blanche, bleue et rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Russie",
    incorrect_answers: ["Pays-Bas", "Slovénie", "Serbie"],
    contexte: "Ce drapeau a été adopté par Pierre le Grand. Le blanc symbolise la noblesse, le bleu la fidélité et le rouge le courage."
  },
  {
    content: "Ce drapeau est bleu avec une croix scandinave jaune. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Suède",
    incorrect_answers: ["Norvège", "Danemark", "Finlande"],
    contexte: "Le drapeau suédois est l'un des plus anciens. La croix nordique symbolise le christianisme et se retrouve sur de nombreux drapeaux scandinaves."
  },
  {
    content: "Un fond rouge avec une croix blanche en son centre caractérise le drapeau de quel pays ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Suisse",
    incorrect_answers: ["Danemark", "Malte", "Autriche"],
    contexte: "Le drapeau carré de la Suisse est un symbole de neutralité et de paix. La croix blanche est un emblème chrétien utilisé depuis le Moyen Âge."
  },
  {
    content: "Quel pays est représenté par un drapeau aux bandes verticales noire, jaune et rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Belgique",
    incorrect_answers: ["Allemagne", "France", "Roumanie"],
    contexte: "Les couleurs du drapeau belge sont celles du duché de Brabant. L'ordre vertical a été adopté pour se distinguer du drapeau allemand."
  },
  {
    content: "Ce drapeau est rouge avec une croix scandinave blanche. À quel pays appartient-il ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Danemark",
    incorrect_answers: ["Suisse", "Suède", "Norvège"],
    contexte: "Connu sous le nom de 'Dannebrog', ce drapeau est considéré comme le plus ancien drapeau national encore en usage, datant du XIIIe siècle."
  },
  {
    content: "Quel pays arbore un drapeau blanc traversé par une croix scandinave bleue ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Finlande",
    incorrect_answers: ["Grèce", "Islande", "Suède"],
    contexte: "Le drapeau finlandais symbolise les lacs (bleu) et la neige (blanc) qui caractérisent les paysages du pays. Il a été adopté en 1918."
  },
  {
    content: "Ce drapeau est rouge, avec une croix scandinave bleue bordée de blanc. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Norvège",
    incorrect_answers: ["Islande", "Danemark", "Suède"],
    contexte: "Le drapeau norvégien combine les couleurs de la France avec la croix scandinave, reflétant les liens historiques et culturels du pays."
  },
  {
    content: "Quel pays a un drapeau composé de neuf bandes horizontales bleues et blanches avec une croix blanche dans un carré bleu en haut à gauche ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Grèce",
    incorrect_answers: ["Finlande", "Chypre", "Portugal"],
    contexte: "Les neuf bandes du drapeau grec représenteraient les syllabes de la devise 'Liberté ou la Mort'. Le bleu et le blanc symbolisent la mer et le ciel."
  },
  {
    content: "Quel pays a un drapeau bicolore vert et rouge avec les armoiries nationales au centre ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Portugal",
    incorrect_answers: ["Espagne", "Hongrie", "Italie"],
    contexte: "Le vert représente l'espoir et le rouge le sang des héros. La sphère armillaire évoque l'âge des grandes découvertes portugaises."
  },
  {
    content: "Le drapeau des Pays-Bas est composé de trois bandes horizontales. Quelles sont leurs couleurs de haut en bas ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Rouge, blanc, bleu",
    incorrect_answers: ["Bleu, blanc, rouge", "Rouge, jaune, noir", "Blanc, bleu, rouge"],
    contexte: "C'est l'un des plus anciens drapeaux tricolores. La bande orange originelle a été remplacée par du rouge pour une meilleure visibilité en mer."
  },
  {
    content: "Quel pays a un drapeau tricolore vertical vert, blanc et orange ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Irlande",
    incorrect_answers: ["Italie", "Côte d'Ivoire", "Hongrie"],
    contexte: "Le vert représente la tradition catholique, l'orange les protestants, et le blanc la paix entre eux."
  },
  {
    content: "Un drapeau à deux bandes horizontales, blanche en haut et rouge en bas, appartient à quel pays ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Pologne",
    incorrect_answers: ["Monaco", "Autriche", "Malte"],
    contexte: "Les couleurs sont basées sur les armoiries de la Pologne (aigle blanc) et de la Lituanie (cavalier blanc sur fond rouge)."
  },
  {
    content: "À quel pays correspond un drapeau à bandes horizontales bleue et jaune ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Ukraine",
    incorrect_answers: ["Suède", "Estonie", "Kazakhstan"],
    contexte: "Le bleu symbolise le ciel et le jaune les champs de blé, représentant les paysages et la richesse agricole de l'Ukraine."
  },
  {
    content: "Quel pays utilise un drapeau à trois bandes horizontales rouges, blanches et vertes ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Hongrie",
    incorrect_answers: ["Bulgarie", "Italie", "Mexique"],
    contexte: "Ces couleurs sont issues des armoiries hongroises. Le rouge symbolise la force, le blanc la fidélité et le vert l'espoir."
  },
  {
    content: "Ce drapeau est composé de trois bandes horizontales rouge, blanche et rouge. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Autriche",
    incorrect_answers: ["Pologne", "Lettonie", "Liban"],
    contexte: "Selon la légende, les couleurs représentent la tunique ensanglantée d'un duc après une bataille, sauf la partie protégée par sa ceinture."
  },
  {
    content: "Un drapeau bleu, noir et blanc en bandes horizontales est l'emblème de quel État balte ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Estonie",
    incorrect_answers: ["Lettonie", "Lituanie", "Finlande"],
    contexte: "Le bleu représente le ciel, le noir le sol natal et le blanc la neige et l'aspiration à la lumière."
  },
  {
    content: "Quel pays a un drapeau rouge avec un aigle noir à deux têtes au centre ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Albanie",
    incorrect_answers: ["Serbie", "Monténégro", "Russie"],
    contexte: "L'aigle bicéphale est un symbole hérité de l'Empire byzantin et fut utilisé par le héros national Skanderbeg contre les Ottomans."
  },
  {
    content: "Quel pays est représenté par un drapeau tricolore horizontal blanc, vert et rouge ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Bulgarie",
    incorrect_answers: ["Hongrie", "Italie", "Iran"],
    contexte: "Le blanc symbolise la paix et l'amour, le vert la fertilité des terres bulgares, et le rouge le courage et le sang des patriotes."
  },
  {
    content: "Ce drapeau est bleu avec une croix scandinave rouge bordée de blanc. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Islande",
    incorrect_answers: ["Norvège", "Finlande", "Îles Féroé"],
    contexte: "Le drapeau représente la nature du pays : le rouge pour le feu des volcans, le blanc pour la glace et le bleu pour l'océan."
  },
  {
    content: "Quel pays a un drapeau à bandes horizontales rouge, blanc et bleu clair ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Luxembourg",
    incorrect_answers: ["Pays-Bas", "Russie", "France"],
    contexte: "Très similaire au drapeau néerlandais, celui du Luxembourg se distingue par sa nuance de bleu plus claire, officiellement définie comme 'bleu ciel'."
  },
  {
    content: "Un drapeau à bandes verticales bleu, jaune et rouge est celui de quel pays ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Roumanie",
    incorrect_answers: ["Tchad", "Andorre", "Moldavie"],
    contexte: "Le drapeau roumain, adopté en 1989, symbolise la liberté. Il est quasi identique à celui du Tchad, mais avec des nuances de bleu différentes."
  },
  {
    content: "À quel pays appartient le drapeau tricolore horizontal rouge, blanc et bleu avec un blason représentant un échiquier ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Croatie",
    incorrect_answers: ["Serbie", "Slovénie", "Slovaquie"],
    contexte: "Le 'šahovnica' (échiquier) au centre est un symbole historique croate. Les blasons au-dessus représentent les régions historiques du pays."
  },
  {
    content: "Ce drapeau est composé de trois bandes horizontales jaune, verte et rouge. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Lituanie",
    incorrect_answers: ["Estonie", "Lettonie", "Bulgarie"],
    contexte: "Le jaune symbolise le soleil, le vert les forêts et la nature, et le rouge le sang versé pour l'indépendance."
  },
  {
    content: "Un drapeau avec deux bandes horizontales, lie-de-vin en haut et en bas, séparées par une bande blanche plus fine. Quel pays représente-t-il ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Lettonie",
    incorrect_answers: ["Autriche", "Liban", "Pologne"],
    contexte: "L'un des plus anciens drapeaux du monde. La légende dit qu'il représente un drap blanc taché du sang d'un chef letton blessé."
  },
  {
    content: "Quel pays a un drapeau blanc et rouge avec un triangle bleu sur le côté du guindant ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "République Tchèque",
    incorrect_answers: ["Pologne", "Slovaquie", "Philippines"],
    contexte: "Le drapeau combine les couleurs de la Bohême (blanc et rouge) avec le bleu de la Moravie. Il a été conservé après la dissolution de la Tchécoslovaquie."
  },
  {
    content: "Quel pays a un drapeau tricolore blanc, bleu, rouge avec un blason représentant trois pics et une croix patriarcale ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Slovaquie",
    incorrect_answers: ["Slovénie", "Serbie", "Russie"],
    contexte: "Similaire aux drapeaux russe et slovène, il se distingue par son blason : le mont Tatra et la double croix de la tradition chrétienne byzantine."
  },
  {
    content: "À quel micro-État appartient un drapeau à bandes verticales bleu, jaune, rouge avec un blason au centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Andorre",
    incorrect_answers: ["Roumanie", "Moldavie", "Tchad"],
    contexte: "Les couleurs et le blason symbolisent la double suzeraineté de la France et de l'évêque d'Urgell, garantissant l'indépendance de la principauté."
  },
  {
    content: "Ce drapeau est identique à celui de la Roumanie, mais avec un blason (aigle tenant une croix) au centre de la bande jaune. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Moldavie",
    incorrect_answers: ["Andorre", "Roumanie", "Belgique"],
    contexte: "Le blason, représentant un auroch et un aigle, est l'élément qui distingue le drapeau moldave de celui de la Roumanie, reflétant une histoire partagée."
  },
  {
    content: "Quel pays a un drapeau tricolore blanc, bleu, rouge avec un blason représentant le mont Triglav, le plus haut sommet du pays ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Slovénie",
    incorrect_answers: ["Slovaquie", "Croatie", "Serbie"],
    contexte: "Le blason, ajouté en 1991, représente le mont Triglav, la mer Adriatique et les rivières du pays."
  },
  {
    content: "Un drapeau blanc avec une carte de l'île en couleur cuivre et deux rameaux d'olivier en dessous est celui de quel pays insulaire ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Chypre",
    incorrect_answers: ["Malte", "Crète", "Kosovo"],
    contexte: "Son dessin neutre (évitant les couleurs grecques et turques) et les rameaux d'olivier symbolisent la paix entre les deux communautés."
  },
  {
    content: "Quel pays a un drapeau bleu et rouge avec une couronne princière dorée dans le coin supérieur gauche ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Liechtenstein",
    incorrect_answers: ["Luxembourg", "Monaco", "Andorre"],
    contexte: "La couronne a été ajoutée en 1937 après avoir découvert aux JO que le drapeau était identique à celui d'Haïti."
  },
  {
    content: "Ce drapeau est bicolore, blanc et rouge en bandes verticales, avec une Croix de George dans le canton blanc. Quel pays est-ce ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Malte",
    incorrect_answers: ["Pologne", "Monaco", "Suisse"],
    contexte: "La Croix de George a été décernée à l'île par le roi George VI pour sa bravoure pendant la Seconde Guerre mondiale."
  },
  {
    content: "À quel pays correspond un drapeau bleu avec un triangle jaune et une rangée d'étoiles blanches ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Bosnie-Herzégovine",
    incorrect_answers: ["Kosovo", "Albanie", "Macédoine du Nord"],
    contexte: "Les étoiles et la couleur bleue représentent l'Europe. Le triangle symbolise les trois peuples constitutifs du pays (Bosniaques, Croates et Serbes)."
  },
  {
    content: "Un fond rouge avec un soleil d'or à huit rayons est le drapeau de quel pays des Balkans ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Macédoine du Nord",
    incorrect_answers: ["Albanie", "Monténégro", "Kirghizistan"],
    contexte: "Le 'soleil de la liberté' a été adopté en 1995. Il symbolise un nouveau départ pour la nation après son indépendance."
  },
  {
    content: "Quel micro-État a un drapeau à deux bandes horizontales, blanche en haut et bleue en bas, avec ses armoiries au centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Saint-Marin",
    incorrect_answers: ["Vatican", "Andorre", "Liechtenstein"],
    contexte: "Le blanc symbolise la neige du mont Titano et la pureté, le bleu le ciel et la liberté. Les armoiries portent la devise 'Libertas'."
  },
  {
    content: "Ce drapeau est rouge avec une bordure dorée et le blason national (un aigle bicéphale) au centre. À quel pays appartient-il ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Monténégro",
    incorrect_answers: ["Albanie", "Serbie", "Russie"],
    contexte: "Il s'inspire d'un étendard militaire historique. L'aigle bicéphale est un symbole de la dynastie Petrović-Njegoš qui a régné sur le pays."
  },
  {
    content: "Un drapeau rouge et vert, avec un motif ornemental blanc et rouge sur le côté du guindant, représente quel pays d'Europe de l'Est ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Biélorussie",
    incorrect_answers: ["Lituanie", "Moldavie", "Ukraine"],
    contexte: "Le motif 'rushnyk' est un dessin traditionnel biélorusse. C'est une version modifiée du drapeau de la république socialiste soviétique de Biélorussie."
  },
  {
    content: "Ce drapeau est bicolore rouge et blanc, en deux bandes horizontales. Attention à ne pas le confondre. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Monaco",
    incorrect_answers: ["Pologne", "Indonésie", "Malte"],
    contexte: "Les couleurs rouge et blanche sont celles de la maison princière des Grimaldi. Il est identique au drapeau indonésien, mais avec des proportions différentes."
  },
  {
    content: "Quel est le seul drapeau national en Europe à être de forme carrée, en dehors de celui de la Suisse ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Vatican",
    incorrect_answers: ["Saint-Marin", "Monaco", "Liechtenstein"],
    contexte: "Le drapeau de la Cité du Vatican est divisé verticalement en jaune et blanc, avec les clés de Saint-Pierre et la tiare papale."
  },
  {
    content: "Ce drapeau tricolore horizontal dans l'ordre : rouge, bleu et blanc avec un grand blason est celui de quel pays ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Europe",
    correct_answer: "Serbie",
    incorrect_answers: ["Russie", "Slovaquie", "Slovénie"],
    contexte: "Il utilise les couleurs panslaves, mais dans un ordre inversé par rapport à la Russie. Le blason représente l'aigle bicéphale serbe."
  }

  [
  {
    content: "Ce drapeau rouge avec cinq étoiles jaunes (une grande et quatre petites) est celui de quel pays ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Chine",
    incorrect_answers: ["Vietnam", "Corée du Nord", "Laos"],
    contexte: "Le rouge symbolise la révolution communiste. La grande étoile représente le Parti Communiste Chinois, et les quatre petites, les classes sociales unies."
  },
  {
    content: "Un disque rouge plein sur un fond blanc simple caractérise le drapeau de quel pays insulaire ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Japon",
    incorrect_answers: ["Bangladesh", "Palaos", "Laos"],
    contexte: "Appelé 'Nisshōki' ou 'Hinomaru' (disque solaire), il représente le soleil levant, un symbole important dans la mythologie et la culture japonaises."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal safran, blanc et vert avec une roue bleue au centre ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Inde",
    incorrect_answers: ["Pakistan", "Sri Lanka", "Bangladesh"],
    contexte: "La roue, appelée Ashoka Chakra, est un symbole bouddhiste de la loi et du dharma. Les couleurs représentent le courage, la paix et la foi."
  },
  {
    content: "À quel pays appartient ce drapeau blanc avec un cercle rouge et bleu (Taegeuk) au centre et quatre trigrammes noirs aux coins ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Corée du Sud",
    incorrect_answers: ["Corée du Nord", "Japon", "Chine"],
    contexte: "Appelé 'Taegeukgi', il symbolise l'équilibre de l'univers. Les trigrammes représentent les éléments : ciel, terre, eau et feu."
  },
  {
    content: "Ce drapeau vert avec une inscription en arabe blanc et un sabre est celui de quel royaume du Moyen-Orient ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Arabie Saoudite",
    incorrect_answers: ["Iran", "Irak", "Pakistan"],
    contexte: "Le vert est la couleur de l'Islam. L'inscription est la 'chahada', la profession de foi musulmane. Le sabre symbolise la justice."
  },
  {
    content: "Un drapeau rouge avec une étoile jaune à cinq branches au centre est l'emblème de quel pays d'Asie du Sud-Est ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Vietnam",
    incorrect_answers: ["Chine", "Corée du Nord", "Myanmar"],
    contexte: "Le rouge symbolise la révolution et le sang versé pour l'indépendance. L'étoile jaune représente l'unité du peuple sous la direction du Parti communiste."
  },
  {
    content: "Quel pays a un drapeau rouge avec une étoile blanche et un croissant de lune blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Turquie",
    incorrect_answers: ["Pakistan", "Tunisie", "Algérie"],
    contexte: "L'étoile et le croissant sont des symboles pré-islamiques adoptés par les peuples turcs, puis associés à l'Islam. Ils figurent sur le drapeau ottoman."
  },
  {
    content: "Ce drapeau est composé de deux bandes horizontales bleues encadrant une bande blanche, avec une Étoile de David bleue au centre. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Israël",
    incorrect_answers: ["Liban", "Grèce", "Argentine"],
    contexte: "Le dessin s'inspire du talit, le châle de prière juif. L'Étoile de David est un symbole universellement reconnu du judaïsme."
  },
  {
    content: "Quel pays utilise un drapeau vert avec un croissant de lune blanc et une étoile, et une bande blanche verticale sur le côté ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Pakistan",
    incorrect_answers: ["Arabie Saoudite", "Turquie", "Iran"],
    contexte: "Le vert représente la majorité musulmane, et la bande blanche les minorités religieuses. Le croissant et l'étoile symbolisent le progrès et la lumière."
  },
  {
    content: "Un drapeau rouge avec un grand cercle blanc et une étoile rouge à l'intérieur est celui de quel pays ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Corée du Nord",
    incorrect_answers: ["Chine", "Corée du Sud", "Vietnam"],
    contexte: "Le rouge symbolise le communisme et le patriotisme révolutionnaire. L'étoile rouge représente le socialisme et le cercle blanc, la pureté."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal vert, blanc et rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Iran",
    incorrect_answers: ["Irak", "Syrie", "Hongrie"],
    contexte: "Le vert représente l'Islam, le blanc la paix et le rouge le courage. L'emblème central est une forme stylisée du mot 'Allah'."
  },
  {
    content: "Ce drapeau a trois bandes horizontales : rouge, noire et blanche, avec trois étoiles vertes. À quel pays appartient-il ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Irak",
    incorrect_answers: ["Syrie", "Égypte", "Yémen"],
    contexte: "Les couleurs sont celles du panarabisme. Les étoiles ont eu plusieurs significations ; aujourd'hui, elles représentent l'unité, la liberté et le socialisme."
  },
  {
    content: "Un drapeau avec cinq bandes horizontales (rouge, blanc, bleu, blanc, rouge) est celui de quel royaume d'Asie du Sud-Est ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Thaïlande",
    incorrect_answers: ["Cambodge", "Laos", "Malaisie"],
    contexte: "Le rouge symbolise la nation et le sang, le blanc la religion (bouddhisme) et le bleu la monarchie, les trois piliers du pays."
  },
  {
    content: "Quel pays a un drapeau rouge avec une bande verticale verte contenant une inscription blanche ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Maldives",
    incorrect_answers: ["Bangladesh", "Pakistan", "Arabie Saoudite"],
    contexte: "Le rouge symbolise le sang des héros, le rectangle vert la vie et la prospérité, et le croissant blanc la foi islamique."
  },
  {
    content: "Le drapeau de quel pays est rouge avec un croissant de lune et cinq étoiles blanches ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Singapour",
    incorrect_answers: ["Turquie", "Malaisie", "Indonésie"],
    contexte: "Le rouge symbolise la fraternité universelle, le blanc la pureté. Le croissant représente une jeune nation, et les cinq étoiles, ses idéaux."
  },
  {
    content: "Ce drapeau a des bandes horizontales bleues et blanches, un triangle rouge sur le côté et un soleil doré avec trois étoiles. Quel pays est-ce ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Philippines",
    incorrect_answers: ["Cuba", "Porto Rico", "Malaisie"],
    contexte: "C'est le seul drapeau au monde qui s'inverse en temps de guerre (bande rouge en haut). Le soleil représente la liberté, les étoiles les trois grandes régions."
  },
  {
    content: "À quel pays appartient ce drapeau composé de deux bandes horizontales, rouge en haut et blanche en bas ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Indonésie",
    incorrect_answers: ["Pologne", "Monaco", "Singapour"],
    contexte: "Appelé 'Sang Saka Merah-Putih' (Le Sacré Rouge et Blanc), il est basé sur les couleurs de l'empire Majapahit du XIIIe siècle."
  },
  {
    content: "Quel pays a un drapeau bleu avec une représentation du temple d'Angkor Vat en blanc au centre ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Cambodge",
    incorrect_answers: ["Thaïlande", "Laos", "Myanmar"],
    contexte: "C'est le seul drapeau national au monde à représenter un bâtiment. Angkor Vat est le symbole de l'héritage culturel et religieux khmer."
  },
  {
    content: "Un drapeau avec 14 bandes rouges et blanches alternées et un canton bleu avec un croissant et une étoile à 14 branches. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Malaisie",
    incorrect_answers: ["États-Unis", "Liberia", "Singapour"],
    contexte: "Les 14 bandes et les 14 branches de l'étoile représentent les 13 États membres et le territoire fédéral, unis dans la fédération."
  },
  {
    content: "Le drapeau de quel pays est rouge et blanc, avec un cèdre vert au centre ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Liban",
    incorrect_answers: ["Canada", "Chypre", "Népal"],
    contexte: "Le cèdre du Liban est un symbole de sainteté, d'éternité et de paix. Le rouge représente le sang versé, et le blanc la neige des montagnes."
  },
  {
    content: "Un drapeau vert avec un grand disque rouge au centre est celui de quel pays très peuplé ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Bangladesh",
    incorrect_answers: ["Japon", "Pakistan", "Inde"],
    contexte: "Le vert symbolise la luxuriance du pays. Le disque rouge représente le soleil se levant sur le Bengale et le sang des martyrs de l'indépendance."
  },
  {
    content: "Quel pays a un drapeau bleu clair avec un soleil et un aigle des steppes dorés ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Kazakhstan",
    incorrect_answers: ["Mongolie", "Ouzbékistan", "Kirghizistan"],
    contexte: "Le bleu ciel symbolise les peuples turcs. Le soleil représente la vie et l'énergie, et l'aigle la liberté et la puissance de l'État."
  },
  {
    content: "Ce drapeau a trois bandes horizontales : bleue, blanche et verte, avec un croissant rouge et des étoiles. De quel pays d'Asie centrale s'agit-il ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Ouzbékistan",
    incorrect_answers: ["Tadjikistan", "Turkménistan", "Kazakhstan"],
    contexte: "Le bleu représente le ciel, le blanc la paix, et le vert la nature. Les 12 étoiles symbolisent les 12 mois de l'année et les 12 provinces."
  },
  {
    content: "Un drapeau rouge avec un soleil stylisé jaune au centre (ressemblant à un yurt) est celui de quel pays montagneux ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Kirghizistan",
    incorrect_answers: ["Kazakhstan", "Macédoine du Nord", "Mongolie"],
    contexte: "Le rouge symbolise le courage. Le soleil représente la paix et la richesse. Le 'tunduk' au centre est l'ouverture au sommet d'une yourte kirghize."
  },
  {
    content: "Quel pays a un drapeau jaune avec deux bandes diagonales noire et blanche et un blason au centre ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Brunei",
    incorrect_answers: ["Malaisie", "Singapour", "Timor oriental"],
    contexte: "Le jaune est la couleur royale. Les bandes représentent les deux principaux ministres. Le blason porte des symboles islamiques de protection et de prospérité."
  },
  {
    content: "Ce drapeau a trois bandes verticales : rouge, bleue et rouge, avec un 'soyonbo' doré. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Mongolie",
    incorrect_answers: ["Kazakhstan", "Népal", "Bhoutan"],
    contexte: "Le bleu symbolise le ciel éternel, et les bandes rouges la prospérité et la liberté. Le 'soyonbo' est un symbole national complexe."
  },
  {
    content: "Le drapeau tricolore horizontal rouge, blanc et vert est celui de quel pays d'Asie Centrale ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Tadjikistan",
    incorrect_answers: ["Iran", "Ouzbékistan", "Hongrie"],
    contexte: "Le rouge symbolise l'unité de la nation, le blanc le coton et la pureté, et le vert la nature. La couronne et les étoiles représentent la souveraineté."
  },
  {
    content: "Un drapeau à fond rouge, un triangle noir sur le côté, et des bandes jaunes et blanches qui convergent. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Timor oriental",
    incorrect_answers: ["Papouasie-Nouvelle-Guinée", "Brunei", "Philippines"],
    contexte: "Le triangle noir symbolise l'obscurantisme à vaincre, le rouge la lutte pour la libération. L'étoile blanche est la lumière qui guide vers la paix."
  },
  {
    content: "Quel pays a un drapeau avec deux bandes horizontales, bleue en haut et rouge en bas, séparées par une fine bande verte ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Gambie",
    incorrect_answers: ["Ouzbékistan", "Botswana", "Estonie"],
    contexte: "Le bleu représente le fleuve Gambie, le rouge le soleil et la savane, et le vert les forêts et l'agriculture."
  },
  {
    content: "Le drapeau de quel pays est jaune safran avec un lion tenant une épée, et des bandes verte et orange sur le côté ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Sri Lanka",
    incorrect_answers: ["Inde", "Bhoutan", "Myanmar"],
    contexte: "Le lion symbolise le courage de la nation cinghalaise. Les bandes verte et orange représentent les minorités musulmane et tamoule."
  },
  {
    content: "Quel est le seul pays au monde dont le drapeau national n'est pas rectangulaire ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Népal",
    incorrect_answers: ["Suisse", "Vatican", "Bhoutan"],
    contexte: "Le drapeau du Népal est composé de deux pennons superposés. Il représente les montagnes de l'Himalaya ainsi que les deux grandes religions du pays."
  },
  {
    content: "Ce drapeau est divisé en diagonale en jaune et orange, avec un grand dragon blanc au centre. De quel royaume s'agit-il ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Bhoutan",
    incorrect_answers: ["Népal", "Sri Lanka", "Mongolie"],
    contexte: "Le jaune représente le pouvoir temporel du roi, l'orange la tradition bouddhiste. Le 'Druk' (Dragon du Tonnerre) symbolise le pays."
  },
  {
    content: "Un drapeau vert avec une bande rouge verticale contenant cinq motifs de tapis traditionnels ('guls'). À quel pays appartient-il ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Turkménistan",
    incorrect_answers: ["Ouzbékistan", "Tadjikistan", "Kazakhstan"],
    contexte: "C'est le drapeau national le plus complexe du monde. Les cinq motifs de tapis représentent les cinq principales tribus du pays."
  },
  {
    content: "Le drapeau tricolore noir, blanc et vert, avec un triangle rouge sur le côté, appartient à quel État ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Jordanie",
    incorrect_answers: ["Palestine", "Syrie", "Émirats arabes unis"],
    contexte: "Les couleurs sont celles du panarabisme. L'étoile à sept branches représente les sept versets de la première sourate du Coran et l'unité des peuples arabes."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal jaune, bleu et rouge ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Arménie",
    incorrect_answers: ["Colombie", "Roumanie", "Moldavie"],
    contexte: "Le rouge symbolise le sang versé, le bleu le ciel et l'espoir, et le jaune la terre fertile et le courage du peuple."
  },
  {
    content: "Ce drapeau a trois bandes horizontales de taille égale, rouge, bleue et rouge, avec un blason au centre. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Laos",
    incorrect_answers: ["Cambodge", "Corée du Nord", "Autriche"],
    contexte: "Le rouge représente le sang de la lutte pour l'indépendance, et le bleu le Mékong. Le disque blanc symbolise la lune sur le Mékong et l'unité."
  },
  {
    content: "Un drapeau avec une croix de Saint-Georges rouge sur fond blanc et quatre autres croix plus petites dans chaque quadrant. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Géorgie",
    incorrect_answers: ["Angleterre", "Malte", "Danemark"],
    contexte: "Appelé le 'Drapeau des Cinq Croix', c'est un drapeau chrétien datant du Royaume de Géorgie médiéval, ré-adopté en 2004."
  },
  {
    content: "Le drapeau tricolore horizontal bleu, rouge, vert est celui de quel pays du Caucase ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Azerbaïdjan",
    incorrect_answers: ["Arménie", "Géorgie", "Ouzbékistan"],
    contexte: "Le bleu représente l'héritage turc, le rouge le progrès, et le vert l'Islam. Le croissant et l'étoile à huit branches sont au centre."
  },
  {
    content: "Quel pays a un drapeau rouge avec un oiseau de paradis stylisé et la constellation de la Croix du Sud ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["Australie", "Nouvelle-Zélande", "Timor oriental"],
    contexte: "Le drapeau est divisé en diagonale. L'oiseau de paradis est un symbole national, et la Croix du Sud représente sa position dans l'hémisphère sud."
  },
  {
    content: "Ce drapeau est jaune en haut et tricolore (blanc, vert, rouge) en bas. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Myanmar",
    incorrect_answers: ["Lituanie", "Éthiopie", "Sri Lanka"],
    contexte: "Le jaune représente la solidarité, le vert la paix et la tranquillité, et le rouge le courage. La grande étoile blanche symbolise l'union du pays."
  },
  {
    content: "Un drapeau avec un fond rouge et deux épées croisées surmontées d'un poignard ('khanjar') est celui de quel sultanat ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Oman",
    incorrect_answers: ["Yémen", "Qatar", "Émirats arabes unis"],
    contexte: "Le drapeau porte l'emblème national, le 'khanjar', dans le canton. Le blanc représente la paix et le vert la fertilité des terres."
  },
  {
    content: "Quel pays a un drapeau de couleur marron avec un bord dentelé blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Qatar",
    incorrect_answers: ["Bahreïn", "Émirats arabes unis", "Oman"],
    contexte: "Le marron (ou pourpre) représente la couleur des pigments produits historiquement dans la région. Il a le ratio hauteur/largeur le plus grand au monde."
  },
  {
    content: "Le drapeau de Bahreïn est rouge et blanc. Qu'est-ce qui le distingue de celui du Qatar ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Cinq triangles formant une ligne dentelée",
    incorrect_answers: ["Une seule pointe dentelée", "La couleur est rouge vif", "Il n'y a pas de différence"],
    contexte: "Les cinq pointes ou triangles blancs symbolisent les cinq piliers de l'Islam. La couleur est rouge, contrairement au marron du Qatar."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal noir, blanc, vert, avec une bande verticale rouge sur le côté du guindant ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Asie",
    correct_answer: "Émirats arabes unis",
    incorrect_answers: ["Koweït", "Jordanie", "Syrie"],
    contexte: "Ce drapeau utilise les couleurs panarabes, représentant l'unité des nations arabes. Chaque couleur symbolise une dynastie ou une époque historique."
  }

  # Océanie - Facile (91-105)
  {
    content: "Quel pays d'Océanie possède un drapeau avec la constellation de la Croix du Sud ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["L'Australie", "Les Fidji", "La Papouasie-Nouvelle-Guinée"],
    contexte: "Le drapeau de la Nouvelle-Zélande a une constellation de la Croix du Sud, qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays d'Océanie a un drapeau qui inclut une étoile à sept branches ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "Les Fidji", "La Papouasie-Nouvelle-Guinée"],
    contexte: "Le drapeau australien a une grande étoile à sept branches, représentant les six États et les territoires."
  },
  {
    content: "Le drapeau de quel pays est un drapeau à damier rouge et blanc au centre ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Croatie",
    incorrect_answers: ["La Slovénie", "La Bosnie-Herzégovine", "La Serbie"],
    contexte: "Le drapeau de la Croatie est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec un aigle à deux têtes sur fond rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Grèce", "La Serbie", "La Pologne"],
    contexte: "L'aigle noir sur fond rouge symbolise les guerriers de l'Albanie, un emblème datant du XVe siècle."
  },
  {
    content: "Le drapeau de quel pays est composé d'une croix nordique rouge sur un fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Danemark",
    incorrect_answers: ["La Suède", "La Norvège", "La Finlande"],
    contexte: "Le Dannebrog, drapeau danois, est le plus ancien drapeau national encore utilisé au monde, datant de 1219."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge au centre d'un cercle jaune sur fond bleu ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Viêt Nam",
    incorrect_answers: ["La Chine", "La Corée du Nord", "Cuba"],
    contexte: "L'étoile jaune sur le drapeau vietnamien symbolise la direction du Parti Communiste, et le peuple est l'étoile."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond vert ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national avec un pentagramme vert au centre."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },

  # Océanie - Intermédiaire (106-120)
  {
    content: "Quel pays d'Océanie a un drapeau qui inclut une étoile à sept branches ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "Les Fidji", "La Papouasie-Nouvelle-Guinée"],
    contexte: "Le drapeau australien a une grande étoile à sept branches, représentant les six États et les territoires."
  },
  {
    content: "Quel pays d'Océanie présente une étoile rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec un aigle à deux têtes sur fond rouge ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Grèce", "La Serbie", "La Pologne"],
    contexte: "L'aigle noir sur fond rouge symbolise les guerriers de l'Albanie, un emblème datant du XVe siècle."
  },
  {
    content: "Le drapeau de quel pays est composé d'une croix nordique rouge sur un fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Danemark",
    incorrect_answers: ["La Suède", "La Norvège", "La Finlande"],
    contexte: "Le Dannebrog, drapeau danois, est le plus ancien drapeau national encore utilisé au monde, datant de 1219."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge au centre d'un cercle jaune sur fond bleu ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Viêt Nam",
    incorrect_answers: ["La Chine", "La Corée du Nord", "Cuba"],
    contexte: "L'étoile jaune sur le drapeau vietnamien symbolise la direction du Parti Communiste, et le peuple est l'étoile."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond vert ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national avec un pentagramme vert au centre."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },

  # Océanie - Difficile (121-135)
  {
    content: "Le drapeau de quel pays d'Océanie présente une étoile blanche à sept branches et une croix du Sud ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "Les Fidji", "La Papouasie-Nouvelle-Guinée"],
    contexte: "Le drapeau australien a une grande étoile à sept branches, représentant les six États et les territoires."
  },
  {
    content: "Le drapeau de quel pays est un drapeau à damier rouge et blanc au centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Croatie",
    incorrect_answers: ["La Slovénie", "La Bosnie-Herzégovine", "La Serbie"],
    contexte: "Le drapeau de la Croatie est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec un aigle à deux têtes sur fond rouge ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Grèce", "La Serbie", "La Pologne"],
    contexte: "L'aigle noir sur fond rouge symbolise les guerriers de l'Albanie, un emblème datant du XVe siècle."
  },
  {
    content: "Le drapeau de quel pays est composé d'une croix nordique rouge sur un fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Danemark",
    incorrect_answers: ["La Suède", "La Norvège", "La Finlande"],
    contexte: "Le Dannebrog, drapeau danois, est le plus ancien drapeau national encore utilisé au monde, datant de 1219."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge au centre d'un cercle jaune sur fond bleu ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Viêt Nam",
    incorrect_answers: ["La Chine", "La Corée du Nord", "Cuba"],
    contexte: "L'étoile jaune sur le drapeau vietnamien symbolise la direction du Parti Communiste, et le peuple est l'étoile."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond vert ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national avec un pentagramme vert au centre."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Océanie",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },

  # Amérique - Facile (136-150)
  {
    content: "Quel pays a un drapeau avec une étoile rouge au centre d'un drapeau blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec un aigle royal au centre d'un drapeau rouge et vert ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Mexique",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "L'aigle royal est l'emblème national du Mexique. Il symbolise le pays et la religion."
  },
  {
    content: "Le drapeau de quel pays est composé d'une feuille d'érable rouge au centre d'un drapeau blanc et rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Les États-Unis", "Le Mexique", "Le Groenland"],
    contexte: "La feuille d'érable est l'emblème national du Canada, symbolisant la nature et l'unité."
  },
  {
    content: "Quel drapeau national est bleu, blanc et rouge avec une étoile à cinq branches au centre ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Cuba",
    incorrect_answers: ["Porto Rico", "Le Mexique", "Le Chili"],
    contexte: "Le drapeau de Cuba est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond vert ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national avec un pentagramme vert au centre."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },

  # Amérique - Intermédiaire (151-165)
  {
    content: "Quel drapeau national présente une bande diagonale blanche et bleue ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Honduras",
    incorrect_answers: ["Le Salvador", "Le Nicaragua", "Le Costa Rica"],
    contexte: "Le drapeau du Honduras est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Le drapeau de quel pays d'Amérique du Sud arbore un soleil levant au centre ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "L'Argentine",
    incorrect_answers: ["Le Brésil", "L'Uruguay", "Le Chili"],
    contexte: "Le drapeau argentin présente le 'Sol de Mayo', un symbole historique de l'indépendance de l'Argentine."
  },
  {
    content: "Le drapeau de quel pays présente un drapeau à damier rouge et blanc au centre ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Croatie",
    incorrect_answers: ["La Slovénie", "La Bosnie-Herzégovine", "La Serbie"],
    contexte: "Le drapeau de la Croatie est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec un aigle à deux têtes sur fond rouge ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Grèce", "La Serbie", "La Pologne"],
    contexte: "L'aigle noir sur fond rouge symbolise les guerriers de l'Albanie, un emblème datant du XVe siècle."
  },
  {
    content: "Le drapeau de quel pays est composé d'une croix nordique rouge sur un fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Danemark",
    incorrect_answers: ["La Suède", "La Norvège", "La Finlande"],
    contexte: "Le Dannebrog, drapeau danois, est le plus ancien drapeau national encore utilisé au monde, datant de 1219."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge au centre d'un cercle jaune sur fond bleu ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Viêt Nam",
    incorrect_answers: ["La Chine", "La Corée du Nord", "Cuba"],
    contexte: "L'étoile jaune sur le drapeau vietnamien symbolise la direction du Parti Communiste, et le peuple est l'étoile."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond vert ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national avec un pentagramme vert au centre."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },

  # Amérique - Difficile (166-180)
  {
    content: "Le drapeau de quel pays d'Amérique centrale présente un quetzal (oiseau national) sur une bande blanche ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Guatemala",
    incorrect_answers: ["Le Costa Rica", "Le Panama", "Le Nicaragua"],
    contexte: "Le drapeau du Guatemala est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec un aigle noir sur fond rouge ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Grèce", "La Serbie", "La Pologne"],
    contexte: "L'aigle noir sur fond rouge symbolise les guerriers de l'Albanie, un emblème datant du XVe siècle."
  },
  {
    content: "Le drapeau de quel pays est composé d'une croix nordique rouge sur un fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Danemark",
    incorrect_answers: ["La Suède", "La Norvège", "La Finlande"],
    contexte: "Le Dannebrog, drapeau danois, est le plus ancien drapeau national encore utilisé au monde, datant de 1219."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge au centre d'un cercle jaune sur fond bleu ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Viêt Nam",
    incorrect_answers: ["La Chine", "La Corée du Nord", "Cuba"],
    contexte: "L'étoile jaune sur le drapeau vietnamien symbolise la direction du Parti Communiste, et le peuple est l'étoile."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond vert ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national avec un pentagramme vert au centre."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Amérique",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },

  # Afrique - Facile (181-195)
  {
    content: "Le drapeau de quel pays africain est composé de trois bandes horizontales, rouge, jaune et vert ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Ghana",
    incorrect_answers: ["Le Mali", "Le Sénégal", "L'Éthiopie"],
    contexte: "Le drapeau du Ghana symbolise le pays, la religion et l'unité de la nation."
  },
  {
    content: "Quel pays africain a un drapeau avec un pentagramme vert au centre d'un fond rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Le drapeau de quel pays africain présente un aigle sur fond noir et rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Zambie",
    incorrect_answers: ["Le Ghana", "Le Nigéria", "Le Kenya"],
    contexte: "Le drapeau de la Zambie est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec un aigle noir sur fond rouge ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Grèce", "La Serbie", "La Pologne"],
    contexte: "L'aigle noir sur fond rouge symbolise les guerriers de l'Albanie, un emblème datant du XVe siècle."
  },
  {
    content: "Le drapeau de quel pays est composé d'une croix nordique rouge sur un fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Danemark",
    incorrect_answers: ["La Suède", "La Norvège", "La Finlande"],
    contexte: "Le Dannebrog, drapeau danois, est le plus ancien drapeau national encore utilisé au monde, datant de 1219."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge au centre d'un cercle jaune sur fond bleu ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Viêt Nam",
    incorrect_answers: ["La Chine", "La Corée du Nord", "Cuba"],
    contexte: "L'étoile jaune sur le drapeau vietnamien symbolise la direction du Parti Communiste, et le peuple est l'étoile."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond vert ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national avec un pentagramme vert au centre."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "facile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },

  # Afrique - Intermédiaire (196-210)
  {
    content: "Le drapeau de quel pays africain présente un bouclier et deux lances ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Kenya",
    incorrect_answers: ["La Tanzanie", "L'Ouganda", "L'Éthiopie"],
    contexte: "Le bouclier et les lances du drapeau kényan symbolisent la défense de la liberté et de l'indépendance."
  },
  {
    content: "Quel pays africain possède un drapeau composé de trois bandes verticales, vert, blanc et rouge ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Nigéria",
    incorrect_answers: ["L'Algérie", "Le Sénégal", "Le Kenya"],
    contexte: "Le drapeau du Nigéria est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec un aigle noir sur fond rouge ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Grèce", "La Serbie", "La Pologne"],
    contexte: "L'aigle noir sur fond rouge symbolise les guerriers de l'Albanie, un emblème datant du XVe siècle."
  },
  {
    content: "Le drapeau de quel pays est composé d'une croix nordique rouge sur un fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Danemark",
    incorrect_answers: ["La Suède", "La Norvège", "La Finlande"],
    contexte: "Le Dannebrog, drapeau danois, est le plus ancien drapeau national encore utilisé au monde, datant de 1219."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge au centre d'un cercle jaune sur fond bleu ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Viêt Nam",
    incorrect_answers: ["La Chine", "La Corée du Nord", "Cuba"],
    contexte: "L'étoile jaune sur le drapeau vietnamien symbolise la direction du Parti Communiste, et le peuple est l'étoile."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond vert ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national avec un pentagramme vert au centre."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "intermédiaire",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },

  # Afrique - Difficile (211-225)
  {
    content: "Quel pays africain arbore un drapeau composé de 7 bandes horizontales et d'un disque au centre ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Les Comores",
    incorrect_answers: ["Le Djibouti", "L'Érythrée", "L'Ouganda"],
    contexte: "Le drapeau des Comores est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Le drapeau de quel pays africain présente un bouclier et deux lances ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Kenya",
    incorrect_answers: ["La Tanzanie", "L'Ouganda", "L'Éthiopie"],
    contexte: "Le bouclier et les lances du drapeau kényan symbolisent la défense de la liberté et de l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un aigle noir sur fond rouge ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Grèce", "La Serbie", "La Pologne"],
    contexte: "L'aigle noir sur fond rouge symbolise les guerriers de l'Albanie, un emblème datant du XVe siècle."
  },
  {
    content: "Le drapeau de quel pays est composé d'une croix nordique rouge sur un fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Danemark",
    incorrect_answers: ["La Suède", "La Norvège", "La Finlande"],
    contexte: "Le Dannebrog, drapeau danois, est le plus ancien drapeau national encore utilisé au monde, datant de 1219."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge au centre d'un cercle jaune sur fond bleu ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Viêt Nam",
    incorrect_answers: ["La Chine", "La Corée du Nord", "Cuba"],
    contexte: "L'étoile jaune sur le drapeau vietnamien symbolise la direction du Parti Communiste, et le peuple est l'étoile."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond vert ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Maroc",
    incorrect_answers: ["L'Algérie", "La Tunisie", "La Libye"],
    contexte: "Le drapeau du Maroc est un drapeau national avec un pentagramme vert au centre."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une croix rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Suisse",
    incorrect_answers: ["Le Danemark", "La Norvège", "La Finlande"],
    contexte: "Le drapeau de la Suisse est un drapeau national qui symbolise la liberté et l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec un drapeau national et un drapeau de la monarchie ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Espagne", "La France", "L'Allemagne"],
    contexte: "Le drapeau du Royaume-Uni est un drapeau national qui symbolise le pouvoir royal et l'unité de la monarchie."
  },
  {
    content: "Quel pays a un drapeau avec un tricolore noir, jaune et rouge en bandes verticales ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Belgique", "Le Luxembourg", "Les Pays-Bas"],
    contexte: "Le drapeau de l'Allemagne est un drapeau national qui symbolise l'unité et la liberté de la nation."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Tunisie", "L'Algérie", "Le Maroc"],
    contexte: "Le drapeau de la Turquie est un drapeau national qui symbolise la nation et la religion."
  },
  {
    content: "Quel pays a un drapeau avec une étoile bleue sur fond blanc ?",
    difficulty: "difficile",
    category: "drapeaux",
    region: "Afrique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Brésil", "L'Uruguay"],
    contexte: "Le drapeau du Chili est un drapeau national qui symbolise le pays et la religion."
  },

  # RELIEFS, FLEUVES ET OCEANS via GEMINI 2.5 Flash (NON VERIFIEES)

  # Europe - Facile (1-15)
  {
    content: "Quel est le plus long fleuve d'Europe ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La Volga",
    incorrect_answers: ["Le Danube", "Le Rhin", "La Tamise"],
    contexte: "La Volga est le plus long fleuve d'Europe, s'étendant sur 3 690 km et traversant la Russie."
  },
  {
    content: "Quelle chaîne de montagnes sépare la France de l'Espagne ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Les Pyrénées",
    incorrect_answers: ["Les Alpes", "L'Oural", "Le Massif Central"],
    contexte: "Les Pyrénées forment une barrière naturelle entre la péninsule ibérique et le reste de l'Europe."
  },
  {
    content: "Quel fleuve coule à travers la ville de Rome ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Tibre",
    incorrect_answers: ["L'Arno", "Le Pô", "L'Adige"],
    contexte: "Le Tibre est le fleuve historique de Rome, jouant un rôle central dans l'histoire de la ville."
  },
  {
    content: "Quel est le point culminant des Alpes ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Mont Blanc",
    incorrect_answers: ["Le Cervin", "Le Mont Rose", "Le Dôme de neige des Écrins"],
    contexte: "Le Mont Blanc, à la frontière franco-italienne, est le plus haut sommet des Alpes et d'Europe occidentale."
  },
  {
    content: "Quel fleuve traverse l'Allemagne, la France, et les Pays-Bas pour se jeter dans la mer du Nord ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Rhin",
    incorrect_answers: ["Le Danube", "L'Elbe", "Le Rhône"],
    contexte: "Le Rhin est une voie navigable vitale pour l'Europe, traversant de nombreux pays."
  },
  {
    content: "Dans quelle mer se jette le fleuve Pô ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La mer Adriatique",
    incorrect_answers: ["La mer Tyrrhénienne", "La mer Ionienne", "La mer Égée"],
    contexte: "Le Pô est le plus long fleuve d'Italie, se jetant dans l'Adriatique avec un grand delta."
  },
  {
    content: "Quel est le plus grand lac d'Europe par sa superficie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le lac Ladoga",
    incorrect_answers: ["Le lac Onega", "Le lac Vänern", "Le lac Léman"],
    contexte: "Le lac Ladoga, situé en Russie, est le plus grand lac d'eau douce d'Europe."
  },
  {
    content: "Quel fleuve traverse Vienne, Budapest, et Belgrade ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Danube",
    incorrect_answers: ["Le Rhin", "L'Elbe", "La Vistule"],
    contexte: "Le Danube est un fleuve majeur d'Europe centrale, traversant dix pays et quatre capitales."
  },
  {
    content: "Quel détroit sépare l'Espagne du Maroc ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le détroit de Gibraltar",
    incorrect_answers: ["Le détroit du Bosphore", "Le détroit de Messine", "Le détroit de Béring"],
    contexte: "Le détroit de Gibraltar relie la mer Méditerranée à l'océan Atlantique, entre l'Espagne et l'Afrique."
  },
  {
    content: "Quel est le point culminant des Carpates ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Gerlachovský štít",
    incorrect_answers: ["Le Moldoveanu", "Le Mont Rysy", "Le Triglav"],
    contexte: "Le Gerlachovský štít, en Slovaquie, est le sommet le plus élevé des Carpates."
  },
  {
    content: "Quelle mer est située entre l'Italie et les Balkans ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La mer Adriatique",
    incorrect_answers: ["La mer Ionienne", "La mer Tyrrhénienne", "La mer Égée"],
    contexte: "La mer Adriatique est une mer bordière de la Méditerranée. Elle sépare la péninsule italienne des Balkans."
  },
  {
    content: "Quel fleuve coule à travers Paris ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La Seine",
    incorrect_answers: ["La Loire", "Le Rhône", "La Garonne"],
    contexte: "La Seine est le principal fleuve de Paris. Elle traverse également d'autres villes de Normandie."
  },
  {
    content: "Quel est le plus grand fleuve de France ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La Loire",
    incorrect_answers: ["Le Rhône", "La Seine", "La Garonne"],
    contexte: "La Loire est le plus long fleuve de France, connu pour ses châteaux."
  },
  {
    content: "Quelle chaîne de montagnes est la frontière naturelle entre la Russie européenne et la Sibérie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Les montagnes de l'Oural",
    incorrect_answers: ["Les Carpates", "Le Caucase", "Les Alpes scandinaves"],
    contexte: "L'Oural est traditionnellement considéré comme la frontière entre les continents européen et asiatique."
  },
  {
    content: "Quelle est la plus grande île de la mer Méditerranée ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La Sicile",
    incorrect_answers: ["La Sardaigne", "La Corse", "Chypre"],
    contexte: "La Sicile, située au sud de la péninsule italienne, est la plus grande île de la Méditerranée."
  },

  # Europe - Intermédiaire (16-30)
  {
    content: "Quelle est la plus longue chaîne de montagnes entièrement en Europe ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Les Carpates",
    incorrect_answers: ["Les Alpes", "L'Oural", "Les Pyrénées"],
    contexte: "Les Carpates, bien qu'elles s'étendent sur plusieurs pays, sont entièrement en Europe et sont plus longues que les Alpes."
  },
  {
    content: "Quel fleuve est la frontière naturelle entre l'Allemagne et la Pologne ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "L'Oder",
    incorrect_answers: ["L'Elbe", "La Vistule", "Le Rhin"],
    contexte: "L'Oder marque une partie significative de la frontière occidentale de la Pologne avec l'Allemagne."
  },
  {
    content: "Quel est le plus grand fjord de Norvège ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Sognefjord",
    incorrect_answers: ["Le Geirangerfjord", "Le Hardangerfjord", "Le Lysefjord"],
    contexte: "Le Sognefjord est le plus grand fjord de Norvège et le deuxième plus long du monde."
  },
  {
    content: "Quel volcan italien est considéré comme le plus actif d'Europe ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "L'Etna",
    incorrect_answers: ["Le Vésuve", "Le Stromboli", "Le Teide"],
    contexte: "L'Etna, en Sicile, est un des volcans les plus actifs du monde et un symbole de la géologie européenne."
  },
  {
    content: "Quel fleuve coule à travers Londres et se jette dans la mer du Nord ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La Tamise",
    incorrect_answers: ["La Severn", "Le Mersey", "La Garonne"],
    contexte: "La Tamise est le fleuve le plus emblématique du Royaume-Uni, traversant Londres avant d'atteindre l'océan."
  },
  {
    content: "Quelle mer sépare l'Italie des Balkans ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La mer Adriatique",
    incorrect_answers: ["La mer Ionienne", "La mer Tyrrhénienne", "La mer Égée"],
    contexte: "La mer Adriatique est une partie de la Méditerranée située entre la péninsule italienne et les Balkans."
  },
  {
    content: "Quel massif montagneux abrite le Mont Elbrouz, le plus haut sommet d'Europe ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Caucase",
    incorrect_answers: ["Les Alpes", "L'Oural", "Les Carpates"],
    contexte: "Le Mont Elbrouz est un volcan éteint du Caucase, considéré comme le plus haut sommet d'Europe."
  },
  {
    content: "Quel est le plus grand lac de la péninsule scandinave ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le lac Vänern",
    incorrect_answers: ["Le lac Saimaa", "Le lac Onega", "Le lac Mälaren"],
    contexte: "Le lac Vänern est le plus grand lac de Suède et le troisième plus grand d'Europe."
  },
  {
    content: "Quel est le plus long fleuve de la péninsule ibérique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Tage",
    incorrect_answers: ["Le Douro", "Le Guadalquivir", "L'Ebre"],
    contexte: "Le Tage, ou Tajo en espagnol, prend sa source en Espagne et se jette dans l'océan Atlantique au Portugal."
  },
  {
    content: "Quelle mer est bordée par la Suède, la Finlande, la Russie et la Pologne ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La mer Baltique",
    incorrect_answers: ["La mer du Nord", "La mer de Barents", "La mer Blanche"],
    contexte: "La mer Baltique est une mer intérieure d'Europe du Nord, peu profonde et saumâtre."
  },
  {
    content: "Quel fleuve coule à travers Vienne, Budapest et Belgrade ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Danube",
    incorrect_answers: ["Le Rhin", "L'Elbe", "La Vistule"],
    contexte: "Le Danube est le deuxième plus long fleuve d'Europe. Il traverse dix pays et quatre capitales."
  },
  {
    content: "Quel est le point culminant des Carpates ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Gerlachovský štít",
    incorrect_answers: ["Le Mont Moldoveanu", "Le Mont Rysy", "Le Triglav"],
    contexte: "Le Gerlachovský štít, en Slovaquie, est le sommet le plus élevé des Carpates."
  },
  {
    content: "Quel est le nom de la mer qui sépare la Scandinavie des îles Britanniques ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La mer du Nord",
    incorrect_answers: ["La mer Baltique", "La mer de Barents", "La mer Noire"],
    contexte: "La mer du Nord est une mer épicontinentale de l'océan Atlantique, située entre la Grande-Bretagne et la Scandinavie."
  },
  {
    content: "Quel est le nom du plus grand lac de l'île d'Irlande ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Lough Neagh",
    incorrect_answers: ["Le Lough Corrib", "Le Lough Erne", "Le lac Killarney"],
    contexte: "Le Lough Neagh, en Irlande du Nord, est le plus grand lac des îles Britanniques."
  },
  {
    content: "Quel est le nom du volcan le plus actif de Sicile ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "L'Etna",
    incorrect_answers: ["Le Vésuve", "Le Stromboli", "Le Teide"],
    contexte: "L'Etna est le volcan le plus actif d'Europe. Il est situé sur l'île de Sicile, en Italie."
  },

  # Europe - Difficile (31-45)
  {
    content: "Quel est le nom du delta formé par le fleuve Danube ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le delta du Danube",
    incorrect_answers: ["Le delta du Pô", "Le delta de la Volga", "Le delta du Rhin"],
    contexte: "Le delta du Danube, en Roumanie et en Ukraine, est le plus grand et le mieux préservé d'Europe."
  },
  {
    content: "Quel est le nom du plus grand glacier d'Islande ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Vatnajökull",
    incorrect_answers: ["L'Aletsch", "Le Jostedalsbreen", "Le Folgefonna"],
    contexte: "Le Vatnajökull est le plus grand glacier d'Europe par sa superficie et son volume."
  },
  {
    content: "Quel est le plus grand estuaire d'Europe ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La Gironde",
    incorrect_answers: ["L'estuaire de la Severn", "L'estuaire de l'Elbe", "L'estuaire de la Tamise"],
    contexte: "L'estuaire de la Gironde, en France, est un estuaire formé par les rivières Garonne et Dordogne."
  },
  {
    content: "Quel est le plus grand lac d'eau douce d'Écosse ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Loch Lomond",
    incorrect_answers: ["Le Loch Ness", "Le Loch Morar", "Le Loch Awe"],
    contexte: "Le Loch Lomond est le plus grand lac d'eau douce d'Écosse et de Grande-Bretagne par sa superficie."
  },
  {
    content: "Quel est le plus haut volcan actif d'Europe continentale ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Stromboli",
    incorrect_answers: ["Le Vésuve", "Le Mont Etna", "Le Vulcano"],
    contexte: "Le Stromboli, dans les îles Éoliennes, est l'un des volcans les plus actifs du monde."
  },
  {
    content: "Quelle mer intérieure d'Europe est connue pour son niveau de salinité élevé ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La mer Noire",
    incorrect_answers: ["La mer Caspienne", "La mer d'Aral", "La mer du Nord"],
    contexte: "La mer Noire est une mer intérieure entre l'Europe de l'Est et l'Asie occidentale."
  },
  {
    content: "Quelle est la plus grande île d'Europe de l'Ouest ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La Grande-Bretagne",
    incorrect_answers: ["L'Irlande", "La Sicile", "La Sardaigne"],
    contexte: "La Grande-Bretagne est la plus grande île d'Europe et la neuvième plus grande île du monde."
  },
  {
    content: "Quelle chaîne de montagnes se trouve au sud-est de la Pologne et à l'ouest de l'Ukraine ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Les Carpates",
    incorrect_answers: ["Les Alpes", "Les Tatras", "L'Oural"],
    contexte: "Les Carpates s'étendent sur plusieurs pays d'Europe centrale et de l'Est, y compris la Pologne et l'Ukraine."
  },
  {
    content: "Quel fleuve coule à travers Prague, Dresde et Hambourg ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "L'Elbe",
    incorrect_answers: ["Le Danube", "Le Rhin", "L'Oder"],
    contexte: "L'Elbe, prenant sa source en République tchèque, traverse l'Allemagne avant de se jeter dans la mer du Nord."
  },
  {
    content: "Quel est le nom du détroit qui relie la mer Baltique à la mer du Nord ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le détroit de l'Øresund",
    incorrect_answers: ["Le détroit du Bosphore", "Le détroit de Gibraltar", "Le détroit de Messine"],
    contexte: "Le détroit de l'Øresund sépare la Suède et le Danemark, reliant la mer Baltique et la mer du Nord."
  },
  {
    content: "Quel est le nom du plus haut sommet des îles britanniques ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Ben Nevis",
    incorrect_answers: ["Le Scafell Pike", "Le Snowdon", "Le Mont Carrantuohill"],
    contexte: "Le Ben Nevis, en Écosse, est le point culminant des îles britanniques et du Royaume-Uni."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes qui sépare l'Italie de la France et de la Suisse ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Les Alpes",
    incorrect_answers: ["Les Pyrénées", "Les Carpates", "Le Caucase"],
    contexte: "Les Alpes sont la plus grande chaîne de montagnes d'Europe centrale. Elles forment la frontière entre l'Italie et la France et la Suisse."
  },
  {
    content: "Quel est le plus grand fleuve de la péninsule ibérique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le Tage",
    incorrect_answers: ["Le Douro", "Le Guadalquivir", "L'Ebre"],
    contexte: "Le Tage est le plus long fleuve de la péninsule ibérique. Il coule à travers l'Espagne et le Portugal."
  },
  {
    content: "Quel est le nom du plus grand lac de Finlande ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "Le lac Saimaa",
    incorrect_answers: ["Le lac Päijänne", "Le lac Inari", "Le lac Pielinen"],
    contexte: "Le lac Saimaa est le plus grand lac de Finlande. C'est le quatrième plus grand d'Europe."
  },
  {
    content: "Quel est le nom de la mer qui sépare la péninsule italienne de la péninsule balkanique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Europe",
    correct_answer: "La mer Adriatique",
    incorrect_answers: ["La mer Ionienne", "La mer Tyrrhénienne", "La mer Égée"],
    contexte: "La mer Adriatique est une mer bordière de la Méditerranée. Elle sépare l'Italie de la Croatie."
  },

  # Asie - Facile (46-60)
  {
    content: "Quel est le fleuve le plus long d'Asie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Yangtsé",
    incorrect_answers: ["Le Mékong", "Le Huang He", "Le Gange"],
    contexte: "Le Yangtsé, long de plus de 6 300 km, est le plus long fleuve d'Asie et joue un rôle crucial en Chine."
  },
  {
    content: "Quel désert couvre une grande partie de la Chine et de la Mongolie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le désert de Gobi",
    incorrect_answers: ["Le Sahara", "Le désert d'Arabie", "Le désert du Kalahari"],
    contexte: "Le Gobi est le plus grand désert d'Asie, connu pour ses vastes étendues de roches plutôt que de sable."
  },
  {
    content: "Quel est le point culminant de l'Himalaya ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Mont Everest",
    incorrect_answers: ["Le K2", "Le Kangchenjunga", "Le Lhotse"],
    contexte: "Le Mont Everest est le plus haut sommet du monde, situé dans la chaîne de l'Himalaya."
  },
  {
    content: "Quel volcan est considéré comme le symbole du Japon ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Mont Fuji",
    incorrect_answers: ["Le Mont Aso", "Le Mont Ontake", "Le Sakurajima"],
    contexte: "Le Mont Fuji est le point culminant du Japon et un volcan endormi, souvent représenté dans l'art."
  },
  {
    content: "Quel est le plus grand lac d'Asie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "La mer Caspienne",
    incorrect_answers: ["Le lac Baïkal", "Le lac d'Aral", "Le lac Balkhash"],
    contexte: "La mer Caspienne est un lac salé d'Asie centrale. C'est le plus grand lac du monde."
  },
  {
    content: "Quel est le plus grand archipel du monde ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "L'Indonésie",
    incorrect_answers: ["Le Japon", "Les Philippines", "La Nouvelle-Zélande"],
    contexte: "L'Indonésie est un archipel d'environ 17 500 îles, faisant d'elle le plus grand archipel du monde."
  },
  {
    content: "Quel fleuve asiatique est surnommé 'le Fleuve Jaune' ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Huang He",
    incorrect_answers: ["Le Yangtsé", "Le Mékong", "Le Gange"],
    contexte: "Le Huang He, ou Fleuve Jaune, tire son nom de la couleur de ses eaux chargées de sédiments."
  },
  {
    content: "Quel fleuve coule à travers Bagdad, capitale de l'Irak ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Tigre",
    incorrect_answers: ["L'Euphrate", "Le Jourdain", "L'Indus"],
    contexte: "Le Tigre et l'Euphrate sont les deux fleuves qui ont permis le développement de la civilisation mésopotamienne."
  },
  {
    content: "Quel est le plus grand désert de sable du monde ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le désert d'Arabie",
    incorrect_answers: ["Le Sahara", "Le désert de Gobi", "Le désert du Kalahari"],
    contexte: "Le désert d'Arabie est le plus grand désert de sable au monde, occupant une grande partie de la péninsule arabique."
  },
  {
    content: "Quel fleuve est sacré dans l'hindouisme et coule en Inde et au Bangladesh ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Gange",
    incorrect_answers: ["Le Brahmapoutre", "Le Mékong", "L'Indus"],
    contexte: "Le Gange est le fleuve le plus important de l'Inde, un symbole de pureté et un lieu de pèlerinage."
  },
  {
    content: "Quel est le plus grand glacier d'Asie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le glacier Fedchenko",
    incorrect_answers: ["Le glacier de la Mer de Ross", "Le glacier d'Hubbard", "Le glacier de Perito Moreno"],
    contexte: "Le glacier Fedchenko, au Tadjikistan, est le plus long glacier d'Asie et le plus grand du monde en dehors des régions polaires."
  },
  {
    content: "Quelle mer est bordée par la Sibérie et l'Alaska ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "La mer de Béring",
    incorrect_answers: ["La mer de Chine", "La mer du Japon", "La mer de Corail"],
    contexte: "La mer de Béring est une mer bordière de l'océan Pacifique. Elle sépare la Sibérie de l'Alaska."
  },
  {
    content: "Quel fleuve est la frontière naturelle entre la Russie et la Chine ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "L'Amour",
    incorrect_answers: ["Le Léna", "Le Ienisseï", "L'Ob"],
    contexte: "Le fleuve Amour est une importante voie de transport et une frontière naturelle majeure entre ces deux pays."
  },
  {
    content: "Quel est le plus grand lac d'Asie du Sud-Est ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Tonlé Sap",
    incorrect_answers: ["Le lac Inle", "Le lac Toba", "Le lac Songkhla"],
    contexte: "Le Tonlé Sap, au Cambodge, est le plus grand lac d'eau douce d'Asie du Sud-Est et un écosystème unique."
  },
  {
    content: "Quelle est la plus grande île d'Asie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Bornéo",
    incorrect_answers: ["Sumatra", "Célèbes", "Java"],
    contexte: "Bornéo est la plus grande île d'Asie et la troisième plus grande du monde. Elle est partagée par trois pays."
  },

  # Asie - Intermédiaire (61-75)
  {
    content: "Quel est le nom de la péninsule qui abrite l'Inde, le Pakistan et le Bangladesh ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le sous-continent indien",
    incorrect_answers: ["La péninsule indochinoise", "La péninsule arabique", "La péninsule de Malacca"],
    contexte: "Le sous-continent indien est une grande masse terrestre qui fait partie du continent asiatique."
  },
  {
    content: "Quel est le plus grand delta d'Asie ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le delta du Gange-Brahmapoutre",
    incorrect_answers: ["Le delta du Mékong", "Le delta du Yangtsé", "Le delta de l'Indus"],
    contexte: "Le delta du Gange-Brahmapoutre est le plus grand du monde, s'étendant sur le Bangladesh et l'Inde."
  },
  {
    content: "Quel est le plus grand lac d'eau douce du monde en volume, situé en Sibérie ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le lac Baïkal",
    incorrect_answers: ["Le lac Supérieur", "Le lac Victoria", "Le lac Tanganyika"],
    contexte: "Le lac Baïkal est non seulement le plus grand en volume, mais aussi le plus profond et le plus ancien du monde."
  },
  {
    content: "Quel est le plus haut sommet du sud-est asiatique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Hkakabo Razi",
    incorrect_answers: ["Le Puncak Jaya", "Le Mont Kinabalu", "Le Mont Kerinci"],
    contexte: "Le Hkakabo Razi, en Birmanie, est le point culminant du sud-est asiatique."
  },
  {
    content: "Quel est le plus grand lac d'Asie du Sud-Est ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Tonlé Sap",
    incorrect_answers: ["Le lac Inle", "Le lac Toba", "Le lac Songkhla"],
    contexte: "Le Tonlé Sap, au Cambodge, est le plus grand lac d'eau douce d'Asie du Sud-Est et un écosystème unique."
  },
  {
    content: "Quel est le plus grand fleuve de l'Inde ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Gange",
    incorrect_answers: ["Le Brahmapoutre", "Le Mékong", "L'Indus"],
    contexte: "Le Gange est le plus long fleuve de l'Inde, un symbole national et un lieu de culte."
  },
  {
    content: "Quel est le plus grand plateau du monde, souvent surnommé le 'toit du monde' ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le plateau tibétain",
    incorrect_answers: ["Le plateau du Dekkan", "Le plateau d'Anatolie", "Le plateau du Colorado"],
    contexte: "Le plateau tibétain, en Asie centrale, est le plus grand et le plus haut plateau du monde."
  },
  {
    content: "Quel est le plus grand désert de sel du Moyen-Orient ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Salar d'Uyuni",
    incorrect_answers: ["Le Dasht-e Kavir", "Le désert de l'Atacama", "Le Rub' al Khali"],
    contexte: "Le Salar d'Uyuni est un désert de sel en Bolivie. Le Dasht-e Kavir, en Iran, est le plus grand du Moyen-Orient."
  },
  {
    content: "Quel fleuve coule à travers la Sibérie et se jette dans l'océan Arctique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Léna",
    incorrect_answers: ["L'Amour", "Le Ienisseï", "L'Ob"],
    contexte: "Le Léna est le plus oriental des trois grands fleuves sibériens et le onzième plus long du monde."
  },
  {
    content: "Quel est le plus grand lac salé du monde, situé en Asie centrale ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "La mer Caspienne",
    incorrect_answers: ["La mer Morte", "Le Grand Lac Salé", "Le lac d'Aral"],
    contexte: "La mer Caspienne est le plus grand lac du monde. Ses eaux sont salées car elle n'a pas d'exutoire."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes la plus haute d'Asie ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "L'Himalaya",
    incorrect_answers: ["Les Andes", "Le Caucase", "L'Oural"],
    contexte: "L'Himalaya est une chaîne de montagnes qui abrite les plus hauts sommets du monde."
  },
  {
    content: "Quel est le plus grand désert de sable du monde ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le désert d'Arabie",
    incorrect_answers: ["Le Sahara", "Le désert de Gobi", "Le désert du Kalahari"],
    contexte: "Le désert d'Arabie est le plus grand désert de sable au monde, occupant une grande partie de la péninsule arabique."
  },
  {
    content: "Quel fleuve est sacré dans l'hindouisme et coule en Inde et au Bangladesh ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Gange",
    incorrect_answers: ["Le Brahmapoutre", "Le Mékong", "L'Indus"],
    contexte: "Le Gange est le fleuve le plus important de l'Inde, un symbole de pureté et un lieu de pèlerinage."
  },
  {
    content: "Quel est le plus grand glacier d'Asie ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le glacier Fedchenko",
    incorrect_answers: ["Le glacier de la Mer de Ross", "Le glacier d'Hubbard", "Le glacier de Perito Moreno"],
    contexte: "Le glacier Fedchenko, au Tadjikistan, est le plus long glacier d'Asie et le plus grand du monde en dehors des régions polaires."
  },
  {
    content: "Quelle mer est bordée par la Sibérie et l'Alaska ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "La mer de Béring",
    incorrect_answers: ["La mer de Chine", "La mer du Japon", "La mer de Corail"],
    contexte: "La mer de Béring est une mer bordière de l'océan Pacifique. Elle sépare la Sibérie de l'Alaska."
  },

  # Asie - Difficile (76-90)
  {
    content: "Quel est le nom de la fosse océanique la plus profonde du Pacifique oriental ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "La fosse des Kouriles",
    incorrect_answers: ["La fosse des Mariannes", "La fosse des Philippines", "La fosse du Japon"],
    contexte: "La fosse des Kouriles se situe au large de la péninsule du Kamtchatka et de l'archipel des Kouriles."
  },
  {
    content: "Quel fleuve prend sa source sur le plateau tibétain et traverse le Laos, le Cambodge et le Vietnam ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Mékong",
    incorrect_answers: ["Le Yangtsé", "Le Gange", "Le Fleuve Jaune"],
    contexte: "Le Mékong est un fleuve majeur d'Asie du Sud-Est, essentiel pour l'agriculture et la biodiversité."
  },
  {
    content: "Quel est le plus haut sommet du sud-est asiatique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Hkakabo Razi",
    incorrect_answers: ["Le Puncak Jaya", "Le Mont Kinabalu", "Le Mont Kerinci"],
    contexte: "Le Hkakabo Razi, en Birmanie, est le point culminant du sud-est asiatique."
  },
  {
    content: "Quel est le nom du plus grand lac artificiel d'Asie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le lac de l'Amour",
    incorrect_answers: ["Le lac de Vayk", "Le lac Khanka", "Le lac de la mer Caspienne"],
    contexte: "Le lac de l'Amour est le plus grand lac artificiel d'Asie, créé pour le barrage de la Three Gorges."
  },
  {
    content: "Quelle est la plus grande île d'Asie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Bornéo",
    incorrect_answers: ["Sumatra", "Célèbes", "Java"],
    contexte: "Bornéo est la plus grande île d'Asie et la troisième plus grande du monde. Elle est partagée par trois pays."
  },
  {
    content: "Quel est le nom du détroit qui sépare la Sibérie de l'Alaska ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le détroit de Béring",
    incorrect_answers: ["Le détroit de Malacca", "Le détroit de Tiran", "Le détroit de Magellan"],
    contexte: "Le détroit de Béring est une voie maritime stratégique qui sépare la Russie et les États-Unis."
  },
  {
    content: "Quel fleuve coule en Chine et se jette dans la mer de Chine méridionale ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Xi Jiang",
    incorrect_answers: ["Le Yangtsé", "Le Fleuve Jaune", "Le Mékong"],
    contexte: "Le Xi Jiang est un des fleuves les plus importants du sud de la Chine, connu pour son delta."
  },
  {
    content: "Quel est le nom du plus grand désert de roche d'Asie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Gobi",
    incorrect_answers: ["Le désert d'Arabie", "Le désert du Taklamakan", "Le désert de l'Atacama"],
    contexte: "Le Gobi est le plus grand désert de roche au monde et le plus grand désert d'Asie."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes la plus haute d'Asie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "L'Himalaya",
    incorrect_answers: ["Les Andes", "Le Caucase", "L'Oural"],
    contexte: "L'Himalaya est une chaîne de montagnes qui abrite les plus hauts sommets du monde."
  },
  {
    content: "Quel fleuve est la frontière naturelle entre la Russie et la Chine ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "L'Amour",
    incorrect_answers: ["Le Léna", "Le Ienisseï", "L'Ob"],
    contexte: "Le fleuve Amour est une importante voie de transport et une frontière naturelle majeure entre ces deux pays."
  },
  {
    content: "Quel est le nom du plus grand glacier d'Asie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le glacier Fedchenko",
    incorrect_answers: ["Le glacier de la Mer de Ross", "Le glacier d'Hubbard", "Le glacier de Perito Moreno"],
    contexte: "Le glacier Fedchenko, au Tadjikistan, est le plus long glacier d'Asie et le plus grand du monde en dehors des régions polaires."
  },
  {
    content: "Quelle mer est bordée par la Sibérie et l'Alaska ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "La mer de Béring",
    incorrect_answers: ["La mer de Chine", "La mer du Japon", "La mer de Corail"],
    contexte: "La mer de Béring est une mer bordière de l'océan Pacifique. Elle sépare la Sibérie de l'Alaska."
  },
  {
    content: "Quel fleuve traverse la Chine et se jette dans la mer de Chine méridionale ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Xi Jiang",
    incorrect_answers: ["Le Yangtsé", "Le Fleuve Jaune", "Le Mékong"],
    contexte: "Le Xi Jiang est un des fleuves les plus importants du sud de la Chine, connu pour son delta."
  },
  {
    content: "Quel est le plus grand désert de roche d'Asie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "Le Gobi",
    incorrect_answers: ["Le désert d'Arabie", "Le désert du Taklamakan", "Le désert de l'Atacama"],
    contexte: "Le Gobi est le plus grand désert de roche au monde et le plus grand désert d'Asie."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes la plus haute d'Asie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Asie",
    correct_answer: "L'Himalaya",
    incorrect_answers: ["Les Andes", "Le Caucase", "L'Oural"],
    contexte: "L'Himalaya est une chaîne de montagnes qui abrite les plus hauts sommets du monde."
  },

  # Océanie - Facile (91-105)
  {
    content: "Quel est le plus grand récif corallien du monde ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "La Grande Barrière de Corail",
    incorrect_answers: ["Le récif de la Mer Rouge", "Le récif de Belize", "Le récif de l'Indonésie"],
    contexte: "La Grande Barrière de Corail, au large de l'Australie, est le plus grand écosystème de récifs coralliens au monde."
  },
  {
    content: "Dans quel océan se trouve la Fosse des Mariannes ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "L'océan Pacifique",
    incorrect_answers: ["L'océan Atlantique", "L'océan Indien", "L'océan Arctique"],
    contexte: "La Fosse des Mariannes, le point le plus profond des océans, est située dans l'ouest de l'océan Pacifique."
  },
  {
    content: "Quel est le plus grand désert d'Australie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Grand désert de Victoria",
    incorrect_answers: ["Le désert de Gibson", "Le désert de Simpson", "Le désert de Gobi"],
    contexte: "Le Grand désert de Victoria est le plus vaste désert d'Australie, couvrant une superficie de 348 750 km²."
  },
  {
    content: "Quelle mer entoure la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "La mer de Tasman",
    incorrect_answers: ["La mer de Corail", "La mer d'Arafura", "La mer de Java"],
    contexte: "La mer de Tasman sépare l'Australie de la Nouvelle-Zélande et fait partie de l'océan Pacifique."
  },
  {
    content: "Quel est le plus haut sommet de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Mont Cook",
    incorrect_answers: ["Le Mont Aspiring", "Le Mont Ruapehu", "Le Mont Taranaki"],
    contexte: "Le Mont Cook est le point culminant de la Nouvelle-Zélande, situé dans les Alpes du Sud."
  },
  {
    content: "Quel est le plus grand fleuve d'Australie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Murray",
    incorrect_answers: ["Le Darling", "Le Lachlan", "Le Murrumbidgee"],
    contexte: "Le Murray est le plus long fleuve d'Australie. Il est une source d'eau vitale pour l'agriculture."
  },
  {
    content: "Quel est le plus grand lac d'Australie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le lac Eyre",
    incorrect_answers: ["Le lac Taupo", "Le lac Waikaremoana", "Le lac Te Anau"],
    contexte: "Le lac Eyre, un lac salé, est le plus grand d'Australie. Il est généralement asséché."
  },
  {
    content: "Quel est le plus grand volcan actif d'Hawaï ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Mauna Loa",
    incorrect_answers: ["Le Kīlauea", "Le Mauna Kea", "Le Hualālai"],
    contexte: "Le Mauna Loa est le plus grand volcan actif au monde en volume et en superficie."
  },
  {
    content: "Quel fleuve coule à travers la ville de Sydney ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le fleuve Parramatta",
    incorrect_answers: ["Le fleuve Darling", "Le fleuve Murray", "Le fleuve Brisbane"],
    contexte: "Le fleuve Parramatta est un fleuve côtier de l'est de l'Australie, se jetant dans le port de Sydney."
  },
  {
    content: "Quel est le nom du détroit qui sépare la Tasmanie de l'Australie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le détroit de Bass",
    incorrect_answers: ["Le détroit de Cook", "Le détroit de Torres", "Le détroit de Malacca"],
    contexte: "Le détroit de Bass relie l'océan Indien à l'océan Pacifique entre l'Australie et la Tasmanie."
  },
  {
    content: "Quel est le nom du plus grand désert de sable de Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Il n'y a pas de désert de sable en Nouvelle-Zélande",
    incorrect_answers: ["Le désert de Waitaki", "Le désert de Wanganui", "Le désert de Taranaki"],
    contexte: "La Nouvelle-Zélande a des paysages variés, mais il n'y a pas de désert de sable."
  },
  {
    content: "Quel est le nom du plus grand lac de Nouvelle-Guinée ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le lac Sentani",
    incorrect_answers: ["Le lac Kutubu", "Le lac Murray", "Le lac Bosset"],
    contexte: "Le lac Sentani est un lac d'eau douce de la Nouvelle-Guinée, célèbre pour son écosystème unique."
  },
  {
    content: "Quel est le nom de la fosse océanique la plus profonde du Pacifique oriental ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "La fosse du Pérou-Chili",
    incorrect_answers: ["La fosse des Mariannes", "La fosse des Tonga", "La fosse d'Atacama"],
    contexte: "La fosse du Pérou-Chili est une fosse océanique profonde de l'océan Pacifique oriental."
  },
  {
    content: "Quel est le nom du volcan le plus actif d'Australie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Il n'y a pas de volcan actif en Australie continentale",
    incorrect_answers: ["Le Mont Warning", "Le Mont Gambier", "Le Mont Macedon"],
    contexte: "L'Australie continentale n'a pas de volcans actifs, mais l'Australie possède des volcans actifs sur ses territoires éloignés."
  },
  {
    content: "Quel est le nom du plus grand glacier de Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le glacier Tasman",
    incorrect_answers: ["Le glacier Fox", "Le glacier Franz Josef", "Le glacier Murchison"],
    contexte: "Le glacier Tasman est le plus grand glacier de Nouvelle-Zélande. Il est situé dans le parc national d'Aoraki."
  },

  # Océanie - Intermédiaire (106-120)
  {
    content: "Quel est le plus haut sommet de l'Océanie ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Puncak Jaya",
    incorrect_answers: ["Le Mont Cook", "Le Mont Kosciuszko", "Le Mont Wilhelm"],
    contexte: "Le Puncak Jaya, en Indonésie (Nouvelle-Guinée), est le plus haut sommet de l'Océanie."
  },
  {
    content: "Quel est le plus grand fleuve de Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Waikato",
    incorrect_answers: ["Le Clutha", "Le Wanganui", "Le Waitaki"],
    contexte: "Le Waikato est le plus long fleuve de la Nouvelle-Zélande, long de 425 km."
  },
  {
    content: "Quelle est la plus grande île volcanique du Pacifique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Hawaï",
    incorrect_answers: ["Tahiti", "Fidji", "Samoa"],
    contexte: "Hawaï, également connue sous le nom de Grande Île, est la plus grande île volcanique de l'océan Pacifique."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes qui s'étend sur une grande partie de l'Australie de l'Est ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "La Cordillère australienne",
    incorrect_answers: ["Les Alpes australiennes", "Les Monts MacDonnell", "Les Monts Flinders"],
    contexte: "La Cordillère australienne, également appelée Great Dividing Range, est la plus grande chaîne de montagnes d'Australie."
  },
  {
    content: "Quel est le nom du détroit qui sépare les deux îles principales de la Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le détroit de Cook",
    incorrect_answers: ["Le détroit de Bass", "Le détroit de Torres", "Le détroit de Foveaux"],
    contexte: "Le détroit de Cook est un détroit maritime qui sépare l'île du Nord et l'île du Sud de la Nouvelle-Zélande."
  },
  {
    content: "Quel est le plus grand lac d'eau douce de Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le lac Taupo",
    incorrect_answers: ["Le lac Wanaka", "Le lac Wakatipu", "Le lac Te Anau"],
    contexte: "Le lac Taupo est le plus grand lac de Nouvelle-Zélande par sa superficie. C'est un lac volcanique."
  },
  {
    content: "Quel est le nom du point culminant de l'Australie continentale ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Mont Kosciuszko",
    incorrect_answers: ["Le Mont Ossa", "Le Mont Bogong", "Le Mont Zeil"],
    contexte: "Le Mont Kosciuszko, dans les Alpes australiennes, est le point culminant de l'Australie continentale."
  },
  {
    content: "Quel est le nom du plus grand lac de Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le lac Sentani",
    incorrect_answers: ["Le lac Kutubu", "Le lac Murray", "Le lac Bosset"],
    contexte: "Le lac Sentani est un lac d'eau douce de la Nouvelle-Guinée, célèbre pour son écosystème unique."
  },
  {
    content: "Quel est le nom de la fosse océanique la plus profonde du Pacifique oriental ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "La fosse du Pérou-Chili",
    incorrect_answers: ["La fosse des Mariannes", "La fosse des Tonga", "La fosse d'Atacama"],
    contexte: "La fosse du Pérou-Chili est une fosse océanique profonde de l'océan Pacifique oriental."
  },
  {
    content: "Quel est le nom du volcan le plus actif d'Australie ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Il n'y a pas de volcan actif en Australie continentale",
    incorrect_answers: ["Le Mont Warning", "Le Mont Gambier", "Le Mont Macedon"],
    contexte: "L'Australie continentale n'a pas de volcans actifs, mais l'Australie possède des volcans actifs sur ses territoires éloignés."
  },
  {
    content: "Quel est le nom du plus grand glacier de Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le glacier Tasman",
    incorrect_answers: ["Le glacier Fox", "Le glacier Franz Josef", "Le glacier Murchison"],
    contexte: "Le glacier Tasman est le plus grand glacier de Nouvelle-Zélande. Il est situé dans le parc national d'Aoraki."
  },
  {
    content: "Quelle est la plus grande île de l'océan Pacifique, hors Australie ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "La Nouvelle-Guinée",
    incorrect_answers: ["Bornéo", "Le Groenland", "L'Indonésie"],
    contexte: "La Nouvelle-Guinée est la plus grande île d'Océanie, et la deuxième plus grande du monde."
  },
  {
    content: "Quel est le nom du point culminant de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Mont Wilhelm",
    incorrect_answers: ["Le Puncak Jaya", "Le Mont Carstensz", "Le Mont Bangeta"],
    contexte: "Le Mont Wilhelm est le plus haut sommet de la Papouasie-Nouvelle-Guinée et de l'Océanie."
  },
  {
    content: "Quel est le nom du fleuve le plus long de Papouasie-Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le fleuve Sépik",
    incorrect_answers: ["Le fleuve Fly", "Le fleuve Purari", "Le fleuve Ramu"],
    contexte: "Le fleuve Sépik est le plus long fleuve de Papouasie-Nouvelle-Guinée, coulant sur 1 126 km."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes qui traverse la Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Les Cordillères de la Nouvelle-Guinée",
    incorrect_answers: ["Les Alpes du Sud", "La Cordillère australienne", "Les Andes"],
    contexte: "Les Cordillères de la Nouvelle-Guinée forment la chaîne de montagnes la plus importante de l'île."
  },

  # Océanie - Difficile (121-135)
  {
    content: "Quel est le nom du plus grand lac d'eau douce en volume en Nouvelle-Zélande ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le lac Te Anau",
    incorrect_answers: ["Le lac Wakatipu", "Le lac Manapouri", "Le lac Hāwea"],
    contexte: "Le lac Te Anau, avec ses 344 km², est le deuxième plus grand lac de Nouvelle-Zélande et le plus grand par son volume."
  },
  {
    content: "Quelle chaîne de montagnes s'étend sur une grande partie de la Nouvelle-Zélande ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Les Alpes du Sud",
    incorrect_answers: ["La Cordillère australienne", "Les Monts MacDonnell", "Les Monts Flinders"],
    contexte: "Les Alpes du Sud forment la chaîne de montagnes la plus importante de Nouvelle-Zélande, s'étendant sur l'île du Sud."
  },
  {
    content: "Quel est le nom du plus grand volcan actif d'Australie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Il n'y a pas de volcan actif en Australie continentale",
    incorrect_answers: ["Le Mont Warning", "Le Mont Gambier", "Le Mont Macedon"],
    contexte: "L'Australie continentale n'a pas de volcans actifs, mais l'Australie possède des volcans actifs sur ses territoires éloignés."
  },
  {
    content: "Quel est le nom du plus grand glacier de Nouvelle-Zélande ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le glacier Tasman",
    incorrect_answers: ["Le glacier Fox", "Le glacier Franz Josef", "Le glacier Murchison"],
    contexte: "Le glacier Tasman est le plus grand glacier de Nouvelle-Zélande. Il est situé dans le parc national d'Aoraki."
  },
  {
    content: "Quel est le nom de la mer qui sépare l'Australie de la Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "La mer d'Arafura",
    incorrect_answers: ["La mer de Corail", "La mer de Tasman", "La mer de Java"],
    contexte: "La mer d'Arafura, peu profonde, relie l'océan Pacifique à l'océan Indien entre l'Australie et la Nouvelle-Guinée."
  },
  {
    content: "Quel est le nom du point culminant de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Mont Wilhelm",
    incorrect_answers: ["Le Puncak Jaya", "Le Mont Carstensz", "Le Mont Bangeta"],
    contexte: "Le Mont Wilhelm est le plus haut sommet de la Papouasie-Nouvelle-Guinée et de l'Océanie."
  },
  {
    content: "Quel est le nom du fleuve le plus long de Papouasie-Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le fleuve Sépik",
    incorrect_answers: ["Le fleuve Fly", "Le fleuve Purari", "Le fleuve Ramu"],
    contexte: "Le fleuve Sépik est le plus long fleuve de Papouasie-Nouvelle-Guinée, coulant sur 1 126 km."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes qui traverse la Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Les Cordillères de la Nouvelle-Guinée",
    incorrect_answers: ["Les Alpes du Sud", "La Cordillère australienne", "Les Andes"],
    contexte: "Les Cordillères de la Nouvelle-Guinée forment la chaîne de montagnes la plus importante de l'île."
  },
  {
    content: "Quel est le nom du plus grand lac de Fidji ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le lac Nambou",
    incorrect_answers: ["Le lac Taveuni", "Le lac Koro", "Le lac Viti"],
    contexte: "Le lac Nambou est un lac d'eau douce de l'île de Viti Levu. C'est le plus grand de Fidji."
  },
  {
    content: "Quelle est la plus grande île de l'océan Pacifique, hors Australie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "La Nouvelle-Guinée",
    incorrect_answers: ["Bornéo", "Le Groenland", "L'Indonésie"],
    contexte: "La Nouvelle-Guinée est la plus grande île d'Océanie, et la deuxième plus grande du monde."
  },
  {
    content: "Quel est le nom du volcan le plus actif d'Hawaï ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le Mauna Loa",
    incorrect_answers: ["Le Kīlauea", "Le Mauna Kea", "Le Hualālai"],
    contexte: "Le Mauna Loa est le plus grand volcan actif au monde en volume et en superficie."
  },
  {
    content: "Quel est le nom du détroit qui sépare la Tasmanie de l'Australie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le détroit de Bass",
    incorrect_answers: ["Le détroit de Cook", "Le détroit de Torres", "Le détroit de Malacca"],
    contexte: "Le détroit de Bass relie l'océan Indien à l'océan Pacifique entre l'Australie et la Tasmanie."
  },
  {
    content: "Quel est le nom du plus grand désert de sable de Nouvelle-Zélande ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Il n'y a pas de désert de sable en Nouvelle-Zélande",
    incorrect_answers: ["Le désert de Waitaki", "Le désert de Wanganui", "Le désert de Taranaki"],
    contexte: "La Nouvelle-Zélande a des paysages variés, mais il n'y a pas de désert de sable."
  },
  {
    content: "Quel est le nom du plus grand lac de Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "Le lac Sentani",
    incorrect_answers: ["Le lac Kutubu", "Le lac Murray", "Le lac Bosset"],
    contexte: "Le lac Sentani est un lac d'eau douce de la Nouvelle-Guinée, célèbre pour son écosystème unique."
  },
  {
    content: "Quel est le nom de la fosse océanique la plus profonde du Pacifique oriental ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Océanie",
    correct_answer: "La fosse du Pérou-Chili",
    incorrect_answers: ["La fosse des Mariannes", "La fosse des Tonga", "La fosse d'Atacama"],
    contexte: "La fosse du Pérou-Chili est une fosse océanique profonde de l'océan Pacifique oriental."
  },

  # Amérique - Facile (136-150)
  {
    content: "Quel est le plus long fleuve d'Amérique du Sud ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "L'Amazone",
    incorrect_answers: ["Le Nil", "Le Mississippi", "Le Parana"],
    contexte: "L'Amazone est le plus long fleuve du monde en volume et se dispute le titre du plus long fleuve du monde avec le Nil."
  },
  {
    content: "Quel est le plus haut sommet d'Amérique du Nord ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Denali",
    incorrect_answers: ["Le Mont Logan", "Le Mont Whitney", "Le Mont Rainier"],
    contexte: "Le Denali, anciennement Mont McKinley, est le plus haut sommet d'Amérique du Nord, situé en Alaska."
  },
  {
    content: "Quel est le plus grand lac d'eau douce du monde en superficie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le lac Supérieur",
    incorrect_answers: ["Le lac Baïkal", "Le lac Victoria", "Le lac Michigan"],
    contexte: "Le lac Supérieur est l'un des Grands Lacs d'Amérique du Nord. Il est le plus grand lac d'eau douce du monde."
  },
  {
    content: "Quel fleuve forme une grande partie de la frontière entre les États-Unis et le Mexique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Rio Grande",
    incorrect_answers: ["Le Colorado", "Le Mississippi", "Le Rio Parana"],
    contexte: "Le Rio Grande est un fleuve d'Amérique du Nord qui forme une grande partie de la frontière entre les États-Unis et le Mexique."
  },
  {
    content: "Quelle est la plus grande forêt tropicale du monde ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "La forêt amazonienne",
    incorrect_answers: ["La forêt du Congo", "La forêt de Bornéo", "La forêt de la Nouvelle-Guinée"],
    contexte: "La forêt amazonienne, en Amérique du Sud, est la plus grande forêt tropicale du monde et un poumon de la planète."
  },
  {
    content: "Quel est le plus grand canyon des États-Unis ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Grand Canyon du Colorado",
    incorrect_answers: ["Le Canyon de Chelly", "Le Canyon du Saguaro", "Le Canyon de la rivière Salmon"],
    contexte: "Le Grand Canyon, creusé par la rivière Colorado, est une merveille naturelle des États-Unis."
  },
  {
    content: "Quelle chaîne de montagnes s'étend sur une grande partie de l'ouest de l'Amérique du Nord ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Les Rocheuses",
    incorrect_answers: ["Les Appalaches", "Les Andes", "La Sierra Nevada"],
    contexte: "Les Rocheuses s'étendent du Canada au Nouveau-Mexique, formant une barrière montagneuse imposante."
  },
  {
    content: "Quelle est la plus grande île du monde ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Groenland",
    incorrect_answers: ["L'Australie", "La Nouvelle-Guinée", "Bornéo"],
    contexte: "Le Groenland, un territoire danois, est la plus grande île du monde. Il est situé entre l'Amérique du Nord et l'Europe."
  },
  {
    content: "Quel est le plus haut volcan du monde ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "L'Ojos del Salado",
    incorrect_answers: ["Le Kilimandjaro", "Le Mont Aconcagua", "Le Mont Fuji"],
    contexte: "L'Ojos del Salado, en Argentine et au Chili, est le plus haut volcan actif du monde."
  },
  {
    content: "Quelle est la plus longue chaîne de montagnes du monde ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "La Cordillère des Andes",
    incorrect_answers: ["L'Himalaya", "Les Rocheuses", "Les Alpes"],
    contexte: "La Cordillère des Andes, en Amérique du Sud, est la plus longue chaîne de montagnes du monde."
  },
  {
    content: "Quel est le plus grand glacier d'Amérique du Nord ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le glacier Hubbard",
    incorrect_answers: ["Le glacier Malaspina", "Le glacier Columbia", "Le glacier Athabasca"],
    contexte: "Le glacier Hubbard, en Alaska et au Canada, est le plus grand glacier de marée d'Amérique du Nord."
  },
  {
    content: "Quel fleuve coule à travers la ville de New York ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le fleuve Hudson",
    incorrect_answers: ["Le fleuve Delaware", "Le fleuve East", "Le fleuve Harlem"],
    contexte: "Le fleuve Hudson sépare les États de New York et du New Jersey. Il coule vers l'océan Atlantique."
  },
  {
    content: "Quel est le plus grand désert de glace du monde ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "L'Antarctique",
    incorrect_answers: ["L'Arctique", "Le Groenland", "La Sibérie"],
    contexte: "L'Antarctique est un continent couvert de glace, abritant le plus grand désert de glace au monde."
  },
  {
    content: "Quel est le plus grand lac d'eau douce du monde en superficie ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le lac Supérieur",
    incorrect_answers: ["Le lac Baïkal", "Le lac Victoria", "Le lac Michigan"],
    contexte: "Le lac Supérieur est l'un des Grands Lacs d'Amérique du Nord. Il est le plus grand lac d'eau douce du monde."
  },
  {
    content: "Quel fleuve est la frontière naturelle entre la Colombie et le Panama ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le fleuve Atrato",
    incorrect_answers: ["Le fleuve San Juan", "Le fleuve Chucunaque", "Le fleuve Tuira"],
    contexte: "Le fleuve Atrato, en Colombie, coule vers le golfe de l'Urabá et forme la frontière entre les deux pays."
  },

  # Amérique - Intermédiaire (151-165)
  {
    content: "Quel est le plus grand lac d'Amérique du Sud ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le lac Titicaca",
    incorrect_answers: ["Le lac Maracaibo", "Le lac de Poopó", "Le lac de Buenos Aires"],
    contexte: "Le lac Titicaca est le plus grand lac d'Amérique du Sud par sa superficie et le plus haut lac navigable du monde."
  },
  {
    content: "Quel est le plus grand fleuve d'Amérique du Nord ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Mississippi-Missouri",
    incorrect_answers: ["Le Mackenzie", "Le Colorado", "Le Saint-Laurent"],
    contexte: "Le système fluvial Mississippi-Missouri est le plus long d'Amérique du Nord, drainant une grande partie du continent."
  },
  {
    content: "Quel est le plus haut sommet des États-Unis (hors Alaska) ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Mont Whitney",
    incorrect_answers: ["Le Mont Elbert", "Le Mont Rainier", "Le Mont Hood"],
    contexte: "Le Mont Whitney est le point culminant des États-Unis continentaux, situé en Californie."
  },
  {
    content: "Quel est le plus grand lac d'Amérique centrale ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le lac Nicaragua",
    incorrect_answers: ["Le lac de Petén Itzá", "Le lac d'Ilopango", "Le lac Atitlán"],
    contexte: "Le lac Nicaragua, au Nicaragua, est le plus grand lac d'eau douce d'Amérique centrale."
  },
  {
    content: "Quel est le plus grand glacier d'Amérique du Sud ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le glacier Perito Moreno",
    incorrect_answers: ["Le glacier Vatnajökull", "Le glacier Hubbard", "Le glacier d'Aletsch"],
    contexte: "Le glacier Perito Moreno, en Argentine, est l'un des glaciers les plus célèbres d'Amérique du Sud."
  },
  {
    content: "Quel est le plus grand récif corallien des Caraïbes ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Récif de la Barrière du Belize",
    incorrect_answers: ["Le récif de Florida", "Le récif de Saba", "Le récif de Cozumel"],
    contexte: "Le Récif de la Barrière du Belize est le plus grand système de récifs coralliens de l'hémisphère nord."
  },
  {
    content: "Quel est le plus grand désert d'Amérique du Sud ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le désert de l'Atacama",
    incorrect_answers: ["Le désert de la Patagonie", "Le désert de Sechura", "Le désert de la Guajira"],
    contexte: "Le désert de l'Atacama, situé au Chili et au Pérou, est le désert non polaire le plus aride du monde."
  },
  {
    content: "Quel fleuve coule à travers la ville de New York ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le fleuve Hudson",
    incorrect_answers: ["Le fleuve Delaware", "Le fleuve East", "Le fleuve Harlem"],
    contexte: "Le fleuve Hudson sépare les États de New York et du New Jersey. Il coule vers l'océan Atlantique."
  },
  {
    content: "Quel est le plus haut sommet des Appalaches ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Mont Mitchell",
    incorrect_answers: ["Le Mont Washington", "Le Mont Katahdin", "Le Clingmans Dome"],
    contexte: "Le Mont Mitchell est le point culminant de la chaîne des Appalaches, situé en Caroline du Nord."
  },
  {
    content: "Quel est le plus grand désert de glace du monde ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "L'Antarctique",
    incorrect_answers: ["L'Arctique", "Le Groenland", "La Sibérie"],
    contexte: "L'Antarctique est un continent couvert de glace, abritant le plus grand désert de glace au monde."
  },
  {
    content: "Quel est le plus grand glacier d'Amérique du Nord ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le glacier Hubbard",
    incorrect_answers: ["Le glacier Malaspina", "Le glacier Columbia", "Le glacier Athabasca"],
    contexte: "Le glacier Hubbard, en Alaska et au Canada, est le plus grand glacier de marée d'Amérique du Nord."
  },
  {
    content: "Quel fleuve est la frontière naturelle entre la Colombie et le Panama ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le fleuve Atrato",
    incorrect_answers: ["Le fleuve San Juan", "Le fleuve Chucunaque", "Le fleuve Tuira"],
    contexte: "Le fleuve Atrato, en Colombie, coule vers le golfe de l'Urabá et forme la frontière entre les deux pays."
  },
  {
    content: "Quel est le nom du plus grand lac d'Amérique du Sud par son volume ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le lac Titicaca",
    incorrect_answers: ["Le lac Maracaibo", "Le lac Poopó", "Le lac de Buenos Aires"],
    contexte: "Le lac Titicaca, à la frontière du Pérou et de la Bolivie, est le plus grand lac d'eau douce d'Amérique du Sud."
  },
  {
    content: "Quel est le nom du détroit qui sépare la Patagonie de la Terre de Feu ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le détroit de Magellan",
    incorrect_answers: ["Le détroit de Béring", "Le détroit de Cook", "Le détroit de Torres"],
    contexte: "Le détroit de Magellan est une voie de navigation naturelle qui traverse le sud de l'Amérique du Sud."
  },
  {
    content: "Quel est le plus grand fleuve d'Amérique du Nord ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Mississippi-Missouri",
    incorrect_answers: ["Le Mackenzie", "Le Colorado", "Le Saint-Laurent"],
    contexte: "Le système fluvial Mississippi-Missouri est le plus long d'Amérique du Nord, drainant une grande partie du continent."
  },

  # Amérique - Difficile (166-180)
  {
    content: "Quel est le nom de la péninsule de sable la plus longue du monde, située au Mexique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "La péninsule de Baja California",
    incorrect_answers: ["La péninsule du Yucatan", "La péninsule de Baja Verapaz", "La péninsule du Cap Vert"],
    contexte: "La péninsule de Baja California, au Mexique, est la plus longue péninsule de sable du monde."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes la plus longue du monde ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "La Cordillère des Andes",
    incorrect_answers: ["L'Himalaya", "Les Rocheuses", "Les Alpes"],
    contexte: "La Cordillère des Andes est la chaîne de montagnes la plus longue du monde, s'étendant sur 7 000 km."
  },
  {
    content: "Quel est le nom du plus grand lac d'eau douce d'Amérique du Nord ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le lac Supérieur",
    incorrect_answers: ["Le lac Huron", "Le lac Michigan", "Le lac des Grands Esclaves"],
    contexte: "Le lac Supérieur est le plus grand lac d'eau douce du monde par sa superficie."
  },
  {
    content: "Quel fleuve coule à travers la ville de Chicago et se jette dans le lac Michigan ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "La rivière Chicago",
    incorrect_answers: ["La rivière Fox", "La rivière Des Plaines", "La rivière Calumet"],
    contexte: "La rivière Chicago est une rivière qui coule à travers le centre-ville de Chicago et se jette dans le lac Michigan."
  },
  {
    content: "Quel est le nom du plus grand glacier du Canada ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le glacier Malaspina",
    incorrect_answers: ["Le glacier Columbia", "Le glacier Athabasca", "Le glacier Hubbard"],
    contexte: "Le glacier Malaspina est un grand glacier de marée situé en Alaska, aux États-Unis et dans le territoire du Yukon."
  },
  {
    content: "Quel est le nom du volcan le plus actif d'Amérique du Nord ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Popocatépetl",
    incorrect_answers: ["Le Mont Saint Helens", "Le Mont Rainier", "Le Mont Shasta"],
    contexte: "Le Popocatépetl, au Mexique, est le volcan le plus actif d'Amérique du Nord. Il est en activité depuis 1994."
  },
  {
    content: "Quel fleuve est la frontière entre la Colombie et le Panama ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le fleuve Atrato",
    incorrect_answers: ["Le fleuve San Juan", "Le fleuve Chucunaque", "Le fleuve Tuira"],
    contexte: "Le fleuve Atrato, en Colombie, coule vers le golfe de l'Urabá et forme la frontière entre les deux pays."
  },
  {
    content: "Quel est le plus grand désert de sel des États-Unis ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Grand Lac Salé",
    incorrect_answers: ["Le désert de White Sands", "Le désert de l'Utah", "Le désert de la Mort"],
    contexte: "Le Grand Lac Salé, dans l'Utah, est le plus grand lac salé de l'hémisphère ouest."
  },
  {
    content: "Quel est le nom du plus grand lac d'Amérique du Sud par son volume ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le lac Titicaca",
    incorrect_answers: ["Le lac Maracaibo", "Le lac Poopó", "Le lac de Buenos Aires"],
    contexte: "Le lac Titicaca, à la frontière du Pérou et de la Bolivie, est le plus grand lac d'eau douce d'Amérique du Sud."
  },
  {
    content: "Quel est le nom du détroit qui sépare la Patagonie de la Terre de Feu ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le détroit de Magellan",
    incorrect_answers: ["Le détroit de Béring", "Le détroit de Cook", "Le détroit de Torres"],
    contexte: "Le détroit de Magellan est une voie de navigation naturelle qui traverse le sud de l'Amérique du Sud."
  },
  {
    content: "Quel est le plus grand glacier d'Amérique du Sud ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le glacier Perito Moreno",
    incorrect_answers: ["Le glacier Vatnajökull", "Le glacier Hubbard", "Le glacier d'Aletsch"],
    contexte: "Le glacier Perito Moreno, en Argentine, est l'un des glaciers les plus célèbres d'Amérique du Sud."
  },
  {
    content: "Quel est le plus grand lac d'Amérique du Nord ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le lac Supérieur",
    incorrect_answers: ["Le lac Huron", "Le lac Michigan", "Le lac des Grands Esclaves"],
    contexte: "Le lac Supérieur est le plus grand lac d'eau douce du monde par sa superficie."
  },
  {
    content: "Quel est le plus haut sommet des États-Unis (hors Alaska) ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Mont Whitney",
    incorrect_answers: ["Le Mont Elbert", "Le Mont Rainier", "Le Mont Hood"],
    contexte: "Le Mont Whitney est le point culminant des États-Unis continentaux, situé en Californie."
  },
  {
    content: "Quel est le plus grand canyon du monde ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Grand Canyon du Colorado",
    incorrect_answers: ["Le canyon de la rivière Yarlung Tsangpo", "Le canyon de Fish River", "Le canyon de l'Antilope"],
    contexte: "Le Grand Canyon, creusé par la rivière Colorado, est une merveille naturelle des États-Unis."
  },
  {
    content: "Quel est le plus haut sommet d'Amérique du Nord ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Amérique",
    correct_answer: "Le Denali",
    incorrect_answers: ["Le Mont Logan", "Le Mont Whitney", "Le Mont Rainier"],
    contexte: "Le Denali, anciennement Mont McKinley, est le plus haut sommet d'Amérique du Nord, situé en Alaska."
  },

  # Afrique - Facile (181-195)
  {
    content: "Quel est le plus long fleuve d'Afrique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Nil",
    incorrect_answers: ["Le Congo", "Le Niger", "Le Zambèze"],
    contexte: "Le Nil est le plus long fleuve d'Afrique et il est considéré comme le plus long du monde avec l'Amazone."
  },
  {
    content: "Quel est le plus haut sommet d'Afrique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Kilimandjaro",
    incorrect_answers: ["Le Mont Kenya", "Le Mont Toubkal", "Le Mont Stanley"],
    contexte: "Le Kilimandjaro est un volcan inactif de Tanzanie et le plus haut sommet du continent africain."
  },
  {
    content: "Quel est le plus grand désert chaud du monde ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Sahara",
    incorrect_answers: ["Le Gobi", "Le désert d'Arabie", "Le Kalahari"],
    contexte: "Le Sahara, situé en Afrique du Nord, est le plus grand désert chaud de la planète."
  },
  {
    content: "Quel est le plus grand lac d'Afrique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Victoria",
    incorrect_answers: ["Le lac Tanganyika", "Le lac Malawi", "Le lac Tchad"],
    contexte: "Le lac Victoria est le plus grand lac d'Afrique par sa superficie. Il est partagé par trois pays."
  },
  {
    content: "Quelle mer se trouve au nord du continent africain ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "La mer Méditerranée",
    incorrect_answers: ["La mer Rouge", "La mer d'Arabie", "La mer Noire"],
    contexte: "La mer Méditerranée sépare l'Afrique de l'Europe et est une voie de navigation importante."
  },
  {
    content: "Quelle est la plus grande île d'Afrique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Madagascar",
    incorrect_answers: ["La Réunion", "Maurice", "Les Seychelles"],
    contexte: "Madagascar est la plus grande île d'Afrique. Elle est située dans l'océan Indien."
  },
  {
    content: "Quel fleuve se jette dans la mer Méditerranée après avoir traversé l'Égypte ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Nil",
    incorrect_answers: ["Le Congo", "Le Niger", "Le Zambèze"],
    contexte: "Le Nil est le fleuve le plus important d'Égypte. Il traverse le Caire, la capitale."
  },
  {
    content: "Quel est le plus grand lac d'eau douce d'Afrique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Victoria",
    incorrect_answers: ["Le lac Tanganyika", "Le lac Malawi", "Le lac Tchad"],
    contexte: "Le lac Victoria est le plus grand lac d'Afrique et le deuxième plus grand lac d'eau douce au monde."
  },
  {
    content: "Quel est le plus grand désert de sable d'Afrique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Sahara",
    incorrect_answers: ["Le désert du Kalahari", "Le désert de Namib", "Le désert du Gobi"],
    contexte: "Le Sahara est le plus grand désert de sable et le plus grand désert chaud du monde."
  },
  {
    content: "Quel est le nom du détroit qui relie l'océan Atlantique à la mer Méditerranée ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le détroit de Gibraltar",
    incorrect_answers: ["Le détroit de Suez", "Le détroit du Bosphore", "Le détroit de Messine"],
    contexte: "Le détroit de Gibraltar sépare l'Afrique du Nord de l'Espagne."
  },
  {
    content: "Quelle chaîne de montagnes se trouve au nord-ouest de l'Afrique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "L'Atlas",
    incorrect_answers: ["Le Hoggar", "Le Fouta-Djalon", "Le Massif de l'Ahaggar"],
    contexte: "L'Atlas est la plus haute chaîne de montagnes d'Afrique du Nord. Elle s'étend sur le Maroc, l'Algérie et la Tunisie."
  },
  {
    content: "Quel est le plus grand lac artificiel d'Afrique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Volta",
    incorrect_answers: ["Le lac Kariba", "Le lac Nasser", "Le lac Inga"],
    contexte: "Le lac Volta est un immense lac artificiel au Ghana, créé par la construction du barrage d'Akosombo."
  },
  {
    content: "Quel est le nom du plus grand lac salé d'Afrique ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Turkana",
    incorrect_answers: ["Le lac Tchad", "Le lac Tanganyika", "Le lac Malawi"],
    contexte: "Le lac Turkana, au Kenya, est le plus grand lac salé d'Afrique et le quatrième plus grand lac de l'Afrique."
  },
  {
    content: "Quel est le nom du désert qui s'étend sur une grande partie de l'Afrique australe ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le désert du Kalahari",
    incorrect_answers: ["Le Sahara", "Le désert de Namib", "Le désert de la Libye"],
    contexte: "Le désert du Kalahari est un vaste désert de l'Afrique australe. Il est principalement composé de sable rouge."
  },
  {
    content: "Quel est le nom du détroit qui relie la mer Rouge à l'océan Indien ?",
    difficulty: "facile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le détroit de Bab-el-Mandeb",
    incorrect_answers: ["Le détroit de Gibraltar", "Le détroit de Suez", "Le détroit d'Hormuz"],
    contexte: "Le détroit de Bab-el-Mandeb, entre la péninsule arabique et la corne de l'Afrique, est une voie de navigation cruciale."
  },

  # Afrique - Intermédiaire (196-210)
  {
    content: "Quel fleuve traverse l'Afrique de l'Ouest et se jette dans le golfe de Guinée ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Niger",
    incorrect_answers: ["Le Nil", "Le Congo", "Le Zambèze"],
    contexte: "Le Niger est un fleuve majeur d'Afrique de l'Ouest, traversant le Mali et le Nigeria."
  },
  {
    content: "Quel fleuve traverse l'Éthiopie et se jette dans le Nil ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Nil Bleu",
    incorrect_answers: ["Le Nil Blanc", "Le fleuve Atbara", "Le fleuve Omo"],
    contexte: "Le Nil Bleu prend sa source dans le lac Tana, en Éthiopie, et contribue au débit du Nil."
  },
  {
    content: "Quel est le plus grand désert de roches volcaniques d'Afrique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Hoggar",
    incorrect_answers: ["Le Sahara", "Le désert du Kalahari", "Le désert de Namib"],
    contexte: "Le Hoggar, en Algérie, est un massif montagneux de roches volcaniques, au cœur du Sahara."
  },
  {
    content: "Quel est le plus grand lac artificiel du monde ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Volta",
    incorrect_answers: ["Le lac Mead", "Le lac Kariba", "Le lac Oahe"],
    contexte: "Le lac Volta est un immense lac artificiel au Ghana, créé par la construction du barrage d'Akosombo."
  },
  {
    content: "Quel fleuve est la frontière naturelle entre le Mozambique et l'Afrique du Sud ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le fleuve Limpopo",
    incorrect_answers: ["Le fleuve Zambèze", "Le fleuve Orange", "Le fleuve Incomati"],
    contexte: "Le fleuve Limpopo est une rivière qui coule à travers le Mozambique et l'Afrique du Sud."
  },
  {
    content: "Quelle est la plus haute chute d'eau d'Afrique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "La chute d'Aka-Faya",
    incorrect_answers: ["Les chutes Victoria", "Les chutes du Nil", "Les chutes du Zambèze"],
    contexte: "La chute d'Aka-Faya, au Congo, est la plus haute chute d'eau d'Afrique."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes la plus haute d'Afrique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Kilimandjaro",
    incorrect_answers: ["Le Mont Kenya", "Le Mont Toubkal", "Les Monts de l'Atlas"],
    contexte: "Le Kilimandjaro est un volcan inactif de Tanzanie et le plus haut sommet du continent africain."
  },
  {
    content: "Quel fleuve traverse l'Afrique de l'Ouest et se jette dans le golfe de Guinée ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Niger",
    incorrect_answers: ["Le Nil", "Le Congo", "Le Zambèze"],
    contexte: "Le Niger est un fleuve majeur d'Afrique de l'Ouest. Il coule sur 4 200 km."
  },
  {
    content: "Quel est le nom du plus grand lac de l'hémisphère sud par sa superficie ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Victoria",
    incorrect_answers: ["Le lac Tanganyika", "Le lac Malawi", "Le lac Titicaca"],
    contexte: "Le lac Victoria est le plus grand lac d'Afrique et le deuxième plus grand lac d'eau douce au monde."
  },
  {
    content: "Quel est le nom du détroit qui relie la mer Rouge à l'océan Indien ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le détroit de Bab-el-Mandeb",
    incorrect_answers: ["Le détroit de Gibraltar", "Le détroit de Suez", "Le détroit d'Hormuz"],
    contexte: "Le détroit de Bab-el-Mandeb, entre la péninsule arabique et la corne de l'Afrique, est une voie de navigation cruciale."
  },
  {
    content: "Quel est le nom de la fosse océanique la plus profonde de l'océan Atlantique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "La fosse de Porto Rico",
    incorrect_answers: ["La fosse des Mariannes", "La fosse des Tonga", "La fosse du Japon"],
    contexte: "La fosse de Porto Rico est la fosse océanique la plus profonde de l'océan Atlantique. Elle se situe près de l'île de Porto Rico."
  },
  {
    content: "Quel est le plus grand lac artificiel d'Afrique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Volta",
    incorrect_answers: ["Le lac Kariba", "Le lac Nasser", "Le lac Inga"],
    contexte: "Le lac Volta, au Ghana, est le plus grand lac artificiel au monde en volume. Il a été créé en 1965."
  },
  {
    content: "Quel est le nom du plus grand glacier d'Afrique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le glacier du Kilimandjaro",
    incorrect_answers: ["Le glacier Mertz", "Le glacier Lambert", "Le glacier de la Mer de Ross"],
    contexte: "Le glacier du Kilimandjaro est le plus grand d'Afrique. Il est menacé par le changement climatique."
  },
  {
    content: "Quel est le plus grand désert de roche volcanique d'Afrique ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Hoggar",
    incorrect_answers: ["Le désert du Kalahari", "Le désert de Namib", "Le désert de Libye"],
    contexte: "Le Hoggar est un massif montagneux de roches volcaniques, au cœur du Sahara."
  },
  {
    content: "Quel fleuve est la frontière naturelle entre l'Angola et la Namibie ?",
    difficulty: "intermédiaire",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le fleuve Cunene",
    incorrect_answers: ["Le fleuve Zambèze", "Le fleuve Congo", "Le fleuve Orange"],
    contexte: "Le fleuve Cunene est une rivière qui coule à travers l'Angola et la Namibie. Il est une frontière naturelle importante."
  },

  # Afrique - Difficile (211-225)
  {
    content: "Quel est le nom de la fosse océanique la plus profonde de l'océan Atlantique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "La fosse de Porto Rico",
    incorrect_answers: ["La fosse des Mariannes", "La fosse des Tonga", "La fosse du Japon"],
    contexte: "La fosse de Porto Rico est la fosse océanique la plus profonde de l'océan Atlantique. Elle se situe près de l'île de Porto Rico."
  },
  {
    content: "Quel est le plus grand lac artificiel d'Afrique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Volta",
    incorrect_answers: ["Le lac Kariba", "Le lac Nasser", "Le lac Inga"],
    contexte: "Le lac Volta, au Ghana, est le plus grand lac artificiel au monde en volume. Il a été créé en 1965."
  },
  {
    content: "Quel est le nom du plus grand glacier d'Afrique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le glacier du Kilimandjaro",
    incorrect_answers: ["Le glacier Mertz", "Le glacier Lambert", "Le glacier de la Mer de Ross"],
    contexte: "Le glacier du Kilimandjaro est le plus grand d'Afrique. Il est menacé par le changement climatique."
  },
  {
    content: "Quel est le plus grand désert de roche volcanique d'Afrique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Hoggar",
    incorrect_answers: ["Le désert du Kalahari", "Le désert de Namib", "Le désert de Libye"],
    contexte: "Le Hoggar est un massif montagneux de roches volcaniques, au cœur du Sahara."
  },
  {
    content: "Quel fleuve est la frontière naturelle entre l'Angola et la Namibie ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le fleuve Cunene",
    incorrect_answers: ["Le fleuve Zambèze", "Le fleuve Congo", "Le fleuve Orange"],
    contexte: "Le fleuve Cunene est une rivière qui coule à travers l'Angola et la Namibie. Il est une frontière naturelle importante."
  },
  {
    content: "Quel est le nom du volcan le plus actif d'Afrique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Nyiragongo",
    incorrect_answers: ["Le Kilimandjaro", "Le Mont Kenya", "Le Mont Cameroun"],
    contexte: "Le Nyiragongo, en République démocratique du Congo, est un des volcans les plus actifs d'Afrique."
  },
  {
    content: "Quel est le nom de la chaîne de montagnes la plus haute d'Afrique du Nord ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "L'Atlas",
    incorrect_answers: ["Le Hoggar", "Le Fouta-Djalon", "Le Massif de l'Ahaggar"],
    contexte: "L'Atlas est la plus haute chaîne de montagnes d'Afrique du Nord. Elle s'étend sur le Maroc, l'Algérie et la Tunisie."
  },
  {
    content: "Quel est le nom du plus grand lac salé d'Afrique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Turkana",
    incorrect_answers: ["Le lac Tchad", "Le lac Tanganyika", "Le lac Malawi"],
    contexte: "Le lac Turkana, au Kenya, est le plus grand lac salé d'Afrique et le quatrième plus grand lac de l'Afrique."
  },
  {
    content: "Quel est le nom du désert qui s'étend sur une grande partie de l'Afrique australe ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le désert du Kalahari",
    incorrect_answers: ["Le Sahara", "Le désert de Namib", "Le désert de la Libye"],
    contexte: "Le désert du Kalahari est un vaste désert de l'Afrique australe. Il est principalement composé de sable rouge."
  },
  {
    content: "Quel est le nom du détroit qui relie l'océan Atlantique à l'océan Indien ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le cap de Bonne-Espérance",
    incorrect_answers: ["Le cap Horn", "Le cap de Finisterre", "Le cap de la Bonne-Espérance"],
    contexte: "Le cap de Bonne-Espérance est un cap situé à l'extrémité sud de la péninsule du Cap, en Afrique du Sud."
  },
  {
    content: "Quel est le nom du plus grand fleuve d'Afrique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Nil",
    incorrect_answers: ["Le Congo", "Le Niger", "Le Zambèze"],
    contexte: "Le Nil est le plus long fleuve d'Afrique et il est considéré comme le plus long du monde avec l'Amazone."
  },
  {
    content: "Quel est le plus haut sommet d'Afrique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Kilimandjaro",
    incorrect_answers: ["Le Mont Kenya", "Le Mont Toubkal", "Le Mont Stanley"],
    contexte: "Le Kilimandjaro est un volcan inactif de Tanzanie et le plus haut sommet du continent africain."
  },
  {
    content: "Quel est le plus grand désert chaud du monde ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le Sahara",
    incorrect_answers: ["Le Gobi", "Le désert d'Arabie", "Le Kalahari"],
    contexte: "Le Sahara, situé en Afrique du Nord, est le plus grand désert chaud de la planète."
  },
  {
    content: "Quel est le plus grand lac d'Afrique ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "Le lac Victoria",
    incorrect_answers: ["Le lac Tanganyika", "Le lac Malawi", "Le lac Tchad"],
    contexte: "Le lac Victoria est le plus grand lac d'Afrique par sa superficie. Il est partagé par trois pays."
  },
  {
    content: "Quelle mer se trouve au nord du continent africain ?",
    difficulty: "difficile",
    category: "reliefs, fleuves et océans",
    region: "Afrique",
    correct_answer: "La mer Méditerranée",
    incorrect_answers: ["La mer Rouge", "La mer d'Arabie", "La mer Noire"],
    contexte: "La mer Méditerranée sépare l'Afrique de l'Europe et est une voie de navigation importante."
  },

  # RÉGIONS, VILLES ET CAPITALES via Claude 4.0 Sonnet

  {
    content: "Dans quelle région se trouve Rotorua ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Nouvelle-Zélande",
    incorrect_answers: ["Australie", "Fidji", "Samoa"],
    contexte: "70 000 habitants, géothermie volcanique, culture maorie authentique."
  },
  {
    content: "Quelle ville australienne est surnommée 'Festival City' ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Adélaïde",
    incorrect_answers: ["Melbourne", "Perth", "Brisbane"],
    contexte: "Fringe Festival annuel, ville des arts et vins d'Australie-Méridionale."
  },
  {
    content: "Dans quel État australien se trouve Broome ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Australie-Occidentale",
    incorrect_answers: ["Queensland", "Territoire du Nord", "Australie-Méridionale"],
    contexte: "14 000 habitants, perles et dinosaures, Cable Beach spectaculaire."
  },
  {
    content: "Quelle est la plus grande ville de Tasmanie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Hobart",
    incorrect_answers: ["Launceston", "Devonport", "Burnie"],
    contexte: "Capitale tasmanienne, MONA et Salamanca Place, île du diable historique."
  },

  # AMÉRIQUE - 45 questions (15 faciles + 15 intermédiaires + 15 difficiles)

  # AMÉRIQUE - FACILE (15 questions)
  {
    content: "Quelle est la plus grande ville des États-Unis ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "New York",
    incorrect_answers: ["Los Angeles", "Chicago", "Houston"],
    contexte: "Big Apple, 8,3 millions d'habitants, centre économique et culturel mondial."
  },
  {
    content: "Quelle est la capitale des États-Unis ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Washington",
    incorrect_answers: ["New York", "Philadelphia", "Boston"],
    contexte: "Washington D.C., 700 000 habitants, district fédéral créé en 1790."
  },
  {
    content: "Quelle est la capitale du Canada ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Ottawa",
    incorrect_answers: ["Toronto", "Vancouver", "Montréal"],
    contexte: "1 million d'habitants, choisie en 1857 comme compromis géographique."
  },
  {
    content: "Quelle est la plus grande ville du Canada ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Toronto",
    incorrect_answers: ["Montréal", "Vancouver", "Calgary"],
    contexte: "2,9 millions d'habitants, centre économique canadien, tour CN emblématique."
  },
  {
    content: "Quelle ville est surnommée 'La Big Apple' ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "New York",
    incorrect_answers: ["Boston", "Chicago", "Philadelphia"],
    contexte: "Surnom popularisé dans les années 1970, référence au jazz."
  },
  {
    content: "Quelle est la capitale du Brésil ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Brasília",
    incorrect_answers: ["São Paulo", "Rio de Janeiro", "Salvador"],
    contexte: "Capitale fédérale créée en 1960, 3 millions d'habitants, architecture moderniste."
  },
  {
    content: "Quel est le plus grand pays d'Amérique du Sud ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Brésil",
    incorrect_answers: ["Argentine", "Pérou", "Colombie"],
    contexte: "8,5 millions km², 215 millions d'habitants, occupe près de la moitié du continent."
  },
  {
    content: "Quelle est la capitale de l'Argentine ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Buenos Aires",
    incorrect_answers: ["Córdoba", "Rosario", "Mendoza"],
    contexte: "Paris de l'Amérique du Sud, 3 millions d'habitants, capitale du tango."
  },
  {
    content: "Quelle est la capitale du Pérou ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Lima",
    incorrect_answers: ["Cusco", "Arequipa", "Trujillo"],
    contexte: "Ville des Rois, 10 millions d'habitants, fondée par Pizarro en 1535."
  },
  {
    content: "Quelle est la capitale du Mexique ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Mexico",
    incorrect_answers: ["Guadalajara", "Monterrey", "Puebla"],
    contexte: "Ciudad de México, 22 millions d'habitants, ancienne Tenochtitlan aztèque."
  },
  {
    content: "Quelle est la capitale du Chili ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Santiago",
    incorrect_answers: ["Valparaíso", "Concepción", "La Serena"],
    contexte: "Santiago du Chili, 7 millions d'habitants, vallée centrale entre montagnes."
  },
  {
    content: "Quelle est la capitale de la Colombie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Bogotá",
    incorrect_answers: ["Medellín", "Cali", "Barranquilla"],
    contexte: "Santa Fe de Bogotá, 8 millions d'habitants, plateau andin à 2640 m."
  },
  {
    content: "Quelle est la capitale de Cuba ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "La Havane",
    incorrect_answers: ["Santiago", "Santa Clara", "Camagüey"],
    contexte: "La Habana, 2,1 millions d'habitants, architecture coloniale et révolution."
  },
  {
    content: "Dans quelle région se trouve la Silicon Valley ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Californie",
    incorrect_answers: ["Texas", "New York", "Washington"],
    contexte: "Sud de la baie de San Francisco, berceau des géants technologiques."
  },
  {
    content: "Quelle est la capitale du Venezuela ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Caracas",
    incorrect_answers: ["Maracaibo", "Valencia", "Barquisimeto"],
    contexte: "Santiago de León de Caracas, 3 millions d'habitants, vallée des Caraïbes."
  },

  # AMÉRIQUE - INTERMÉDIAIRE (15 questions)
  {
    content: "Quelle est la capitale de l'Équateur ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Quito",
    incorrect_answers: ["Guayaquil", "Cuenca", "Machala"],
    contexte: "San Francisco de Quito, 2,8 millions d'habitants, première ville UNESCO."
  },
  {
    content: "Dans quel État américain se trouve Las Vegas ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Nevada",
    incorrect_answers: ["Californie", "Arizona", "Utah"],
    contexte: "Sin City, 650 000 habitants, capitale mondiale du jeu et divertissement."
  },
  {
    content: "Dans quel État se trouve Miami ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Floride",
    incorrect_answers: ["Californie", "Texas", "Caroline du Sud"],
    contexte: "Magic City, 470 000 habitants, porte d'entrée de l'Amérique latine."
  },
  {
    content: "Dans quel État se trouve Chicago ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Illinois",
    incorrect_answers: ["Indiana", "Wisconsin", "Michigan"],
    contexte: "Windy City, 2,7 millions d'habitants, architecture et jazz emblématiques."
  },
  {
    content: "Dans quelle province canadienne se trouve Québec ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Québec",
    incorrect_answers: ["Ontario", "Nouveau-Brunswick", "Nova Scotia"],
    contexte: "Ville de Québec, 540 000 habitants, seule ville fortifiée d'Amérique du Nord."
  },
  {
    content: "Dans quel État se trouve Seattle ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Washington",
    incorrect_answers: ["Oregon", "Idaho", "Alaska"],
    contexte: "Emerald City, 750 000 habitants, berceau de Microsoft et Boeing."
  },
  {
    content: "Dans quelle région du Canada se trouve Vancouver ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Colombie-Britannique",
    incorrect_answers: ["Alberta", "Yukon", "Saskatchewan"],
    contexte: "675 000 habitants, porte du Pacifique canadien, montagnes et océan."
  },
  {
    content: "Dans quel État se trouve Detroit ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Michigan",
    incorrect_answers: ["Ohio", "Indiana", "Wisconsin"],
    contexte: "Motor City, 670 000 habitants, berceau de l'industrie automobile américaine."
  },
  {
    content: "Dans quel État se trouve Phoenix ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Arizona",
    incorrect_answers: ["Nouveau-Mexique", "Nevada", "Utah"],
    contexte: "Valley of the Sun, 1,7 million d'habitants, désert de Sonora."
  },
  {
    content: "Dans quel État se trouve Denver ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Colorado",
    incorrect_answers: ["Wyoming", "Kansas", "Nebraska"],
    contexte: "Mile High City, 715 000 habitants, exactement 1609 mètres d'altitude."
  },
  {
    content: "Dans quelle région du Brésil se trouve São Paulo ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Sud-Est",
    incorrect_answers: ["Sud", "Nord-Est", "Centre-Ouest"],
    contexte: "22 millions d'habitants métropolitains, locomotive économique du Brésil."
  },
  {
    content: "Quelle est la capitale de l'Uruguay ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Montevideo",
    incorrect_answers: ["Punta del Este", "Salto", "Paysandú"],
    contexte: "1,4 million d'habitants, presque la moitié de la population uruguayenne."
  },
  {
    content: "Dans quel pays se trouve la région de Patagonie ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Argentine et Chili",
    incorrect_answers: ["Argentine", "Chili", "Uruguay"],
    contexte: "Région australe partagée, 1 million km², steppes et glaciers majestueux."
  },
  {
    content: "Dans quel État se trouve La Nouvelle-Orléans ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Louisiane",
    incorrect_answers: ["Mississippi", "Alabama", "Texas"],
    contexte: "390 000 habitants, jazz et architecture créole, delta du Mississippi."
  },
  {
    content: "Quelle est la capitale du Paraguay ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Asunción",
    incorrect_answers: ["Ciudad del Este", "San Lorenzo", "Luque"],
    contexte: "Nuestra Señora de la Asunción, 3,2 millions d'habitants dans l'agglomération."
  },

  # AMÉRIQUE - DIFFICILE (15 questions)
  {
    content: "Quelle est la capitale de la Bolivie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "La Paz",
    incorrect_answers: ["Sucre", "Santa Cruz", "Cochabamba"],
    contexte: "Capitale administrative, 835 000 habitants, plus haute capitale du monde (3500m)."
  },
  {
    content: "Quelle est la capitale du Costa Rica ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "San José",
    incorrect_answers: ["Cartago", "Alajuela", "Heredia"],
    contexte: "334 000 habitants, plateau central, théâtres et musées renommés."
  },
  {
    content: "Quelle est la capitale du Guatemala ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Guatemala City",
    incorrect_answers: ["Quetzaltenango", "Antigua", "Escuintla"],
    contexte: "Ciudad de Guatemala, 3 millions d'habitants, vallée volcanique guatémaltèque."
  },
  {
    content: "Quelle est la capitale du Honduras ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Tegucigalpa",
    incorrect_answers: ["San Pedro Sula", "Choloma", "La Ceiba"],
    contexte: "1,4 million d'habitants, ville aux collines d'argent en langue nahuatl."
  },
  {
    content: "Quelle est la capitale du Nicaragua ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Managua",
    incorrect_answers: ["León", "Granada", "Masaya"],
    contexte: "1 million d'habitants, sur les rives du lac Xolotlán."
  },
  {
    content: "Quelle est la capitale du Panama ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Panama City",
    incorrect_answers: ["Colón", "David", "Santiago"],
    contexte: "Ciudad de Panamá, 1,9 million d'habitants, canal interoceanique historique."
  },
  {
    content: "Quelle est la capitale de la Jamaïque ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Kingston",
    incorrect_answers: ["Montego Bay", "Spanish Town", "Portmore"],
    contexte: "670 000 habitants, berceau du reggae et de Bob Marley."
  },
  {
    content: "Quelle est la capitale du Salvador ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "San Salvador",
    incorrect_answers: ["Santa Ana", "San Miguel", "Soyapango"],
    contexte: "525 000 habitants, vallée des hamacs, volcans et café."
  },
  {
    content: "Dans quel État américain se trouve Anchorage ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Alaska",
    incorrect_answers: ["Washington", "Oregon", "Montana"],
    contexte: "290 000 habitants, plus grande ville d'Alaska, porte de l'Arctique."
  },
  {
    content: "Quelle est la capitale de Haïti ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Port-au-Prince",
    incorrect_answers: ["Cap-Haïtien", "Gonaïves", "Les Cayes"],
    contexte: "1,2 million d'habitants, première république noire indépendante."
  },
  {
    content: "Dans quel territoire canadien se trouve Yellowknife ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Territoires du Nord-Ouest",
    incorrect_answers: ["Nunavut", "Yukon", "Manitoba"],
    contexte: "20 000 habitants, capitale des diamants, aurores boréales spectaculaires."
  },
  {
    content: "Quelle est la capitale du Belize ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Belmopan",
    incorrect_answers: ["Belize City", "San Ignacio", "Orange Walk"],
    contexte: "17 000 habitants, capitale depuis 1970, jungle maya environnante."
  },
  {
    content: "Dans quelle région se trouve Machu Picchu ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Cusco, Pérou",
    incorrect_answers: ["Arequipa, Pérou", "La Paz, Bolivie", "Quito, Équateur"],
    contexte: "Région de Cusco, cité inca perdue, patrimoine mondial exceptionnel."
  },
  {
    content: "Quelle est la capitale de la Guyane ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Georgetown",
    incorrect_answers: ["New Amsterdam", "Linden", "Bartica"],
    contexte: "235 000 habitants, ville jardin, architecture coloniale britannique."
  },
  {
    content: "Dans quel État américain se trouve Honolulu ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Amérique",
    correct_answer: "Hawaï",
    incorrect_answers: ["Californie", "Alaska", "Floride"],
    contexte: "350 000 habitants, baie protégée, pont culturel Pacifique."
  },

  # AFRIQUE - 45 questions (15 faciles + 15 intermédiaires + 15 difficiles)

  # AFRIQUE - FACILE (15 questions)
  {
    content: "Quelle est la capitale de l'Égypte ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Le Caire",
    incorrect_answers: ["Alexandrie", "Gizeh", "Louxor"],
    contexte: "Al-Qāhirah, 20 millions d'habitants, plus grande ville arabe et africaine."
  },
  {
    content: "Quelle est la capitale de l'Afrique du Sud ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Le Cap",
    incorrect_answers: ["Johannesburg", "Durban", "Pretoria"],
    contexte: "Trois capitales : Le Cap (législative), Pretoria (exécutive), Bloemfontein (judiciaire)."
  },
  {
    content: "Quelle est la capitale du Maroc ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Rabat",
    incorrect_answers: ["Casablanca", "Marrakech", "Fès"],
    contexte: "580 000 habitants, capitale politique depuis 1912, patrimoine andalou-mauresque."
  },
  {
    content: "Quelle est la plus grande ville d'Afrique ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Lagos",
    incorrect_answers: ["Le Caire", "Kinshasa", "Johannesburg"],
    contexte: "15 millions d'habitants, centre économique du Nigeria, mégalopole côtière."
  },
  {
    content: "Quelle est la capitale du Kenya ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Nairobi",
    incorrect_answers: ["Mombasa", "Kisumu", "Nakuru"],
    contexte: "4,4 millions d'habitants, ville verte au soleil, safari urbain unique."
  },
  {
    content: "Dans quel pays se trouve la ville de Casablanca ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Maroc",
    incorrect_answers: ["Algérie", "Tunisie", "Mauritanie"],
    contexte: "Dar el-Beida, 3,4 millions d'habitants, poumon économique du Maghreb."
  },
  {
    content: "Quelle est la capitale de l'Algérie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Alger",
    incorrect_answers: ["Oran", "Constantine", "Annaba"],
    contexte: "Alger la Blanche, 3,4 millions d'habitants, perle de la Méditerranée."
  },
  {
    content: "Quelle est la capitale de la Tunisie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Tunis",
    incorrect_answers: ["Sfax", "Sousse", "Kairouan"],
    contexte: "1 million d'habitants, proximité de Carthage antique, révolution jasmin."
  },
  {
    content: "Dans quel pays se trouve la ville de Fès ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Maroc",
    incorrect_answers: ["Algérie", "Tunisie", "Libye"],
    contexte: "1,1 million d'habitants, capitale spirituelle, plus ancienne université au monde."
  },
  {
    content: "Dans quel pays se trouve la ville de Marrakech ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Maroc",
    incorrect_answers: ["Algérie", "Tunisie", "Mali"],
    contexte: "Perle du Sud, 928 000 habitants, médina rouge, djemaa el-fna."
  },
  {
    content: "Quelle est la capitale du Sénégal ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Dakar",
    incorrect_answers: ["Saint-Louis", "Thiès", "Kaolack"],
    contexte: "1,1 million d'habitants, presqu'île du Cap-Vert, porte de l'Afrique occidentale."
  },
  {
    content: "Dans quel pays se trouve la ville de Tanger ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Maroc",
    incorrect_answers: ["Espagne", "Algérie", "Gibraltar"],
    contexte: "1 million d'habitants, détroit de Gibraltar, porte entre Europe-Afrique."
  },
  {
    content: "Quel est le plus grand pays d'Afrique ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Algérie",
    incorrect_answers: ["Soudan", "Libye", "Tchad"],
    contexte: "2,4 millions km², plus grand pays africain et méditerranéen."
  },
  {
    content: "Dans quelle région d'Afrique du Sud se trouve Johannesburg ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Gauteng",
    incorrect_answers: ["Limpopo", "Mpumalanga", "Nord-Ouest"],
    contexte: "City of Gold, 5,6 millions d'habitants, centre économique sud-africain."
  },
  {
    content: "Quelle est la capitale de la Libye ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Tripoli",
    incorrect_answers: ["Benghazi", "Misrata", "Tobrouk"],
    contexte: "Tarabulus, 1,2 million d'habitants, médina ottomane et architecture italienne."
  },

  # AFRIQUE - INTERMÉDIAIRE (15 questions)
  {
    content: "Quelle est la capitale de l'Éthiopie ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Addis-Abeba",
    incorrect_answers: ["Nairobi", "Kampala", "Khartoum"],
    contexte: "Nouvelle Fleur en amharique, 3,4 millions d'habitants, siège Union africaine."
  },
  {
    content: "Quelle est la capitale du Ghana ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Accra",
    incorrect_answers: ["Kumasi", "Tamale", "Sekondi-Takoradi"],
    contexte: "2,3 millions d'habitants, première colonie africaine indépendante moderne."
  },
  {
    content: "Quelle est la capitale du Nigeria ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Abuja",
    incorrect_answers: ["Lagos", "Kano", "Ibadan"],
    contexte: "Capitale fédérale depuis 1991, 3,5 millions d'habitants, ville planifiée."
  },
  {
    content: "Quelle est la capitale de la Côte d'Ivoire ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Yamoussoukro",
    incorrect_answers: ["Abidjan", "Bouaké", "Daloa"],
    contexte: "Capitale politique depuis 1983, 300 000 habitants, basilique impressionnante."
  },
  {
    content: "Quelle est la capitale de l'Angola ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Luanda",
    incorrect_answers: ["Huambo", "Benguela", "Lobito"],
    contexte: "8,3 millions d'habitants, fondée par les Portugais en 1575."
  },
  {
    content: "Quelle est la capitale du Mali ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Bamako",
    incorrect_answers: ["Ségou", "Mopti", "Gao"],
    contexte: "2,5 millions d'habitants, crocodile en bambara, rives du Niger."
  },
  {
    content: "Dans quel pays se trouve la ville de Zanzibar ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Tanzanie",
    incorrect_answers: ["Kenya", "Mozambique", "Madagascar"],
    contexte: "Stone Town, 896 000 habitants, île aux épices, patrimoine swahili."
  },
  {
    content: "Quelle est la capitale de l'Ouganda ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Kampala",
    incorrect_answers: ["Entebbe", "Jinja", "Mbale"],
    contexte: "1,7 million d'habitants, sept collines, perle de l'Afrique orientale."
  },
  {
    content: "Quelle est la capitale du Zimbabwe ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Harare",
    incorrect_answers: ["Bulawayo", "Gweru", "Mutare"],
    contexte: "Anciennement Salisbury, 1,6 million d'habitants, ville jardin africaine."
  },
  {
    content: "Quelle est la capitale du Cameroun ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Yaoundé",
    incorrect_answers: ["Douala", "Garoua", "Bamenda"],
    contexte: "3,4 millions d'habitants, ville aux sept collines, centre politique."
  },
  {
    content: "Quelle est la capitale de la Zambie ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Lusaka",
    incorrect_answers: ["Ndola", "Kitwe", "Livingstone"],
    contexte: "2,5 millions d'habitants, plateau central, cuivre et émeraudes."
  },
  {
    content: "Quelle est la capitale du Mozambique ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Maputo",
    incorrect_answers: ["Beira", "Nampula", "Matola"],
    contexte: "1,1 million d'habitants, baie de Maputo, architecture Art déco."
  },
  {
    content: "Quelle est la capitale de Madagascar ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Antananarivo",
    incorrect_answers: ["Toamasina", "Antsirabe", "Fianarantsoa"],
    contexte: "1,6 million d'habitants, ville des mille guerriers, hauts plateaux."
  },
  {
    content: "Dans quel pays se trouve la région du Darfour ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Soudan",
    incorrect_answers: ["Tchad", "Libye", "Éthiopie"],
    contexte: "Région de l'ouest soudanais, 6 millions d'habitants, conflit humanitaire."
  },
  {
    content: "Quelle est la capitale du Burkina Faso ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Ouagadougou",
    incorrect_answers: ["Bobo-Dioulasso", "Koudougou", "Banfora"],
    contexte: "2,4 millions d'habitants, capitale depuis l'indépendance, festival de cinéma."
  },

  # AFRIQUE - DIFFICILE (15 questions)
  {
    content: "Dans quel pays se trouve la région du Katanga ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "République démocratique du Congo",
    incorrect_answers: ["Angola", "Zambie", "Tanzanie"],
    contexte: "Province minière du sud-est congolais, cuivre et cobalt abondants."
  },
  {
    content: "Quelle est la capitale de l'Érythrée ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Asmara",
    incorrect_answers: ["Massaoua", "Keren", "Assab"],
    contexte: "896 000 habitants, architecture art déco italienne, Piccola Roma."
  },
  {
    content: "Quelle est la capitale du Botswana ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Gaborone",
    incorrect_answers: ["Francistown", "Maun", "Serowe"],
    contexte: "250 000 habitants, créée en 1966, diamants et démocratie stable."
  },
  {
    content: "Quelle est la capitale de la Namibie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Windhoek",
    incorrect_answers: ["Swakopmund", "Walvis Bay", "Oshakati"],
    contexte: "325 000 habitants, coin du vent en afrikaans, architecture germanique."
  },
  {
    content: "Quelle est la capitale du Rwanda ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Kigali",
    incorrect_answers: ["Butare", "Gitarama", "Ruhengeri"],
    contexte: "1,1 million d'habitants, ville aux mille collines, réconciliation exemplaire."
  },
  {
    content: "Quelle est la capitale du Burundi ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Gitega",
    incorrect_answers: ["Bujumbura", "Ngozi", "Muyinga"],
    contexte: "135 000 habitants, capitale politique depuis 2019, centre du pays."
  },
  {
    content: "Quelle est la capitale de la République centrafricaine ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Bangui",
    incorrect_answers: ["Berbérati", "Carnot", "Bambari"],
    contexte: "889 000 habitants, confluent Oubangui-M'Poko, centre géographique africain."
  },
  {
    content: "Quelle est la capitale du Tchad ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "N'Djamena",
    incorrect_answers: ["Moundou", "Sarh", "Abéché"],
    contexte: "1,6 million d'habitants, Fort-Lamy colonial, confluent Chari-Logone."
  },
  {
    content: "Quelle est la capitale du Niger ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Niamey",
    incorrect_answers: ["Zinder", "Maradi", "Tahoua"],
    contexte: "1,4 million d'habitants, rives du fleuve Niger, uranium."
  },
  {
    content: "Quelle est la capitale de la Guinée ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Conakry",
    incorrect_answers: ["Kankan", "Labé", "Nzérékoré"],
    contexte: "2 millions d'habitants, péninsule de Kaloum, bauxite et alumine."
  },
  {
    content: "Quelle est la capitale de la Sierra Leone ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Freetown",
    incorrect_answers: ["Bo", "Kenema", "Koidu"],
    contexte: "1,2 million d'habitants, ville libre des esclaves affranchis."
  },
  {
    content: "Quelle est la capitale du Liberia ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Monrovia",
    incorrect_answers: ["Gbarnga", "Buchanan", "Harper"],
    contexte: "1,8 million d'habitants, nommée d'après James Monroe, esclaves libérés."
  },
  {
    content: "Quelle est la capitale de Djibouti ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Djibouti",
    incorrect_answers: ["Ali Sabieh", "Dikhil", "Tadjourah"],
    contexte: "650 000 habitants, porte de la mer Rouge, bases militaires internationales."
  },
  {
    content: "Quelle est la capitale de la Somalie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Mogadiscio",
    incorrect_answers: ["Hargeisa", "Kismayo", "Bosasso"],
    contexte: "2,6 millions d'habitants, perle de l'océan Indien, reconstruction post-conflit."
  },
  {
    content: "Quelle est la capitale des Comores ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Afrique",
    correct_answer: "Moroni",
    incorrect_answers: ["Mutsamudu", "Fomboni", "Domoni"],
    contexte: "56 000 habitants, Grande Comore, archipel des parfums."
  }
]

# Création des questions
questions_data.each_with_index do |data, index|
  question = Question.create!(
    content: data[:content],
    difficulty: data[:difficulty],
    category: data[:category],
    region: data[:region],
    correct_answer: data[:correct_answer],
    incorrect_answers: data[:incorrect_answers],
    contexte: data[:contexte]
  )

  print "."
  puts " Question #{index + 1}/#{questions_data.length} créée" if (index + 1) % 25 == 0
end

puts "\n✅ #{questions_data.length} questions 'Régions, États, Villes et Capitales' créées!"

# Statistiques détaillées
puts "\n📊 RÉPARTITION DÉTAILLÉE:"
puts "=" * 50

puts "\n🌍 Par région:"
Question.group(:region).count.each do |region, count|
  puts "  • #{region}: #{count} questions"
end

puts "\n📈 Par difficulté:"
Question.group(:difficulty).count.each do |difficulty, count|
  puts "  • #{difficulty}: #{count} questions"
end

puts "\n🏗️ Répartition région × difficulté:"
Question.group(:region, :difficulty).count.each do |(region, difficulty), count|
  puts "  • #{region} #{difficulty}: #{count} questions"
end

puts "\n✅ VÉRIFICATION:"
total_expected = 5 * 3 * 15  # 5 régions × 3 difficultés × 15 questions
puts "  • Total attendu: #{total_expected} questions"
puts "  • Total créé: #{questions_data.length} questions"
puts "  • ✓ Répartition parfaite!" if questions_data.length == total_expected

puts "\n🎯 Seed terminé! Base parfaitement équilibrée pour le quiz de géographie!"  {
    content: "Quelle est la capitale de l'Irak ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Bagdad",
    incorrect_answers: ["Bassora", "Mossoul", "Erbil"],
    contexte: "7,2 millions d'habitants, capitale des califes abbassides, berceau civilisationnel."
  },
  {
    content: "Quelle est la capitale de la Jordanie ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Amman",
    incorrect_answers: ["Aqaba", "Irbid", "Zarqa"],
    contexte: "4,1 millions d'habitants, ancienne Philadelphia, carrefour du Moyen-Orient."
  },
  {
    content: "Quelle est la capitale du Liban ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Beyrouth",
    incorrect_answers: ["Tripoli", "Saïda", "Zahlé"],
    contexte: "2,4 millions d'habitants, Paris du Moyen-Orient, phénix renaissant."
  },
  {
    content: "Quelle est la capitale de la Syrie ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Damas",
    incorrect_answers: ["Alep", "Homs", "Lattaquié"],
    contexte: "2,3 millions d'habitants, plus ancienne capitale habitée, route des épices."
  },
  {
    content: "Quelle est la capitale du Pakistan ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Islamabad",
    incorrect_answers: ["Karachi", "Lahore", "Faisalabad"],
    contexte: "1,1 million d'habitants, ville nouvelle créée en 1960, architecture moderne."
  },
  {
    content: "Quelle est la capitale du Bangladesh ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Dacca",
    incorrect_answers: ["Chittagong", "Sylhet", "Rajshahi"],
    contexte: "Dhaka en bengali, 22 millions d'habitants, delta du Gange."
  },
  {
    content: "Quelle est la capitale de l'Arabie Saoudite ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Riyad",
    incorrect_answers: ["Jeddah", "La Mecque", "Médine"],
    contexte: "7,5 millions d'habitants, oasis du Nejd, centre du royaume saoudien."
  },
  {
    content: "Quelle est la capitale des Émirats arabes unis ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Abou Dabi",
    incorrect_answers: ["Dubaï", "Sharjah", "Ajman"],
    contexte: "1,5 million d'habitants, père de la gazelle, pétrole et culture."
  },
  {
    content: "Quelle est la capitale du Koweït ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Koweït City",
    incorrect_answers: ["Hawalli", "Al Farwaniyah", "Mubarak Al-Kabeer"],
    contexte: "3 millions d'habitants, petite forteresse en arabe, perle du Golfe."
  },
  {
    content: "Quelle est la capitale du Qatar ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Doha",
    incorrect_answers: ["Al Rayyan", "Al Wakrah", "Umm Salal"],
    contexte: "2,4 millions d'habitants, grande baie, modernité et tradition qatarie."
  },

  # ASIE - DIFFICILE (15 questions)
  {
    content: "Dans quel pays se trouve la région de Manchourie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Chine",
    incorrect_answers: ["Mongolie", "Russie", "Corée du Nord"],
    contexte: "Dongbei en chinois, région du nord-est, 110 millions d'habitants."
  },
  {
    content: "Quelle est la capitale de l'Ouzbékistan ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Tachkent",
    incorrect_answers: ["Samarcande", "Boukhara", "Namangan"],
    contexte: "Toshkent en ouzbek, 2,5 millions d'habitants, reconstruite après séisme 1966."
  },
  {
    content: "Quelle est la capitale de la Géorgie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Tbilissi",
    incorrect_answers: ["Batoumi", "Koutaissi", "Rustavi"],
    contexte: "Tbilisi en géorgien, 1,1 million d'habitants, sources chaudes sulfureuses."
  },
  {
    content: "Dans quel pays se trouve la région de Cachemire ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Inde et Pakistan",
    incorrect_answers: ["Inde", "Pakistan", "Chine"],
    contexte: "Région disputée himalayenne, divisée depuis l'indépendance de 1947."
  },
  {
    content: "Quelle est la capitale du Népal ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Katmandou",
    incorrect_answers: ["Pokhara", "Lalitpur", "Biratnagar"],
    contexte: "Kathmandu en anglais, 1,5 million d'habitants, vallée himalayenne sacrée."
  },
  {
    content: "Quelle est la capitale du Sri Lanka ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Colombo",
    incorrect_answers: ["Kandy", "Galle", "Jaffna"],
    contexte: "750 000 habitants, principal port de l'île, centre économique."
  },
  {
    content: "Quelle est la capitale de l'Azerbaïdjan ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Bakou",
    incorrect_answers: ["Gandja", "Sumqayit", "Mingachevir"],
    contexte: "Baku en azéri, 2,3 millions d'habitants, pétrole de la Caspienne."
  },
  {
    content: "Quelle est la capitale du Myanmar ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Naypyidaw",
    incorrect_answers: ["Rangoun", "Mandalay", "Bagan"],
    contexte: "Capitale administrative depuis 2006, 1 million d'habitants, ville nouvelle."
  },
  {
    content: "Quelle est la capitale du Kazakhstan ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Nur-Sultan",
    incorrect_answers: ["Almaty", "Shymkent", "Aktobe"],
    contexte: "Anciennement Astana, 1,2 million d'habitants, capitale depuis 1997."
  },
  {
    content: "Quelle est la capitale de la Mongolie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Oulan-Bator",
    incorrect_answers: ["Erdenet", "Darkhan", "Choibalsan"],
    contexte: "Ulaanbaatar en mongol, 1,5 million d'habitants, ville rouge héros."
  },
  {
    content: "Quelle est la capitale du Tadjikistan ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Douchanbé",
    incorrect_answers: ["Khodjent", "Kourgan-Teubé", "Kulob"],
    contexte: "Dushanbe en tadjik, 860 000 habitants, signifie lundi en persan."
  },
  {
    content: "Quelle est la capitale du Kirghizistan ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Bichkek",
    incorrect_answers: ["Och", "Jalal-Abad", "Karakol"],
    contexte: "Bishkek en kirghiz, 1 million d'habitants, anciennement Frounze."
  },
  {
    content: "Quelle est la capitale du Turkménistan ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Achgabat",
    incorrect_answers: ["Turkmenbachi", "Dashoguz", "Mary"],
    contexte: "Asgabat en turkmène, 1 million d'habitants, ville blanche du désert."
  },
  {
    content: "Quelle est la capitale du Laos ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Vientiane",
    incorrect_answers: ["Luang Prabang", "Savannakhet", "Pakse"],
    contexte: "Viangchan en lao, 820 000 habitants, temples bouddhistes dorés."
  },
  {
    content: "Quelle est la capitale de l'Arménie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Erevan",
    incorrect_answers: ["Gyumri", "Vanadzor", "Goris"],
    contexte: "Yerevan en arménien, 1,1 million d'habitants, ville rose du tuf."
  },

  # OCÉANIE - 45 questions (15 faciles + 15 intermédiaires + 15 difficiles)

  # OCÉANIE - FACILE (15 questions)
  {
    content: "Quelle est la capitale de l'Australie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Canberra",
    incorrect_answers: ["Sydney", "Melbourne", "Perth"],
    contexte: "430 000 habitants, capitale fédérale créée en 1913, compromis Sydney-Melbourne."
  },
  {
    content: "Quelle est la plus grande ville d'Australie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Sydney",
    incorrect_answers: ["Melbourne", "Brisbane", "Perth"],
    contexte: "5,3 millions d'habitants, opéra iconique, pont du port spectaculaire."
  },
  {
    content: "Quelle est la capitale de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Wellington",
    incorrect_answers: ["Auckland", "Christchurch", "Hamilton"],
    contexte: "Wellington la Venteuse, 215 000 habitants, capitale depuis 1865."
  },
  {
    content: "Quelle est la plus grande ville de Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Auckland",
    incorrect_answers: ["Wellington", "Christchurch", "Hamilton"],
    contexte: "1,7 million d'habitants, City of Sails, tiers de la population."
  },
  {
    content: "Dans quel État australien se trouve Melbourne ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Victoria",
    incorrect_answers: ["Nouvelles-Galles du Sud", "Queensland", "Australie-Méridionale"],
    contexte: "5 millions d'habitants, capitale culturelle, ville la plus européenne d'Australie."
  },
  {
    content: "Dans quel État australien se trouve Perth ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Australie-Occidentale",
    incorrect_answers: ["Australie-Méridionale", "Territoire du Nord", "Tasmanie"],
    contexte: "2,1 millions d'habitants, ville la plus isolée au monde."
  },
  {
    content: "Dans quel territoire australien se trouve Darwin ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Territoire du Nord",
    incorrect_answers: ["Queensland", "Australie-Occidentale", "Nouvelles-Galles du Sud"],
    contexte: "150 000 habitants, porte de l'Asie, climat tropical australien."
  },
  {
    content: "Dans quel État australien se trouve Brisbane ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Queensland",
    incorrect_answers: ["Nouvelles-Galles du Sud", "Victoria", "Australie-Méridionale"],
    contexte: "2,6 millions d'habitants, rivière serpentine, soleil éternel du Queensland."
  },
  {
    content: "Quelle est la capitale de la Tasmanie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Hobart",
    incorrect_answers: ["Launceston", "Devonport", "Burnie"],
    contexte: "250 000 habitants, île-État australe, art contemporain et nature sauvage."
  },
  {
    content: "Dans quel État australien se trouve Adélaïde ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Australie-Méridionale",
    incorrect_answers: ["Victoria", "Australie-Occidentale", "Queensland"],
    contexte: "1,4 million d'habitants, ville des églises, festivals et vins."
  },
  {
    content: "Quel est le plus grand pays d'Océanie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Australie",
    incorrect_answers: ["Nouvelle-Zélande", "Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "7,7 millions km², continent-île, sixième plus grand pays mondial."
  },
  {
    content: "Dans quelle région néo-zélandaise se trouve Auckland ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Île du Nord",
    incorrect_answers: ["Île du Sud", "Île Stewart", "Îles Chatham"],
    contexte: "Plus grande ville, isthme entre deux ports, volcans endormis."
  },
  {
    content: "Quelle ville australienne est célèbre pour son opéra ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Sydney",
    incorrect_answers: ["Melbourne", "Perth", "Brisbane"],
    contexte: "Opéra de Sydney inauguré en 1973, patrimoine UNESCO architecturale."
  },
  {
    content: "Dans quelle région néo-zélandaise se trouve Christchurch ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Île du Sud",
    incorrect_answers: ["Île du Nord", "Île Stewart", "Îles Auckland"],
    contexte: "380 000 habitants, ville jardin, reconstruite après séismes."
  },
  {
    content: "Combien d'États compte l'Australie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Six",
    incorrect_answers: ["Cinq", "Sept", "Huit"],
    contexte: "Six États plus deux territoires principaux, fédération depuis 1901."
  },

  # OCÉANIE - INTERMÉDIAIRE (15 questions)
  {
    content: "Quelle est la capitale des Fidji ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Suva",
    incorrect_answers: ["Nadi", "Lautoka", "Levuka"],
    contexte: "178 000 habitants, capitale depuis 1877, université du Pacifique Sud."
  },
  {
    content: "Quelle est la capitale de Samoa ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Apia",
    incorrect_answers: ["Pago Pago", "Salelologa", "Fagamalo"],
    contexte: "36 000 habitants, port principal, tombe de Robert Louis Stevenson."
  },
  {
    content: "Quelle est la capitale de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Port Moresby",
    incorrect_answers: ["Lae", "Mount Hagen", "Madang"],
    contexte: "380 000 habitants, baie de Fairfax, diversité linguistique exceptionnelle."
  },
  {
    content: "Dans quelle région d'Australie se trouve Alice Springs ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Territoire du Nord",
    incorrect_answers: ["Australie-Occidentale", "Australie-Méridionale", "Queensland"],
    contexte: "25 000 habitants, centre rouge, porte d'Uluru et culture aborigène."
  },
  {
    content: "Quelle est la capitale de Tonga ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Nuku'alofa",
    incorrect_answers: ["Neiafu", "Pangai", "Haveluliku"],
    contexte: "25 000 habitants, royaume polynésien, seul pays jamais colonisé d'Océanie."
  },
  {
    content: "Dans quelle ville australienne siège le Parlement fédéral ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Canberra",
    incorrect_answers: ["Sydney", "Melbourne", "Perth"],
    contexte: "Territoire de la capitale australienne, architecture de Walter Burley Griffin."
  },
  {
    content: "Quelle est la capitale de Vanuatu ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Port-Vila",
    incorrect_answers: ["Luganville", "Isangel", "Lakatoro"],
    contexte: "51 000 habitants, archipel volcanique, bislama et diversité culturelle."
  },
  {
    content: "Dans quelle région néo-zélandaise se trouve Dunedin ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Île du Sud",
    incorrect_answers: ["Île du Nord", "Île Stewart", "Îles Chatham"],
    contexte: "130 000 habitants, Édimbourg du Sud, architecture écossaise et université."
  },
  {
    content: "Quelle ville australienne est connue pour ses festivals ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Adélaïde",
    incorrect_answers: ["Perth", "Darwin", "Hobart"],
    contexte: "Festival Fringe, ville planifiée, vignobles de la vallée Barossa."
  },
  {
    content: "Dans quel État australien se trouve la Gold Coast ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Queensland",
    incorrect_answers: ["Nouvelles-Galles du Sud", "Victoria", "Australie-Occidentale"],
    contexte: "680 000 habitants, 70 km de plages, parcs d'attractions et surfers."
  },
  {
    content: "Quelle est la plus grande ville de Papouasie-Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Port Moresby",
    incorrect_answers: ["Lae", "Mount Hagen", "Popondetta"],
    contexte: "Capitale et centre économique, plus de 800 langues parlées."
  },
  {
    content: "Dans quelle région australienne se trouve Cairns ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Queensland",
    incorrect_answers: ["Territoire du Nord", "Australie-Occidentale", "Nouvelles-Galles du Sud"],
    contexte: "160 000 habitants, porte de la Grande Barrière de corail."
  },
  {
    content: "Quelle ville néo-zélandaise est célèbre pour ses jardins ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Christchurch",
    incorrect_answers: ["Hamilton", "Palmerston North", "New Plymouth"],
    contexte: "Garden City, jardins botaniques, architecture néo-gothique reconstruite."
  },
  {
    content: "Dans quel État australien se trouve Newcastle ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Nouvelles-Galles du Sud",
    incorrect_answers: ["Queensland", "Victoria", "Australie-Méridionale"],
    contexte: "320 000 habitants, port charbonnier, plages et industrie sidérurgique."
  },
  {
    content: "Combien d'îles principales compte la Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Deux",
    incorrect_answers: ["Trois", "Quatre", "Une"],
    contexte: "Île du Nord et Île du Sud séparées par détroit de Cook."
  },

  # OCÉANIE - DIFFICILE (15 questions)
  {
    content: "Quelle est la capitale de Palau ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Ngerulmud",
    incorrect_answers: ["Koror", "Airai", "Melekeok"],
    contexte: "270 habitants, plus petite capitale mondiale, îles Rock paradisiaques."
  },
  {
    content: "Quelle est la capitale de Nauru ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Yaren",
    incorrect_answers: ["Aiwo", "Baiti", "Boe"],
    contexte: "1 100 habitants, district capital, plus petit État insulaire mondial."
  },
  {
    content: "Quelle est la capitale de Tuvalu ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Funafuti",
    incorrect_answers: ["Nanumea", "Vaitupu", "Nukufetau"],
    contexte: "7 000 habitants, atoll menacé par montée des océans."
  },
  {
    content: "Quelle est la capitale des Îles Marshall ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Majuro",
    incorrect_answers: ["Ebeye", "Kwajalein", "Jaluit"],
    contexte: "28 000 habitants, atoll corallien, histoire nucléaire américaine."
  },
  {
    content: "Quelle est la capitale des États fédérés de Micronésie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Palikir",
    incorrect_answers: ["Kolonia", "Weno", "Tofol"],
    contexte: "5 000 habitants, quatre États insulaires, plongée de classe mondiale."
  },
  {
    content: "Quelle est la capitale de Kiribati ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Tarawa Sud",
    incorrect_answers: ["Betio", "Kiritimati", "Butaritari"],
    contexte: "64 000 habitants, atoll équatorial, ligne de changement de date."
  },
  {
    content: "Quelle est la capitale des Îles Salomon ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Honiara",
    incorrect_answers: ["Gizo", "Munda", "Auki"],
    contexte: "85 000 habitants, île de Guadalcanal, Seconde Guerre mondiale."
  },
  {
    content: "Dans quelle ville australienne se trouve l'Université de Sydney ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Sydney",
    incorrect_answers: ["Melbourne", "Brisbane", "Perth"],
    contexte: "Plus ancienne université australienne fondée en 1850, architecture néo-gothique."
  },
  {
    content: "Quelle ville néo-zélandaise abrite le parlement ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Wellington",
    incorrect_answers: ["Auckland", "Christchurch", "Hamilton"],
    contexte: "Beehive parlementaire, capitale politique depuis 1865."
  },
  {
    content: "Dans quel territoire australien se trouve Coober Pedy ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Australie-Méridionale",
    incorrect_answers: ["Territoire du Nord", "Australie-Occidentale", "Queensland"],
    contexte: "1 700 habitants, ville souterraine, capitale mondiale de l'opale."
  },
  {
    content: "Quelle est la capitale de l'île Norfolk ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Océanie",
    correct_answer: "Kingston",
    incorrect_answers: ["Burnt Pine", "Cascade", "Steeles Point"],
    contexte: "200 habitants, territoire extérieur australien, descendants du Bounty."
  },
  {
    content: "Dans quelle région se trouve Rotorua ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region:# db/seeds.rb - 225 Questions Régions, États, Villes et Capitales
# Répartition : 5 régions × 3 difficultés × 15 questions = 225 questions

# Nettoyage des données existantes (optionnel - décommenter si nécessaire)
# Question.destroy_all

puts "🏙️ Création des 225 questions Régions, États, Villes et Capitales..."
puts "📊 Répartition : 5 régions × 3 difficultés × 15 questions"

questions_data = [
  # EUROPE - 45 questions (15 faciles + 15 intermédiaires + 15 difficiles)

  # EUROPE - FACILE (15 questions)
  {
    content: "Quelle est la capitale de l'Allemagne ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Berlin",
    incorrect_answers: ["Munich", "Francfort", "Hambourg"],
    contexte: "Capitale depuis la réunification allemande en 1990, 3,7 millions d'habitants."
  },
  {
    content: "Quelle est la capitale de l'Espagne ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Madrid",
    incorrect_answers: ["Barcelone", "Séville", "Valence"],
    contexte: "Centre géographique de l'Espagne, 3,3 millions d'habitants dans l'agglomération."
  },
  {
    content: "Quelle est la capitale de la France ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Paris",
    incorrect_answers: ["Lyon", "Marseille", "Toulouse"],
    contexte: "Ville Lumière, 2,2 millions d'habitants, 12 millions dans l'aire urbaine."
  },
  {
    content: "Quelle est la capitale du Royaume-Uni ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Londres",
    incorrect_answers: ["Manchester", "Édimbourg", "Birmingham"],
    contexte: "Capitale anglaise et britannique, 9 millions d'habitants, centre financier mondial."
  },
  {
    content: "Quelle est la capitale de l'Italie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Rome",
    incorrect_answers: ["Milan", "Naples", "Turin"],
    contexte: "Capitale depuis l'unification italienne, siège du gouvernement et du Vatican."
  },
  {
    content: "Quelle ville est surnommée 'La Ville Éternelle' ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Rome",
    incorrect_answers: ["Athènes", "Istanbul", "Jérusalem"],
    contexte: "Capitale italienne, 2,8 millions d'habitants, plus de 2800 ans d'histoire continue."
  },
  {
    content: "Dans quelle ville se trouve le Kremlin ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Moscou",
    incorrect_answers: ["Saint-Pétersbourg", "Kiev", "Minsk"],
    contexte: "Capitale russe, 12,5 millions d'habitants, siège du pouvoir depuis Ivan III."
  },
  {
    content: "Quelle est la capitale de la Grèce ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Athènes",
    incorrect_answers: ["Thessalonique", "Patras", "Héraklion"],
    contexte: "Berceau de la démocratie, 3,8 millions d'habitants, Acropole et Parthénon."
  },
  {
    content: "Quelle est la capitale du Portugal ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Lisbonne",
    incorrect_answers: ["Porto", "Coimbra", "Braga"],
    contexte: "550 000 habitants, sept collines, tramways historiques et architecture manuéline."
  },
  {
    content: "Quel est le plus petit pays du monde ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Vatican",
    incorrect_answers: ["Monaco", "Nauru", "Saint-Marin"],
    contexte: "État papal de 0,44 km², environ 800 habitants, au cœur de Rome."
  },
  {
    content: "Dans quel pays se trouve la région de Bavière ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Allemagne",
    incorrect_answers: ["Autriche", "Suisse", "République tchèque"],
    contexte: "Plus grand Land allemand, capitale Munich, connu pour l'Oktoberfest et châteaux."
  },
  {
    content: "Quelle est la capitale des Pays-Bas ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Amsterdam",
    incorrect_answers: ["La Haye", "Rotterdam", "Utrecht"],
    contexte: "870 000 habitants, canaux historiques, vélos et architecture des XVII-XVIIIe siècles."
  },
  {
    content: "Quelle est la capitale de la Suisse ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Berne",
    incorrect_answers: ["Zurich", "Genève", "Lausanne"],
    contexte: "133 000 habitants, capitale fédérale depuis 1848, vieille ville UNESCO."
  },
  {
    content: "Quelle est la capitale de la Belgique ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Bruxelles",
    incorrect_answers: ["Anvers", "Gand", "Liège"],
    contexte: "1,2 million d'habitants, capitale européenne, siège UE et OTAN."
  },
  {
    content: "Quelle est la capitale de la Norvège ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Oslo",
    incorrect_answers: ["Bergen", "Trondheim", "Stavanger"],
    contexte: "680 000 habitants, anciennement appelée Christiania jusqu'en 1925."
  },

  # EUROPE - INTERMÉDIAIRE (15 questions)
  {
    content: "Dans quelle région française se trouve Lyon ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Auvergne-Rhône-Alpes",
    incorrect_answers: ["Bourgogne-Franche-Comté", "Provence-Alpes-Côte d'Azur", "Occitanie"],
    contexte: "Troisième ville française, 515 000 habitants, confluence du Rhône et Saône."
  },
  {
    content: "Dans quel pays se trouve la région de Catalogne ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Espagne",
    incorrect_answers: ["France", "Andorre", "Portugal"],
    contexte: "Communauté autonome espagnole, 7,7 millions d'habitants, capitale Barcelone."
  },
  {
    content: "Dans quelle région italienne se trouve Venise ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Vénétie",
    incorrect_answers: ["Lombardie", "Toscane", "Ligurie"],
    contexte: "Région du nord-est, 260 000 habitants vénitiens sur 118 îles reliées."
  },
  {
    content: "Quelle est la capitale de la Pologne ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Varsovie",
    incorrect_answers: ["Cracovie", "Gdansk", "Wroclaw"],
    contexte: "1,8 million d'habitants, reconstruite après destruction en Seconde Guerre mondiale."
  },
  {
    content: "Quelle est la capitale de la République tchèque ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Prague",
    incorrect_answers: ["Brno", "Bratislava", "Budapest"],
    contexte: "Ville aux cent clochers, 1,3 million d'habitants, joyau architectural médiéval."
  },
  {
    content: "Dans quel pays se trouve la région de Transylvanie ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Roumanie",
    incorrect_answers: ["Hongrie", "Bulgarie", "Serbie"],
    contexte: "Région historique roumaine, 2,3 millions d'habitants, châteaux et légendes gothiques."
  },
  {
    content: "Quelle est la capitale de la Suède ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Stockholm",
    incorrect_answers: ["Göteborg", "Malmö", "Uppsala"],
    contexte: "Venise du Nord, 975 000 habitants répartis sur 14 îles."
  },
  {
    content: "Dans quelle région française se trouve Marseille ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Provence-Alpes-Côte d'Azur",
    incorrect_answers: ["Occitanie", "Auvergne-Rhône-Alpes", "Nouvelle-Aquitaine"],
    contexte: "Plus vieille ville de France, 870 000 habitants, port méditerranéen majeur."
  },
  {
    content: "Quelle est la capitale de la Hongrie ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Budapest",
    incorrect_answers: ["Debrecen", "Szeged", "Pécs"],
    contexte: "Perle du Danube, 1,7 million d'habitants, union de Buda et Pest."
  },
  {
    content: "Quelle est la capitale de l'Autriche ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Vienne",
    incorrect_answers: ["Salzbourg", "Innsbruck", "Graz"],
    contexte: "Capitale impériale, 1,9 million d'habitants, capitale musicale européenne."
  },
  {
    content: "Quelle est la capitale de la Finlande ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Helsinki",
    incorrect_answers: ["Tampere", "Turku", "Oulu"],
    contexte: "650 000 habitants, architecture néoclassique, design nordique et saunas."
  },
  {
    content: "Quelle est la capitale du Danemark ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Copenhague",
    incorrect_answers: ["Aarhus", "Aalborg", "Odense"],
    contexte: "630 000 habitants, port des marchands, vélos et architecture scandinave moderne."
  },
  {
    content: "Quelle est la capitale de l'Irlande ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Dublin",
    incorrect_answers: ["Cork", "Galway", "Limerick"],
    contexte: "1,4 million d'habitants, ville noire de la tourbe, berceau littéraire européen."
  },
  {
    content: "Dans quelle région britannique se trouve Édimbourg ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Écosse",
    incorrect_answers: ["Angleterre", "Pays de Galles", "Irlande du Nord"],
    contexte: "540 000 habitants, capitale écossaise, château et festival international réputé."
  },
  {
    content: "Quelle est la capitale de l'Islande ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Reykjavik",
    incorrect_answers: ["Akureyri", "Keflavik", "Hafnarfjordur"],
    contexte: "130 000 habitants, capitale la plus septentrionale, géothermie et culture nordique."
  },

  # EUROPE - DIFFICILE (15 questions)
  {
    content: "Dans quel pays se trouve la région des Flandres ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Belgique",
    incorrect_answers: ["Pays-Bas", "France", "Allemagne"],
    contexte: "Région néerlandophone belge, 6,5 millions d'habitants, capitale Bruxelles."
  },
  {
    content: "Dans quel pays se trouve la région de Bohême ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "République tchèque",
    incorrect_answers: ["Autriche", "Hongrie", "Slovaquie"],
    contexte: "Région historique tchèque occidentale, capitale Prague, riche patrimoine culturel."
  },
  {
    content: "Dans quelle région espagnole se trouve Séville ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Andalousie",
    incorrect_answers: ["Castille-La Manche", "Estrémadure", "Murcie"],
    contexte: "Capitale andalouse, 700 000 habitants, patrimoine mauresque et flamenco authentique."
  },
  {
    content: "Dans quel pays se trouve la région de Galice ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Espagne",
    incorrect_answers: ["Portugal", "France", "Pologne"],
    contexte: "Communauté autonome espagnole du nord-ouest, 2,7 millions d'habitants, langue galicienne."
  },
  {
    content: "Dans quelle région britannique se trouve Liverpool ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Angleterre",
    incorrect_answers: ["Écosse", "Pays de Galles", "Irlande du Nord"],
    contexte: "Nord-ouest anglais, 500 000 habitants, berceau des Beatles et grand port."
  },
  {
    content: "Dans quel pays se trouve la région de Moldavie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Roumanie",
    incorrect_answers: ["Moldova", "Ukraine", "Bulgarie"],
    contexte: "Région historique roumaine orientale, ne pas confondre avec République de Moldova."
  },
  {
    content: "Quelle est la plus grande ville de Russie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Moscou",
    incorrect_answers: ["Saint-Pétersbourg", "Novossibirsk", "Ekaterinbourg"],
    contexte: "Capitale fédérale, 12,5 millions d'habitants, centre politique et économique russe."
  },
  {
    content: "Quelle est la capitale de la Slovénie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Ljubljana",
    incorrect_answers: ["Zagreb", "Sarajevo", "Skopje"],
    contexte: "295 000 habitants, dragons sculptés, pont de l'architecte Plečnik."
  },
  {
    content: "Quelle est la capitale de la Croatie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Zagreb",
    incorrect_answers: ["Split", "Rijeka", "Osijek"],
    contexte: "790 000 habitants, ville haute médiévale, capitale culturelle des Balkans."
  },
  {
    content: "Quelle est la capitale de la Slovaquie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Bratislava",
    incorrect_answers: ["Košice", "Prešov", "Žilina"],
    contexte: "430 000 habitants, château sur le Danube, proche de Vienne."
  },
  {
    content: "Quelle est la capitale de l'Estonie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Tallinn",
    incorrect_answers: ["Tartu", "Narva", "Pärnu"],
    contexte: "440 000 habitants, vieille ville médiévale, révolution numérique estonienne."
  },
  {
    content: "Quelle est la capitale de la Lettonie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Riga",
    incorrect_answers: ["Daugavpils", "Liepāja", "Jelgava"],
    contexte: "640 000 habitants, art nouveau remarquable, port de la Baltique."
  },
  {
    content: "Quelle est la capitale de la Lituanie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Vilnius",
    incorrect_answers: ["Kaunas", "Klaipėda", "Šiauliai"],
    contexte: "580 000 habitants, vieille ville baroque, centre géographique européen."
  },
  {
    content: "Dans quel pays se trouve la région de Provence ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "France",
    incorrect_answers: ["Italie", "Espagne", "Monaco"],
    contexte: "5 millions d'habitants, lavande et vignobles, art de vivre méditerranéen."
  },
  {
    content: "Quelle est la capitale de la Bulgarie ?",
    difficulty: "difficile",
    category: "régions, états, villes et capitales",
    region: "Europe",
    correct_answer: "Sofia",
    incorrect_answers: ["Plovdiv", "Varna", "Burgas"],
    contexte: "1,4 million d'habitants, sagesse en grec, carrefour historique des Balkans."
  },

  # ASIE - 45 questions (15 faciles + 15 intermédiaires + 15 difficiles)

  # ASIE - FACILE (15 questions)
  {
    content: "Quelle est la capitale du Japon ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Tokyo",
    incorrect_answers: ["Osaka", "Kyoto", "Yokohama"],
    contexte: "Plus grande agglomération mondiale, 37 millions d'habitants, mégalopole moderne."
  },
  {
    content: "Quelle est la capitale de la Chine ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Pékin",
    incorrect_answers: ["Shanghai", "Canton", "Shenzhen"],
    contexte: "Beijing en chinois, 21 millions d'habitants, centre politique chinois millénaire."
  },
  {
    content: "Quelle est la capitale de l'Inde ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "New Delhi",
    incorrect_answers: ["Mumbai", "Calcutta", "Chennai"],
    contexte: "30 millions d'habitants métropolitains, nouvelle Delhi construite par les Britanniques."
  },
  {
    content: "Quelle est la capitale de la Russie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Moscou",
    incorrect_answers: ["Saint-Pétersbourg", "Novossibirsk", "Vladivostok"],
    contexte: "Capitale transcontinentale, 12,5 millions d'habitants, centre du pouvoir russe."
  },
  {
    content: "Quelle est la plus grande ville de l'Inde ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Mumbai",
    incorrect_answers: ["New Delhi", "Calcutta", "Bangalore"],
    contexte: "Bombay historiquement, 20 millions d'habitants, capitale économique et Bollywood."
  },
  {
    content: "Quelle est la capitale de la Corée du Sud ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Séoul",
    incorrect_answers: ["Busan", "Incheon", "Daegu"],
    contexte: "Seoul en coréen, 9,7 millions d'habitants, technologie et K-pop."
  },
  {
    content: "Quelle est la capitale de Singapour ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Singapour",
    incorrect_answers: ["Johor Bahru", "Malacca", "Batam"],
    contexte: "Cité-État, 5,9 millions d'habitants, hub financier et commercial asiatique."
  },
  {
    content: "Quelle est la capitale de la Thaïlande ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Bangkok",
    incorrect_answers: ["Chiang Mai", "Phuket", "Pattaya"],
    contexte: "Krung Thep en thaï, 10,5 millions d'habitants, temples dorés magnifiques."
  },
  {
    content: "Quelle est la capitale de l'Indonésie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Jakarta",
    incorrect_answers: ["Surabaya", "Bandung", "Medan"],
    contexte: "10,5 millions d'habitants, surnommée Big Durian, capitale en transition."
  },
  {
    content: "Quelle ville est surnommée 'La Perle de l'Orient' ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Hong Kong",
    incorrect_answers: ["Singapour", "Shanghai", "Bangkok"],
    contexte: "Région administrative spéciale chinoise, 7,5 millions d'habitants, skyline impressionnant."
  },
  {
    content: "Quelle est la plus grande ville de Turquie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Istanbul",
    incorrect_answers: ["Ankara", "Izmir", "Bursa"],
    contexte: "Ancienne Constantinople, 15 millions d'habitants, pont entre Europe et Asie."
  },
  {
    content: "Quelle est la capitale des Philippines ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Manille",
    incorrect_answers: ["Cebu", "Davao", "Quezon City"],
    contexte: "Maynila en tagalog, 13,5 millions d'habitants dans l'agglomération."
  },
  {
    content: "Quelle est la capitale de la Malaisie ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Kuala Lumpur",
    incorrect_answers: ["George Town", "Johor Bahru", "Ipoh"],
    contexte: "KL en abrégé, 1,8 million d'habitants, tours Petronas emblématiques."
  },
  {
    content: "Quel est le plus grand pays du monde ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Russie",
    incorrect_answers: ["Canada", "Chine", "États-Unis"],
    contexte: "17,1 millions km², s'étend sur 11 fuseaux horaires, continent eurasiatique."
  },
  {
    content: "Quelle est la capitale de l'Iran ?",
    difficulty: "facile",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Téhéran",
    incorrect_answers: ["Isfahan", "Shiraz", "Mashhad"],
    contexte: "9,3 millions d'habitants, ville sous les montagnes, centre politique persan."
  },

  # ASIE - INTERMÉDIAIRE (15 questions)
  {
    content: "Quelle est la capitale du Vietnam ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Hanoï",
    incorrect_answers: ["Hô Chi Minh-Ville", "Da Nang", "Hue"],
    contexte: "Ha Noi en vietnamien, 8 millions d'habitants, histoire millénaire."
  },
  {
    content: "Dans quel pays se trouve la région du Pendjab ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Inde et Pakistan",
    incorrect_answers: ["Inde", "Pakistan", "Afghanistan"],
    contexte: "Région historique partagée lors de la partition de 1947."
  },
  {
    content: "Quelle est la capitale du Cambodge ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Phnom Penh",
    incorrect_answers: ["Siem Reap", "Battambang", "Sihanoukville"],
    contexte: "2,2 millions d'habitants, confluent du Mékong et Tonlé Sap."
  },
  {
    content: "Quelle est la capitale de l'Afghanistan ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Kaboul",
    incorrect_answers: ["Kandahar", "Hérat", "Mazar-i-Sharif"],
    contexte: "Kabul en dari, 4,6 millions d'habitants, capitale historique afghane."
  },
  {
    content: "Quelle est la capitale d'Israël ?",
    difficulty: "intermédiaire",
    category: "régions, états, villes et capitales",
    region: "Asie",
    correct_answer: "Jérusalem",
    incorrect_answers: ["Tel Aviv", "Haïfa", "Beer-Sheva"],
    contexte: "930 000 habitants, ville sainte des trois monothéismes, capitale contestée."
  },

  # ETHNIES, RELIGIONS, LANGUES, COUTUMES via GEMINI Flash 2.5

  # Europe - Facile (1-15)
  {
    content: "Quelle est la langue officielle de la Suisse, bien que l'allemand soit la langue maternelle de la majorité de ses habitants ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le français, l'allemand, l'italien et le romanche",
    incorrect_answers: ["Le français et l'allemand", "L'allemand et l'italien", "Le français, l'allemand et l'italien"],
    contexte: "La Suisse a quatre langues officielles, bien que l'allemand soit la plus parlée."
  },
  {
    content: "Dans quel pays les habitants ont-ils l'habitude de se saluer en se faisant une bise sur chaque joue ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "France",
    incorrect_answers: ["Allemagne", "Angleterre", "Italie"],
    contexte: "La bise est une salutation très courante en France, surtout entre amis et membres de la famille."
  },
  {
    content: "Quel est le prénom le plus populaire en Espagne ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Antonio",
    incorrect_answers: ["Francisco", "José", "Juan"],
    contexte: "Antonio est un prénom masculin très populaire en Espagne et dans d'autres pays hispanophones."
  },
  {
    content: "Quelle est la langue officielle de l'Italie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "L'italien",
    incorrect_answers: ["Le français", "L'anglais", "L'allemand"],
    contexte: "L'italien est la langue officielle de l'Italie. Il est parlé par plus de 60 millions de personnes."
  },
  {
    content: "Quel est le plat national de l'Espagne ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "La paella",
    incorrect_answers: ["Le jambon de Parme", "Le goulash", "Le risotto"],
    contexte: "La paella est un plat de riz originaire de la région de Valence en Espagne."
  },
  {
    content: "Quel est le jour de Noël en Russie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le 7 janvier",
    incorrect_answers: ["Le 25 décembre", "Le 1er janvier", "Le 6 janvier"],
    contexte: "La Russie utilise le calendrier julien pour les fêtes religieuses, ce qui place Noël le 7 janvier."
  },
  {
    content: "Dans quel pays le Père Noël s'appelle-t-il Sinterklaas ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Les Pays-Bas",
    incorrect_answers: ["Allemagne", "Belgique", "Luxembourg"],
    contexte: "Sinterklaas est un personnage légendaire des Pays-Bas. Il est considéré comme le Père Noël."
  },
  {
    content: "Quelle est la religion dominante en Italie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'orthodoxie"],
    contexte: "Le catholicisme est la religion dominante en Italie. Il est la religion d'État."
  },
  {
    content: "Quelle est la religion dominante en France ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "Le judaïsme"],
    contexte: "Le catholicisme est la religion dominante en France. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Hongrie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le goulash",
    incorrect_answers: ["Le risotto", "La paella", "La moussaka"],
    contexte: "Le goulash est un plat de viande et de légumes originaire de la Hongrie. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de l'Irlande ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "L'irlandais",
    incorrect_answers: ["L'anglais", "Le gallois", "Le gaélique"],
    contexte: "L'irlandais est la langue officielle de l'Irlande. Il est parlé par plus de 1,5 million de personnes."
  },
  {
    content: "Quel est le jour de la Saint-Patrick ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le 17 mars",
    incorrect_answers: ["Le 1er mars", "Le 17 février", "Le 17 avril"],
    contexte: "Le jour de la Saint-Patrick est une fête nationale en Irlande. Il est célébré le 17 mars."
  },
  {
    content: "Quelle est la religion dominante en Pologne ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'orthodoxie", "L'islam"],
    contexte: "Le catholicisme est la religion dominante en Pologne. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Autriche ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le schnitzel",
    incorrect_answers: ["La paella", "Le goulash", "Le risotto"],
    contexte: "Le schnitzel est un plat de viande et de légumes originaire de l'Autriche. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la religion dominante en Allemagne ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le protestantisme",
    incorrect_answers: ["Le catholicisme", "L'islam", "L'orthodoxie"],
    contexte: "Le protestantisme est la religion dominante en Allemagne. Il est la religion d'État."
  },

  # Europe - Intermédiaire (16-30)
  {
    content: "Quel est le nom de la fête célébrée en Suède pour fêter le solstice d'été ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Midsommar",
    incorrect_answers: ["Julafton", "Kräftskiva", "Valborg"],
    contexte: "Midsommar est la fête la plus importante en Suède. Elle est célébrée à l'occasion du solstice d'été."
  },
  {
    content: "Quelle langue est parlée en Belgique et au Luxembourg ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le français",
    incorrect_answers: ["L'allemand", "Le néerlandais", "L'anglais"],
    contexte: "Le français est la langue officielle de la Belgique et du Luxembourg. Il est parlé par plus de 40 millions de personnes."
  },
  {
    content: "Quelle est la langue officielle de la Norvège ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le norvégien",
    incorrect_answers: ["Le suédois", "Le danois", "Le finnois"],
    contexte: "Le norvégien est la langue officielle de la Norvège. Il est parlé par plus de 4 millions de personnes."
  },
  {
    content: "Quel est le nom du plat national de la Pologne ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le bigos",
    incorrect_answers: ["La paella", "Le goulash", "Le risotto"],
    contexte: "Le bigos est un plat de chou et de viande originaire de la Pologne. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la religion dominante en Grèce ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "L'orthodoxie",
    incorrect_answers: ["Le catholicisme", "Le protestantisme", "L'islam"],
    contexte: "L'orthodoxie est la religion dominante en Grèce. Elle est la religion d'État."
  },
  {
    content: "Quel est le nom du plat national de l'Irlande ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le bœuf et chou",
    incorrect_answers: ["Le colcannon", "Le corned-beef", "Le Irish stew"],
    contexte: "Le bœuf et chou est un plat de viande et de légumes originaire de l'Irlande. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle du Royaume-Uni ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "L'anglais",
    incorrect_answers: ["Le gallois", "L'irlandais", "L'écossais"],
    contexte: "L'anglais est la langue officielle du Royaume-Uni. Il est parlé par plus de 60 millions de personnes."
  },
  {
    content: "Quel est le plat national de l'Écosse ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le haggis",
    incorrect_answers: ["Le bœuf et chou", "Le colcannon", "Le corned-beef"],
    contexte: "Le haggis est un plat de viande et de légumes originaire de l'Écosse. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la religion dominante en Suède ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le protestantisme",
    incorrect_answers: ["Le catholicisme", "L'orthodoxie", "L'islam"],
    contexte: "Le protestantisme est la religion dominante en Suède. Il est la religion d'État."
  },
  {
    content: "Quel est le prénom le plus populaire en Allemagne ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Hans",
    incorrect_answers: ["Peter", "Michael", "Wolfgang"],
    contexte: "Hans est un prénom masculin très populaire en Allemagne et dans d'autres pays germanophones."
  },
  {
    content: "Quelle est la langue officielle de la Belgique ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le français, le néerlandais et l'allemand",
    incorrect_answers: ["Le français et le néerlandais", "Le néerlandais et l'allemand", "Le français et l'allemand"],
    contexte: "La Belgique a trois langues officielles, bien que le français et le néerlandais soient les plus parlées."
  },
  {
    content: "Quel est le nom du plat national de l'Espagne ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "La paella",
    incorrect_answers: ["Le jambon de Parme", "Le goulash", "Le risotto"],
    contexte: "La paella est un plat de riz originaire de la région de Valence en Espagne."
  },
  {
    content: "Quel est le prénom le plus populaire en Italie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Francesco",
    incorrect_answers: ["Antonio", "Giuseppe", "Giovanni"],
    contexte: "Francesco est un prénom masculin très populaire en Italie et dans d'autres pays italophones."
  },
  {
    content: "Quelle est la religion dominante en Russie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "L'orthodoxie",
    incorrect_answers: ["Le catholicisme", "Le protestantisme", "L'islam"],
    contexte: "L'orthodoxie est la religion dominante en Russie. Elle est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Hongrie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le goulash",
    incorrect_answers: ["Le risotto", "La paella", "La moussaka"],
    contexte: "Le goulash est un plat de viande et de légumes originaire de la Hongrie. Il est considéré comme le plat national."
  },

  # Europe - Difficile (31-45)
  {
    content: "Quel est le nom de la fête célébrée en Norvège pour fêter le solstice d'été ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Sankthansaften",
    incorrect_answers: ["Julaften", "Kräftskiva", "Valborg"],
    contexte: "Sankthansaften est la fête la plus importante en Norvège. Elle est célébrée à l'occasion du solstice d'été."
  },
  {
    content: "Quelle est la langue officielle de la Belgique ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le français, le néerlandais et l'allemand",
    incorrect_answers: ["Le français et le néerlandais", "Le néerlandais et l'allemand", "Le français et l'allemand"],
    contexte: "La Belgique a trois langues officielles, bien que le français et le néerlandais soient les plus parlées."
  },
  {
    content: "Quel est le nom du plat national de la Pologne ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le bigos",
    incorrect_answers: ["La paella", "Le goulash", "Le risotto"],
    contexte: "Le bigos est un plat de chou et de viande originaire de la Pologne. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la religion dominante en Grèce ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "L'orthodoxie",
    incorrect_answers: ["Le catholicisme", "Le protestantisme", "L'islam"],
    contexte: "L'orthodoxie est la religion dominante en Grèce. Elle est la religion d'État."
  },
  {
    content: "Quel est le nom du plat national de l'Irlande ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le bœuf et chou",
    incorrect_answers: ["Le colcannon", "Le corned-beef", "Le Irish stew"],
    contexte: "Le bœuf et chou est un plat de viande et de légumes originaire de l'Irlande. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle du Royaume-Uni ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "L'anglais",
    incorrect_answers: ["Le gallois", "L'irlandais", "L'écossais"],
    contexte: "L'anglais est la langue officielle du Royaume-Uni. Il est parlé par plus de 60 millions de personnes."
  },
  {
    content: "Quel est le plat national de l'Écosse ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le haggis",
    incorrect_answers: ["Le bœuf et chou", "Le colcannon", "Le corned-beef"],
    contexte: "Le haggis est un plat de viande et de légumes originaire de l'Écosse. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la religion dominante en Suède ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le protestantisme",
    incorrect_answers: ["Le catholicisme", "L'orthodoxie", "L'islam"],
    contexte: "Le protestantisme est la religion dominante en Suède. Il est la religion d'État."
  },
  {
    content: "Quel est le prénom le plus populaire en Allemagne ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Hans",
    incorrect_answers: ["Peter", "Michael", "Wolfgang"],
    contexte: "Hans est un prénom masculin très populaire en Allemagne et dans d'autres pays germanophones."
  },
  {
    content: "Quelle est la langue officielle de la Belgique ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le français, le néerlandais et l'allemand",
    incorrect_answers: ["Le français et le néerlandais", "Le néerlandais et l'allemand", "Le français et l'allemand"],
    contexte: "La Belgique a trois langues officielles, bien que le français et le néerlandais soient les plus parlées."
  },
  {
    content: "Quel est le nom du plat national de l'Espagne ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "La paella",
    incorrect_answers: ["Le jambon de Parme", "Le goulash", "Le risotto"],
    contexte: "La paella est un plat de riz originaire de la région de Valence en Espagne."
  },
  {
    content: "Quel est le prénom le plus populaire en Italie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Francesco",
    incorrect_answers: ["Antonio", "Giuseppe", "Giovanni"],
    contexte: "Francesco est un prénom masculin très populaire en Italie et dans d'autres pays italophones."
  },
  {
    content: "Quelle est la religion dominante en Russie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "L'orthodoxie",
    incorrect_answers: ["Le catholicisme", "Le protestantisme", "L'islam"],
    contexte: "L'orthodoxie est la religion dominante en Russie. Elle est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Hongrie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le goulash",
    incorrect_answers: ["Le risotto", "La paella", "La moussaka"],
    contexte: "Le goulash est un plat de viande et de légumes originaire de la Hongrie. Il est considéré comme le plat national."
  },
  {
    content: "Quel est le nom du plat national de la Pologne ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Europe",
    correct_answer: "Le bigos",
    incorrect_answers: ["La paella", "Le goulash", "Le risotto"],
    contexte: "Le bigos est un plat de chou et de viande originaire de la Pologne. Il est considéré comme le plat national."
  },

  # Asie - Facile (46-60)
  {
    content: "Quelle est la langue officielle de la Chine ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le mandarin",
    incorrect_answers: ["Le cantonais", "Le japonais", "Le coréen"],
    contexte: "Le mandarin est la langue officielle de la Chine. Il est parlé par plus de 1 milliard de personnes."
  },
  {
    content: "Quelle est la religion dominante en Inde ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "L'hindouisme",
    incorrect_answers: ["Le bouddhisme", "Le christianisme", "L'islam"],
    contexte: "L'hindouisme est la religion dominante en Inde. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Japon ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le sushi",
    incorrect_answers: ["La soupe miso", "Les nouilles ramen", "Les gyozas"],
    contexte: "Le sushi est un plat japonais qui consiste en des boulettes de riz vinaigré garnies de poisson cru."
  },
  {
    content: "Quel est le nom de la fête célébrée en Chine pour fêter le Nouvel An ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le Nouvel An chinois",
    incorrect_answers: ["Le Nouvel An tibétain", "Le Nouvel An vietnamien", "Le Nouvel An coréen"],
    contexte: "Le Nouvel An chinois est la fête la plus importante en Chine. Il est célébré à l'occasion de la nouvelle lune."
  },
  {
    content: "Quelle est la langue officielle de l'Indonésie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "L'indonésien",
    incorrect_answers: ["Le malais", "Le javanais", "Le tagalog"],
    contexte: "L'indonésien est la langue officielle de l'Indonésie. Il est parlé par plus de 200 millions de personnes."
  },
  {
    content: "Quel est le plat national de l'Inde ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le biryani",
    incorrect_answers: ["Le curry", "Le tandoori", "Le naan"],
    contexte: "Le biryani est un plat de riz épicé avec de la viande ou du poisson, originaire de l'Inde."
  },
  {
    content: "Quelle est la religion dominante en Indonésie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "L'islam",
    incorrect_answers: ["Le bouddhisme", "L'hindouisme", "Le christianisme"],
    contexte: "L'islam est la religion dominante en Indonésie. Il est la religion d'État."
  },
  {
    content: "Quel est le prénom le plus populaire en Chine ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Li",
    incorrect_answers: ["Wang", "Zhang", "Liu"],
    contexte: "Li est un prénom très populaire en Chine. Il est le nom de famille le plus courant."
  },
  {
    content: "Quelle est la langue officielle du Japon ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le japonais",
    incorrect_answers: ["Le coréen", "Le mandarin", "Le cantonais"],
    contexte: "Le japonais est la langue officielle du Japon. Il est parlé par plus de 120 millions de personnes."
  },
  {
    content: "Quel est le plat national de la Corée du Sud ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le kimchi",
    incorrect_answers: ["Le bulgogi", "Le bibimbap", "Le tteokbokki"],
    contexte: "Le kimchi est un plat de chou fermenté originaire de la Corée du Sud. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la religion dominante au Japon ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le shintoïsme et le bouddhisme",
    incorrect_answers: ["Le shintoïsme", "Le bouddhisme", "Le confucianisme"],
    contexte: "Le shintoïsme et le bouddhisme sont les deux religions dominantes au Japon. Ils sont souvent pratiqués conjointement."
  },
  {
    content: "Quel est le prénom le plus populaire en Inde ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Anand",
    incorrect_answers: ["Sanjay", "Rahul", "Arjun"],
    contexte: "Anand est un prénom masculin très populaire en Inde et dans d'autres pays d'Asie du Sud."
  },
  {
    content: "Quelle est la langue officielle de la Corée du Sud ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le coréen",
    incorrect_answers: ["Le japonais", "Le mandarin", "Le cantonais"],
    contexte: "Le coréen est la langue officielle de la Corée du Sud. Il est parlé par plus de 70 millions de personnes."
  },
  {
    content: "Quel est le plat national de la Chine ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le canard laqué",
    incorrect_answers: ["Le riz frit", "Les nouilles sautées", "Les dim sum"],
    contexte: "Le canard laqué est un plat de canard rôti originaire de la Chine. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la religion dominante en Chine ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "L'athéisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "Le christianisme"],
    contexte: "L'athéisme est la religion dominante en Chine. Il est la religion d'État."
  },

  # Asie - Intermédiaire (61-75)
  {
    content: "Quelle est la langue officielle du Pakistan, bien que l'ourdou soit la langue nationale ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "L'anglais",
    incorrect_answers: ["L'ourdou", "Le pendjabi", "Le sindhi"],
    contexte: "L'anglais est la langue officielle du Pakistan. Il est parlé par plus de 100 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Corée du Sud ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le bouddhisme",
    incorrect_answers: ["Le christianisme", "Le confucianisme", "Le shintoïsme"],
    contexte: "Le bouddhisme est la religion dominante en Corée du Sud. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Pakistan ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le biryani",
    incorrect_answers: ["Le curry", "Le tandoori", "Le naan"],
    contexte: "Le biryani est un plat de riz épicé avec de la viande ou du poisson, originaire du Pakistan."
  },
  {
    content: "Quelle est la langue officielle du Bangladesh ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le bengali",
    incorrect_answers: ["L'anglais", "L'ourdou", "Le hindi"],
    contexte: "Le bengali est la langue officielle du Bangladesh. Il est parlé par plus de 160 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Pakistan ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "L'islam",
    incorrect_answers: ["L'hindouisme", "Le bouddhisme", "Le christianisme"],
    contexte: "L'islam est la religion dominante au Pakistan. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Bangladesh ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le riz et le poisson",
    incorrect_answers: ["Le curry", "Le biryani", "Le tandoori"],
    contexte: "Le riz et le poisson sont les plats les plus populaires au Bangladesh. Ils sont considérés comme le plat national."
  },
  {
    content: "Quelle est la religion dominante au Bangladesh ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "L'islam",
    incorrect_answers: ["L'hindouisme", "Le bouddhisme", "Le christianisme"],
    contexte: "L'islam est la religion dominante au Bangladesh. Il est la religion d'État."
  },
  {
    content: "Quel est le prénom le plus populaire en Corée du Sud ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Kim",
    incorrect_answers: ["Lee", "Park", "Choi"],
    contexte: "Kim est un prénom très populaire en Corée du Sud. Il est le nom de famille le plus courant."
  },
  {
    content: "Quelle est la langue officielle du Népal ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le népalais",
    incorrect_answers: ["Le hindi", "L'anglais", "Le bengali"],
    contexte: "Le népalais est la langue officielle du Népal. Il est parlé par plus de 20 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Népal ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "L'hindouisme",
    incorrect_answers: ["Le bouddhisme", "Le christianisme", "L'islam"],
    contexte: "L'hindouisme est la religion dominante au Népal. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Népal ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le dal bhat",
    incorrect_answers: ["Le curry", "Le biryani", "Le tandoori"],
    contexte: "Le dal bhat est un plat de riz et de lentilles originaire du Népal. Il est considéré comme le plat national."
  },
  {
    content: "Quel est le prénom le plus populaire au Népal ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Sanjay",
    incorrect_answers: ["Anand", "Rahul", "Arjun"],
    contexte: "Sanjay est un prénom masculin très populaire au Népal et dans d'autres pays d'Asie du Sud."
  },
  {
    content: "Quelle est la langue officielle du Sri Lanka ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le singhalais et le tamoul",
    incorrect_answers: ["Le singhalais", "Le tamoul", "L'anglais"],
    contexte: "Le singhalais et le tamoul sont les deux langues officielles du Sri Lanka. Ils sont parlés par plus de 20 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Sri Lanka ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le bouddhisme",
    incorrect_answers: ["L'hindouisme", "Le christianisme", "L'islam"],
    contexte: "Le bouddhisme est la religion dominante au Sri Lanka. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Sri Lanka ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le riz et le curry",
    incorrect_answers: ["Le curry", "Le biryani", "Le tandoori"],
    contexte: "Le riz et le curry sont les plats les plus populaires au Sri Lanka. Ils sont considérés comme le plat national."
  },

  # Asie - Difficile (76-90)
  {
    content: "Quelle est la langue officielle de la Thaïlande ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le thaïlandais",
    incorrect_answers: ["Le khmer", "Le lao", "Le vietnamien"],
    contexte: "Le thaïlandais est la langue officielle de la Thaïlande. Il est parlé par plus de 60 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Thaïlande ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le bouddhisme",
    incorrect_answers: ["L'hindouisme", "Le christianisme", "L'islam"],
    contexte: "Le bouddhisme est la religion dominante en Thaïlande. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Thaïlande ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le pad thaï",
    incorrect_answers: ["Le curry", "Le biryani", "Le tandoori"],
    contexte: "Le pad thaï est un plat de nouilles sautées originaire de la Thaïlande. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle du Vietnam ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le vietnamien",
    incorrect_answers: ["Le thaïlandais", "Le khmer", "Le lao"],
    contexte: "Le vietnamien est la langue officielle du Vietnam. Il est parlé par plus de 90 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Vietnam ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le bouddhisme",
    incorrect_answers: ["L'hindouisme", "Le christianisme", "L'islam"],
    contexte: "Le bouddhisme est la religion dominante au Vietnam. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Vietnam ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le phở",
    incorrect_answers: ["Le riz frit", "Les nouilles sautées", "Les dim sum"],
    contexte: "Le phở est un plat de nouilles et de bœuf originaire du Vietnam. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle du Cambodge ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le khmer",
    incorrect_answers: ["Le thaïlandais", "Le lao", "Le vietnamien"],
    contexte: "Le khmer est la langue officielle du Cambodge. Il est parlé par plus de 15 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Cambodge ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le bouddhisme",
    incorrect_answers: ["L'hindouisme", "Le christianisme", "L'islam"],
    contexte: "Le bouddhisme est la religion dominante au Cambodge. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Cambodge ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le amok",
    incorrect_answers: ["Le riz frit", "Les nouilles sautées", "Les dim sum"],
    contexte: "Le amok est un plat de poisson cuit à la vapeur avec du lait de coco et du curry, originaire du Cambodge."
  },
  {
    content: "Quelle est la langue officielle du Laos ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le lao",
    incorrect_answers: ["Le thaïlandais", "Le khmer", "Le vietnamien"],
    contexte: "Le lao est la langue officielle du Laos. Il est parlé par plus de 7 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Laos ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le bouddhisme",
    incorrect_answers: ["L'hindouisme", "Le christianisme", "L'islam"],
    contexte: "Le bouddhisme est la religion dominante au Laos. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Laos ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le riz gluant",
    incorrect_answers: ["Le riz frit", "Les nouilles sautées", "Les dim sum"],
    contexte: "Le riz gluant est un plat de riz cuit à la vapeur originaire du Laos. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle du Népal ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le népalais",
    incorrect_answers: ["Le hindi", "L'anglais", "Le bengali"],
    contexte: "Le népalais est la langue officielle du Népal. Il est parlé par plus de 20 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Népal ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "L'hindouisme",
    incorrect_answers: ["Le bouddhisme", "Le christianisme", "L'islam"],
    contexte: "L'hindouisme est la religion dominante au Népal. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Népal ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Asie",
    correct_answer: "Le dal bhat",
    incorrect_answers: ["Le curry", "Le biryani", "Le tandoori"],
    contexte: "Le dal bhat est un plat de riz et de lentilles originaire du Népal. Il est considéré comme le plat national."
  },

  # Océanie - Facile (91-105)
  {
    content: "Quelle est la langue officielle de l'Australie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais",
    incorrect_answers: ["L'australien", "Le maori", "L'indonésien"],
    contexte: "L'anglais est la langue officielle de l'Australie. Il est parlé par plus de 25 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Australie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante en Australie. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Australie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le vegemite",
    incorrect_answers: ["Le fish and chips", "Le steak", "Le poulet rôti"],
    contexte: "Le vegemite est un plat de viande et de légumes originaire de l'Australie. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais et le maori",
    incorrect_answers: ["L'anglais", "Le maori", "L'anglais et l'indonésien"],
    contexte: "L'anglais et le maori sont les deux langues officielles de la Nouvelle-Zélande. Ils sont parlés par plus de 4 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante en Nouvelle-Zélande. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le fish and chips",
    incorrect_answers: ["Le vegemite", "Le steak", "Le poulet rôti"],
    contexte: "Le fish and chips est un plat de poisson frit et de frites originaire de la Nouvelle-Zélande. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais, le tok pisin et le hiri motu",
    incorrect_answers: ["L'anglais", "Le tok pisin", "Le hiri motu"],
    contexte: "La Papouasie-Nouvelle-Guinée a trois langues officielles, bien que l'anglais soit la plus parlée."
  },
  {
    content: "Quelle est la religion dominante en Papouasie-Nouvelle-Guinée ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante en Papouasie-Nouvelle-Guinée. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le mumu",
    incorrect_answers: ["Le fish and chips", "Le vegemite", "Le steak"],
    contexte: "Le mumu est un plat de viande et de légumes cuits à la vapeur, originaire de la Papouasie-Nouvelle-Guinée."
  },
  {
    content: "Quelle est la langue officielle des îles Salomon ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais",
    incorrect_answers: ["Le tok pisin", "Le hiri motu", "L'indonésien"],
    contexte: "L'anglais est la langue officielle des îles Salomon. Il est parlé par plus de 600 000 personnes."
  },
  {
    content: "Quelle est la religion dominante des îles Salomon ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante des îles Salomon. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national des îles Salomon ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le poisson et le riz",
    incorrect_answers: ["Le mumu", "Le fish and chips", "Le vegemite"],
    contexte: "Le poisson et le riz sont les plats les plus populaires des îles Salomon. Ils sont considérés comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de Fidji ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais et le fidjien",
    incorrect_answers: ["L'anglais", "Le fidjien", "L'anglais et l'indonésien"],
    contexte: "L'anglais et le fidjien sont les deux langues officielles de Fidji. Ils sont parlés par plus de 900 000 personnes."
  },
  {
    content: "Quelle est la religion dominante à Fidji ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante à Fidji. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de Fidji ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le poisson cru et le riz",
    incorrect_answers: ["Le mumu", "Le fish and chips", "Le vegemite"],
    contexte: "Le poisson cru et le riz sont les plats les plus populaires à Fidji. Ils sont considérés comme le plat national."
  },

  # Océanie - Intermédiaire (106-120)
  {
    content: "Quelle est la langue officielle de la Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais et le maori",
    incorrect_answers: ["L'anglais", "Le maori", "L'anglais et l'indonésien"],
    contexte: "L'anglais et le maori sont les deux langues officielles de la Nouvelle-Zélande. Ils sont parlés par plus de 4 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante en Nouvelle-Zélande. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le fish and chips",
    incorrect_answers: ["Le vegemite", "Le steak", "Le poulet rôti"],
    contexte: "Le fish and chips est un plat de poisson frit et de frites originaire de la Nouvelle-Zélande. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais, le tok pisin et le hiri motu",
    incorrect_answers: ["L'anglais", "Le tok pisin", "Le hiri motu"],
    contexte: "La Papouasie-Nouvelle-Guinée a trois langues officielles, bien que l'anglais soit la plus parlée."
  },
  {
    content: "Quelle est la religion dominante en Papouasie-Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante en Papouasie-Nouvelle-Guinée. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le mumu",
    incorrect_answers: ["Le fish and chips", "Le vegemite", "Le steak"],
    contexte: "Le mumu est un plat de viande et de légumes cuits à la vapeur, originaire de la Papouasie-Nouvelle-Guinée."
  },
  {
    content: "Quelle est la langue officielle des îles Salomon ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais",
    incorrect_answers: ["Le tok pisin", "Le hiri motu", "L'indonésien"],
    contexte: "L'anglais est la langue officielle des îles Salomon. Il est parlé par plus de 600 000 personnes."
  },
  {
    content: "Quelle est la religion dominante des îles Salomon ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante des îles Salomon. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national des îles Salomon ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le poisson et le riz",
    incorrect_answers: ["Le mumu", "Le fish and chips", "Le vegemite"],
    contexte: "Le poisson et le riz sont les plats les plus populaires des îles Salomon. Ils sont considérés comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de Fidji ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais et le fidjien",
    incorrect_answers: ["L'anglais", "Le fidjien", "L'anglais et l'indonésien"],
    contexte: "L'anglais et le fidjien sont les deux langues officielles de Fidji. Ils sont parlés par plus de 900 000 personnes."
  },
  {
    content: "Quelle est la religion dominante à Fidji ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante à Fidji. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de Fidji ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le poisson cru et le riz",
    incorrect_answers: ["Le mumu", "Le fish and chips", "Le vegemite"],
    contexte: "Le poisson cru et le riz sont les plats les plus populaires à Fidji. Ils sont considérés comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de Kiribati ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais et le gilbertin",
    incorrect_answers: ["L'anglais", "Le gilbertin", "L'anglais et l'indonésien"],
    contexte: "L'anglais et le gilbertin sont les deux langues officielles de Kiribati. Ils sont parlés par plus de 100 000 personnes."
  },
  {
    content: "Quelle est la religion dominante à Kiribati ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante à Kiribati. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de Kiribati ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le poisson et le riz",
    incorrect_answers: ["Le mumu", "Le fish and chips", "Le vegemite"],
    contexte: "Le poisson et le riz sont les plats les plus populaires à Kiribati. Ils sont considérés comme le plat national."
  },

  # Océanie - Difficile (121-135)
  {
    content: "Quelle est la langue officielle des îles Marshall ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais et le marshallais",
    incorrect_answers: ["L'anglais", "Le marshallais", "L'anglais et l'indonésien"],
    contexte: "L'anglais et le marshallais sont les deux langues officielles des îles Marshall. Ils sont parlés par plus de 50 000 personnes."
  },
  {
    content: "Quelle est la religion dominante aux îles Marshall ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le protestantisme",
    incorrect_answers: ["Le catholicisme", "L'islam", "L'hindouisme"],
    contexte: "Le protestantisme est la religion dominante aux îles Marshall. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national des îles Marshall ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le poisson et le riz",
    incorrect_answers: ["Le mumu", "Le fish and chips", "Le vegemite"],
    contexte: "Le poisson et le riz sont les plats les plus populaires des îles Marshall. Ils sont considérés comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de la Micronésie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais",
    incorrect_answers: ["Le gilbertin", "Le marshallais", "L'indonésien"],
    contexte: "L'anglais est la langue officielle de la Micronésie. Il est parlé par plus de 100 000 personnes."
  },
  {
    content: "Quelle est la religion dominante en Micronésie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante en Micronésie. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Micronésie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le poisson et le riz",
    incorrect_answers: ["Le mumu", "Le fish and chips", "Le vegemite"],
    contexte: "Le poisson et le riz sont les plats les plus populaires en Micronésie. Ils sont considérés comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de Nauru ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le nauruan et l'anglais",
    incorrect_answers: ["Le nauruan", "L'anglais", "Le nauruan et l'indonésien"],
    contexte: "Le nauruan et l'anglais sont les deux langues officielles de Nauru. Ils sont parlés par plus de 10 000 personnes."
  },
  {
    content: "Quelle est la religion dominante à Nauru ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le protestantisme",
    incorrect_answers: ["Le catholicisme", "L'islam", "L'hindouisme"],
    contexte: "Le protestantisme est la religion dominante à Nauru. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de Nauru ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le poisson et le riz",
    incorrect_answers: ["Le mumu", "Le fish and chips", "Le vegemite"],
    contexte: "Le poisson et le riz sont les plats les plus populaires à Nauru. Ils sont considérés comme le plat national."
  },
  {
    content: "Quelle est la langue officielle des Palaos ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais et le palauan",
    incorrect_answers: ["L'anglais", "Le palauan", "L'anglais et l'indonésien"],
    contexte: "L'anglais et le palauan sont les deux langues officielles des Palaos. Ils sont parlés par plus de 20 000 personnes."
  },
  {
    content: "Quelle est la religion dominante aux Palaos ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante aux Palaos. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national des Palaos ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le poisson et le riz",
    incorrect_answers: ["Le mumu", "Le fish and chips", "Le vegemite"],
    contexte: "Le poisson et le riz sont les plats les plus populaires aux Palaos. Ils sont considérés comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "L'anglais, le tok pisin et le hiri motu",
    incorrect_answers: ["L'anglais", "Le tok pisin", "Le hiri motu"],
    contexte: "La Papouasie-Nouvelle-Guinée a trois langues officielles, bien que l'anglais soit la plus parlée."
  },
  {
    content: "Quelle est la religion dominante en Papouasie-Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante en Papouasie-Nouvelle-Guinée. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Océanie",
    correct_answer: "Le mumu",
    incorrect_answers: ["Le fish and chips", "Le vegemite", "Le steak"],
    contexte: "Le mumu est un plat de viande et de légumes cuits à la vapeur, originaire de la Papouasie-Nouvelle-Guinée."
  },

  # Amérique - Facile (136-150)
  {
    content: "Quelle est la langue officielle du Canada ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'anglais et le français",
    incorrect_answers: ["L'anglais", "Le français", "L'anglais et l'espagnol"],
    contexte: "Le Canada a deux langues officielles, l'anglais et le français. Ils sont parlés par plus de 35 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Canada ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante au Canada. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Canada ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "La poutine",
    incorrect_answers: ["Le steak", "Le poulet rôti", "Les frites"],
    contexte: "La poutine est un plat de frites, de fromage et de sauce au jus de viande originaire du Canada. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle des États-Unis ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'anglais",
    incorrect_answers: ["L'espagnol", "Le français", "L'allemand"],
    contexte: "L'anglais est la langue officielle des États-Unis. Il est parlé par plus de 300 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante aux États-Unis ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante aux États-Unis. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national des États-Unis ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le hamburger",
    incorrect_answers: ["Le steak", "Le poulet rôti", "Les frites"],
    contexte: "Le hamburger est un plat de viande hachée et de pain originaire des États-Unis. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle du Mexique ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["L'anglais", "Le français", "L'allemand"],
    contexte: "L'espagnol est la langue officielle du Mexique. Il est parlé par plus de 120 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Mexique ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Mexique. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Mexique ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le taco",
    incorrect_answers: ["Le burrito", "Le quesadilla", "Le enchilada"],
    contexte: "Le taco est un plat de tortilla de maïs garnie de viande, de légumes et de sauce, originaire du Mexique."
  },
  {
    content: "Quelle est la langue officielle du Brésil ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le portugais",
    incorrect_answers: ["L'espagnol", "Le français", "L'anglais"],
    contexte: "Le portugais est la langue officielle du Brésil. Il est parlé par plus de 200 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Brésil ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Brésil. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Brésil ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "La feijoada",
    incorrect_answers: ["Le steak", "Le poulet rôti", "Les frites"],
    contexte: "La feijoada est un plat de haricots noirs et de viande de porc originaire du Brésil. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de l'Argentine ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["L'anglais", "Le français", "L'allemand"],
    contexte: "L'espagnol est la langue officielle de l'Argentine. Il est parlé par plus de 40 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Argentine ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante en Argentine. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Argentine ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le barbecue",
    incorrect_answers: ["Le steak", "Le poulet rôti", "Les frites"],
    contexte: "Le barbecue est un plat de viande grillée originaire de l'Argentine. Il est considéré comme le plat national."
  },

  # Amérique - Intermédiaire (151-165)
  {
    content: "Quelle est la langue officielle du Pérou, bien que le quechua et l'aymara soient également parlés ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["Le quechua", "L'aymara", "Le français"],
    contexte: "L'espagnol est la langue officielle du Pérou. Il est parlé par plus de 30 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Pérou ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Pérou. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Pérou ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le ceviche",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "Le ceviche est un plat de poisson cru mariné dans du jus de citron, originaire du Pérou."
  },
  {
    content: "Quelle est la langue officielle du Chili ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["L'anglais", "Le français", "L'allemand"],
    contexte: "L'espagnol est la langue officielle du Chili. Il est parlé par plus de 18 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Chili ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Chili. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Chili ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le pastel de choclo",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "Le pastel de choclo est un plat de maïs, de viande hachée et de fromage, originaire du Chili."
  },
  {
    content: "Quelle est la langue officielle de la Colombie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["L'anglais", "Le français", "L'allemand"],
    contexte: "L'espagnol est la langue officielle de la Colombie. Il est parlé par plus de 45 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Colombie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante en Colombie. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Colombie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "La bandeja paisa",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "La bandeja paisa est un plat de riz, de viande hachée, de haricots, de chicharrons et d'œuf frit, originaire de Colombie."
  },
  {
    content: "Quelle est la langue officielle du Venezuela ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["L'anglais", "Le français", "L'allemand"],
    contexte: "L'espagnol est la langue officielle du Venezuela. Il est parlé par plus de 30 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Venezuela ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Venezuela. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Venezuela ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le pabellón criollo",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "Le pabellón criollo est un plat de riz, de haricots noirs, de viande déchiquetée et de banane plantain frite, originaire du Venezuela."
  },
  {
    content: "Quelle est la langue officielle du Pérou ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["Le quechua", "L'aymara", "Le français"],
    contexte: "L'espagnol est la langue officielle du Pérou. Il est parlé par plus de 30 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Pérou ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Pérou. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Pérou ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le ceviche",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "Le ceviche est un plat de poisson cru mariné dans du jus de citron, originaire du Pérou."
  },

  # Amérique - Difficile (166-180)
  {
    content: "Quelle est la langue officielle du Chili ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["L'anglais", "Le français", "L'allemand"],
    contexte: "L'espagnol est la langue officielle du Chili. Il est parlé par plus de 18 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Chili ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Chili. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Chili ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le pastel de choclo",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "Le pastel de choclo est un plat de maïs, de viande hachée et de fromage, originaire du Chili."
  },
  {
    content: "Quelle est la langue officielle de la Colombie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["L'anglais", "Le français", "L'allemand"],
    contexte: "L'espagnol est la langue officielle de la Colombie. Il est parlé par plus de 45 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Colombie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante en Colombie. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Colombie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "La bandeja paisa",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "La bandeja paisa est un plat de riz, de viande hachée, de haricots, de chicharrons et d'œuf frit, originaire de Colombie."
  },
  {
    content: "Quelle est la langue officielle du Venezuela ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["L'anglais", "Le français", "L'allemand"],
    contexte: "L'espagnol est la langue officielle du Venezuela. Il est parlé par plus de 30 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Venezuela ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Venezuela. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Venezuela ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le pabellón criollo",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "Le pabellón criollo est un plat de riz, de haricots noirs, de viande déchiquetée et de banane plantain frite, originaire du Venezuela."
  },
  {
    content: "Quelle est la langue officielle du Pérou ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["Le quechua", "L'aymara", "Le français"],
    contexte: "L'espagnol est la langue officielle du Pérou. Il est parlé par plus de 30 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Pérou ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Pérou. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Pérou ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le ceviche",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "Le ceviche est un plat de poisson cru mariné dans du jus de citron, originaire du Pérou."
  },
  {
    content: "Quelle est la langue officielle du Chili ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["L'anglais", "Le français", "L'allemand"],
    contexte: "L'espagnol est la langue officielle du Chili. Il est parlé par plus de 18 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Chili ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante au Chili. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Chili ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Amérique",
    correct_answer: "Le pastel de choclo",
    incorrect_answers: ["Le barbecue", "Le taco", "Le feijoada"],
    contexte: "Le pastel de choclo est un plat de maïs, de viande hachée et de fromage, originaire du Chili."
  },

  # Afrique - Facile (181-195)
  {
    content: "Quelle est la langue officielle de l'Afrique du Sud, en dehors de l'anglais ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'afrikaans",
    incorrect_answers: ["Le zoulou", "Le xhosa", "L'anglais"],
    contexte: "L'afrikaans est la langue officielle de l'Afrique du Sud. Il est parlé par plus de 6 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Afrique du Sud ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante en Afrique du Sud. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Afrique du Sud ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le boerewors",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "Le boerewors est une saucisse de bœuf et d'agneau originaire de l'Afrique du Sud. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle du Nigéria, en dehors de l'anglais ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le yoruba",
    incorrect_answers: ["Le haoussa", "L'igbo", "Le swahili"],
    contexte: "Le yoruba est la langue officielle du Nigéria. Il est parlé par plus de 40 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Nigéria ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'islam",
    incorrect_answers: ["Le christianisme", "Le bouddhisme", "L'hindouisme"],
    contexte: "L'islam est la religion dominante au Nigéria. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Nigéria ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le fufu",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "Le fufu est un plat de farine de manioc originaire du Nigéria. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de l'Algérie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'arabe et le berbère",
    incorrect_answers: ["L'arabe", "Le berbère", "L'arabe et le français"],
    contexte: "L'arabe et le berbère sont les deux langues officielles de l'Algérie. Ils sont parlés par plus de 40 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Algérie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'islam",
    incorrect_answers: ["Le christianisme", "Le bouddhisme", "L'hindouisme"],
    contexte: "L'islam est la religion dominante en Algérie. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Algérie ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le couscous",
    incorrect_answers: ["Le tajine", "Le boeuf séché", "Le fufu"],
    contexte: "Le couscous est un plat de semoule de blé dur cuite à la vapeur, originaire de l'Algérie."
  },
  {
    content: "Quelle est la langue officielle du Maroc ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'arabe et le berbère",
    incorrect_answers: ["L'arabe", "Le berbère", "L'arabe et le français"],
    contexte: "L'arabe et le berbère sont les deux langues officielles du Maroc. Ils sont parlés par plus de 35 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Maroc ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'islam",
    incorrect_answers: ["Le christianisme", "Le bouddhisme", "L'hindouisme"],
    contexte: "L'islam est la religion dominante au Maroc. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Maroc ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le tajine",
    incorrect_answers: ["Le couscous", "Le boeuf séché", "Le fufu"],
    contexte: "Le tajine est un plat de viande et de légumes cuits à la vapeur, originaire du Maroc."
  },
  {
    content: "Quelle est la langue officielle de l'Égypte ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'arabe",
    incorrect_answers: ["L'arabe et le berbère", "L'anglais", "Le français"],
    contexte: "L'arabe est la langue officielle de l'Égypte. Il est parlé par plus de 90 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Égypte ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'islam",
    incorrect_answers: ["Le christianisme", "Le bouddhisme", "L'hindouisme"],
    contexte: "L'islam est la religion dominante en Égypte. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Égypte ?",
    difficulty: "facile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le koshari",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "Le koshari est un plat de riz, de pâtes, de lentilles et de pois chiches, originaire de l'Égypte."
  },

  # Afrique - Intermédiaire (196-210)
  {
    content: "Quelle est la langue officielle de l'Éthiopie, en dehors de l'amharique ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'oromo",
    incorrect_answers: ["Le tigrigna", "Le somali", "L'arabe"],
    contexte: "L'oromo est la langue officielle de l'Éthiopie. Il est parlé par plus de 30 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Éthiopie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'orthodoxie",
    incorrect_answers: ["Le catholicisme", "Le protestantisme", "L'islam"],
    contexte: "L'orthodoxie est la religion dominante en Éthiopie. Elle est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Éthiopie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'injera",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "L'injera est un plat de crêpes de farine de teff originaire de l'Éthiopie. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle du Kenya, en dehors de l'anglais ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le swahili",
    incorrect_answers: ["Le kikuyu", "Le luhya", "Le luo"],
    contexte: "Le swahili est la langue officielle du Kenya. Il est parlé par plus de 30 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante au Kenya ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante au Kenya. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Kenya ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'ugali",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "L'ugali est un plat de farine de maïs originaire du Kenya. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de la Tanzanie, en dehors de l'anglais ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le swahili",
    incorrect_answers: ["Le kikuyu", "Le luhya", "Le luo"],
    contexte: "Le swahili est la langue officielle de la Tanzanie. Il est parlé par plus de 50 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Tanzanie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le christianisme et l'islam",
    incorrect_answers: ["Le christianisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme et l'islam sont les deux religions dominantes en Tanzanie. Ils sont souvent pratiqués conjointement."
  },
  {
    content: "Quel est le plat national de la Tanzanie ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'ugali",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "L'ugali est un plat de farine de maïs originaire de la Tanzanie. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de l'Ouganda, en dehors de l'anglais ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le swahili",
    incorrect_answers: ["Le kikuyu", "Le luhya", "Le luo"],
    contexte: "Le swahili est la langue officielle de l'Ouganda. Il est parlé par plus de 40 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Ouganda ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le christianisme",
    incorrect_answers: ["Le bouddhisme", "L'islam", "L'hindouisme"],
    contexte: "Le christianisme est la religion dominante en Ouganda. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Ouganda ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le matoke",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "Le matoke est un plat de bananes plantains cuites à la vapeur, originaire de l'Ouganda. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de la République démocratique du Congo, en dehors du français ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le lingala",
    incorrect_answers: ["Le swahili", "Le kikongo", "Le tshiluba"],
    contexte: "Le lingala est la langue officielle de la République démocratique du Congo. Il est parlé par plus de 10 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en République démocratique du Congo ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le catholicisme",
    incorrect_answers: ["Le protestantisme", "L'islam", "L'hindouisme"],
    contexte: "Le catholicisme est la religion dominante en République démocratique du Congo. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la République démocratique du Congo ?",
    difficulty: "intermédiaire",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le fufu",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "Le fufu est un plat de farine de manioc originaire de la République démocratique du Congo. Il est considéré comme le plat national."
  },

  # Afrique - Difficile (211-225)
  {
    content: "Quelle est la langue officielle de la Somalie, en dehors du somali et de l'arabe ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'anglais et l'italien",
    incorrect_answers: ["L'anglais", "L'italien", "Le somali et l'arabe"],
    contexte: "L'anglais et l'italien sont les deux langues officielles de la Somalie. Ils sont parlés par plus de 1 million de personnes."
  },
  {
    content: "Quelle est la religion dominante en Somalie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'islam",
    incorrect_answers: ["Le christianisme", "Le bouddhisme", "L'hindouisme"],
    contexte: "L'islam est la religion dominante en Somalie. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de la Somalie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le maraq",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "Le maraq est un plat de viande et de légumes originaire de la Somalie. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle de l'Érythrée, en dehors du tigrigna et de l'arabe ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'amharique",
    incorrect_answers: ["Le tigrigna", "L'arabe", "L'anglais"],
    contexte: "L'amharique est la langue officielle de l'Érythrée. Il est parlé par plus de 2 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Érythrée ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'orthodoxie",
    incorrect_answers: ["Le catholicisme", "Le protestantisme", "L'islam"],
    contexte: "L'orthodoxie est la religion dominante en Érythrée. Elle est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Érythrée ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le zigni",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "Le zigni est un plat de viande et de légumes originaire de l'Érythrée. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle du Djibouti, en dehors du français et de l'arabe ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le somali",
    incorrect_answers: ["L'afar", "L'anglais", "L'italien"],
    contexte: "Le somali est la langue officielle du Djibouti. Il est parlé par plus de 500 000 personnes."
  },
  {
    content: "Quelle est la religion dominante au Djibouti ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'islam",
    incorrect_answers: ["Le christianisme", "Le bouddhisme", "L'hindouisme"],
    contexte: "L'islam est la religion dominante au Djibouti. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national du Djibouti ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le yéménite",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "Le yéménite est un plat de viande et de légumes originaire du Djibouti. Il est considéré comme le plat national."
  },
  {
    content: "Quelle est la langue officielle des Comores, en dehors du comorien et du français ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'arabe",
    incorrect_answers: ["Le malgache", "Le swahili", "L'anglais"],
    contexte: "L'arabe est la langue officielle des Comores. Il est parlé par plus de 800 000 personnes."
  },
  {
    content: "Quelle est la religion dominante aux Comores ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'islam",
    incorrect_answers: ["Le christianisme", "Le bouddhisme", "L'hindouisme"],
    contexte: "L'islam est la religion dominante aux Comores. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national des Comores ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le langouste au coco",
    incorrect_answers: ["Le couscous", "Le tajine", "Le boeuf séché"],
    contexte: "Le langouste au coco est un plat de langouste cuite à la vapeur avec du lait de coco, originaire des Comores."
  },
  {
    content: "Quelle est la langue officielle de l'Algérie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'arabe et le berbère",
    incorrect_answers: ["L'arabe", "Le berbère", "L'arabe et le français"],
    contexte: "L'arabe et le berbère sont les deux langues officielles de l'Algérie. Ils sont parlés par plus de 40 millions de personnes."
  },
  {
    content: "Quelle est la religion dominante en Algérie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "L'islam",
    incorrect_answers: ["Le christianisme", "Le bouddhisme", "L'hindouisme"],
    contexte: "L'islam est la religion dominante en Algérie. Il est la religion d'État."
  },
  {
    content: "Quel est le plat national de l'Algérie ?",
    difficulty: "difficile",
    category: "ethnies, religions, langues et coutumes",
    region: "Afrique",
    correct_answer: "Le couscous",
    incorrect_answers: ["Le tajine", "Le boeuf séché", "Le fufu"],
    contexte: "Le couscous est un plat de semoule de blé dur cuite à la vapeur, originaire de l'Algérie."
  },

  # POLITIQUE ET GEOPOLITIQUE via Gemini 2.5 Flash
Question.create!([
  # Europe - Facile (1-15)
  {
    content: "Quel est le siège politique et administratif de l'OTAN ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Bruxelles",
    incorrect_answers: ["Strasbourg", "Londres", "Paris"],
    contexte: "Le siège de l'Organisation du Traité de l'Atlantique Nord est situé à Bruxelles, la capitale de la Belgique."
  },
  {
    content: "Quel pays a quitté l'Union européenne en 2020 ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["La Suisse", "La Norvège", "L'Islande"],
    contexte: "Le Royaume-Uni a officiellement quitté l'Union européenne le 31 janvier 2020, à la suite du référendum sur le Brexit."
  },
  {
    content: "Quel est le parlement bicaméral de l'Allemagne ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Bundestag et le Bundesrat",
    incorrect_answers: ["La Chambre des communes et la Chambre des lords", "Le Reichstag et le Reichskanzler", "Le Parlement et le Sénat"],
    contexte: "Le Bundestag est le parlement fédéral d'Allemagne, tandis que le Bundesrat représente les 16 États fédérés."
  },
  {
    content: "Quelle est la capitale politique de l'Union européenne ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Bruxelles",
    incorrect_answers: ["Strasbourg", "Luxembourg", "Genève"],
    contexte: "Bruxelles, en Belgique, est le siège de la Commission européenne et du Conseil de l'Union européenne."
  },
  {
    content: "Quel pays est l'un des membres fondateurs de la Communauté économique européenne (CEE) ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La France",
    incorrect_answers: ["Le Royaume-Uni", "La Suisse", "La Suède"],
    contexte: "La France, l'Allemagne de l'Ouest, l'Italie, la Belgique, les Pays-Bas et le Luxembourg ont fondé la CEE en 1957."
  },
  {
    content: "Le chef d'État de l'Espagne porte le titre de...",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Roi",
    incorrect_answers: ["Président", "Chancelier", "Prince"],
    contexte: "L'Espagne est une monarchie parlementaire, où le roi est le chef d'État et le Premier ministre est le chef du gouvernement."
  },
  {
    content: "Le Royaume-Uni est un membre permanent de quel organe de l'ONU ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Conseil de sécurité",
    incorrect_answers: ["L'Assemblée générale", "Le Conseil économique et social", "La Cour internationale de justice"],
    contexte: "Le Royaume-Uni est l'un des cinq membres permanents du Conseil de sécurité de l'ONU, disposant d'un droit de veto."
  },
  {
    content: "Quel pays européen est connu pour sa politique de neutralité militaire ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La Suisse",
    incorrect_answers: ["La France", "L'Allemagne", "L'Italie"],
    contexte: "La Suisse est célèbre pour sa neutralité armée, une politique qui dure depuis des siècles."
  },
  {
    content: "Quel pays nordique est membre de l'OTAN mais pas de l'UE ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La Norvège",
    incorrect_answers: ["La Finlande", "La Suède", "Le Danemark"],
    contexte: "La Norvège, un des membres fondateurs de l'OTAN, a refusé son adhésion à l'Union européenne par référendum."
  },
  {
    content: "Quel est le chef de l'État de la Finlande ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de la Finlande est le chef de l'État et le commandant en chef des forces armées finlandaises."
  },
  {
    content: "Quel est le chef du gouvernement de la Norvège ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre norvégien est le chef du gouvernement et l'autorité exécutive du pays."
  },
  {
    content: "Quel est le pays le plus peuplé de l'Union européenne ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La France", "L'Italie", "L'Espagne"],
    contexte: "L'Allemagne est le pays le plus peuplé de l'Union européenne, avec plus de 83 millions d'habitants."
  },
  {
    content: "Quel pays de l'Est est un membre de l'UE et de l'OTAN depuis 2004 ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La Pologne",
    incorrect_answers: ["La Biélorussie", "La Serbie", "La Russie"],
    contexte: "La Pologne a rejoint l'OTAN en 1999 et l'UE en 2004, marquant son intégration dans les structures occidentales."
  },
  {
    content: "Le chef de l'État de l'Autriche porte le titre de...",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Président",
    incorrect_answers: ["Chancelier", "Empereur", "Premier ministre"],
    contexte: "Le président fédéral autrichien est le chef de l'État, tandis que le chancelier est le chef du gouvernement."
  },
  {
    content: "Quel est le siège de la Cour européenne des droits de l'homme ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Strasbourg",
    incorrect_answers: ["Bruxelles", "Genève", "La Haye"],
    contexte: "Le siège de la Cour européenne des droits de l'homme se trouve à Strasbourg, en France."
  },

  # Europe - Intermédiaire (16-30)
  {
    content: "Quel traité européen a mis fin à la guerre froide et à la division de l'Allemagne ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Traité 2+4",
    incorrect_answers: ["Le Traité de Lisbonne", "Le Traité de Paris", "Le Traité de Maastricht"],
    contexte: "Le Traité '2+4', signé en 1990, a permis la réunification de l'Allemagne en mettant fin aux droits des puissances alliées."
  },
  {
    content: "L'Irlande a-t-elle le droit de veto au Conseil de sécurité de l'ONU ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Non",
    incorrect_answers: ["Oui, en tant que membre de l'UE", "Oui, en tant que membre de l'OTAN", "Oui, en tant que membre permanent"],
    contexte: "Seuls les cinq membres permanents (États-Unis, Russie, Chine, France, Royaume-Uni) disposent du droit de veto."
  },
  {
    content: "Quel pays est un membre de l'Espace économique européen (EEE) mais pas de l'Union européenne ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La Norvège",
    incorrect_answers: ["La Suisse", "Le Royaume-Uni", "L'Islande"],
    contexte: "La Norvège fait partie de l'Espace économique européen (EEE), qui lui permet de participer au marché unique de l'UE sans être membre."
  },
  {
    content: "Quel est le nom de l'organe de l'UE qui partage le pouvoir législatif avec le Parlement européen ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Conseil de l'Union européenne",
    incorrect_answers: ["Le Conseil européen", "La Commission européenne", "La Cour de justice de l'UE"],
    contexte: "Le Conseil de l'Union européenne, composé des ministres des États membres, est co-législateur avec le Parlement."
  },
  {
    content: "Quel Premier ministre britannique a mené la politique de l'austérité après la crise financière de 2008 ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "David Cameron",
    incorrect_answers: ["Tony Blair", "Gordon Brown", "Theresa May"],
    contexte: "David Cameron a été Premier ministre du Royaume-Uni de 2010 à 2016 et a mis en œuvre des politiques d'austérité."
  },
  {
    content: "Quel pays de la Méditerranée orientale a été au cœur de tensions géopolitiques liées à l'exploration de gaz naturel ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Chypre",
    incorrect_answers: ["Malte", "La Sicile", "La Sardaigne"],
    contexte: "Le conflit pour les droits d'exploration de gaz naturel en Méditerranée orientale a impliqué Chypre, la Grèce et la Turquie."
  },
  {
    content: "Quel pays scandinave a historiquement maintenu une politique de non-alignement militaire ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La Suède",
    incorrect_answers: ["La Norvège", "Le Danemark", "La Finlande"],
    contexte: "La Suède a longtemps été neutre, mais a récemment rejoint l'OTAN après l'invasion de l'Ukraine par la Russie."
  },
  {
    content: "Le chef de l'État en Allemagne est un titre de...",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Président",
    incorrect_answers: ["Chancelier", "Premier ministre", "Roi"],
    contexte: "En Allemagne, le président a un rôle principalement cérémoniel, le pouvoir exécutif réel étant exercé par le chancelier."
  },
  {
    content: "Quel est le nom du Parlement de l'Italie ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Sénat et la Chambre des députés",
    incorrect_answers: ["Le Parlement européen", "Le Congrès", "L'Assemblée nationale"],
    contexte: "Le Parlement italien est composé de deux chambres, le Sénat et la Chambre des députés."
  },
  {
    content: "Quel est le nom du traité de paix signé en 1919, qui a mis fin à la Première Guerre mondiale ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le traité de Versailles",
    incorrect_answers: ["Le traité de Paris", "Le traité de Londres", "Le traité de Locarno"],
    contexte: "Le traité de Versailles est un traité de paix signé en 1919. Il a mis fin à la Première Guerre mondiale."
  },
  {
    content: "Quel est le nom de la ville qui abrite la Cour pénale internationale ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La Haye",
    incorrect_answers: ["Genève", "Bruxelles", "Strasbourg"],
    contexte: "La Cour pénale internationale a son siège à La Haye, aux Pays-Bas. C'est une juridiction internationale."
  },
  {
    content: "Quel est le nom du traité qui a créé la Communauté économique européenne (CEE) ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le traité de Rome",
    incorrect_answers: ["Le traité de Maastricht", "Le traité de Lisbonne", "Le traité de Nice"],
    contexte: "Le traité de Rome, signé en 1957, a créé la CEE, le précurseur de l'Union européenne."
  },
  {
    content: "Quel pays a le droit de veto au Conseil de sécurité de l'ONU ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Allemagne", "L'Italie", "L'Espagne"],
    contexte: "Le Royaume-Uni est un des cinq membres permanents du Conseil de sécurité de l'ONU. Il a le droit de veto."
  },
  {
    content: "Quel est le chef de l'État du Portugal ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Portugal est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Portugal ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre du Portugal est le chef du gouvernement. Il dirige l'administration du pays."
  },

  # Europe - Difficile (31-45)
  {
    content: "Quel est le nom de l'organe de l'Union européenne qui représente les intérêts des États membres ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Conseil de l'Union européenne",
    incorrect_answers: ["Le Parlement européen", "La Commission européenne", "Le Conseil européen"],
    contexte: "Le Conseil de l'Union européenne est l'organe de l'UE qui représente les intérêts des États membres."
  },
  {
    content: "Quel est le nom du traité qui a créé la monnaie unique, l'euro ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le traité de Maastricht",
    incorrect_answers: ["Le traité de Rome", "Le traité de Lisbonne", "Le traité de Nice"],
    contexte: "Le traité de Maastricht, signé en 1992, a créé l'euro. Il a également créé l'Union européenne."
  },
  {
    content: "Quel pays est membre de l'OTAN, mais pas de l'Union européenne ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La Norvège",
    incorrect_answers: ["La Suède", "La Finlande", "L'Autriche"],
    contexte: "La Norvège est un membre fondateur de l'OTAN, mais a refusé à deux reprises d'adhérer à l'UE par référendum."
  },
  {
    content: "Quel est le pays le plus peuplé de l'Union européenne ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La France", "L'Italie", "L'Espagne"],
    contexte: "L'Allemagne est le pays le plus peuplé de l'Union européenne, avec plus de 83 millions d'habitants."
  },
  {
    content: "Quel est le siège de la Cour de justice de l'Union européenne ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Luxembourg",
    incorrect_answers: ["Bruxelles", "Strasbourg", "Genève"],
    contexte: "Le Luxembourg est le siège de la Cour de justice de l'Union européenne. C'est la plus haute juridiction de l'UE."
  },
  {
    content: "Quel est le chef de l'État de la Russie ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de la Russie est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Allemagne ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le chancelier",
    incorrect_answers: ["Le président", "Le roi", "Le Premier ministre"],
    contexte: "Le chancelier de l'Allemagne est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays a le droit de veto au Conseil de sécurité de l'ONU ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La France",
    incorrect_answers: ["L'Allemagne", "L'Italie", "L'Espagne"],
    contexte: "La France est un des cinq membres permanents du Conseil de sécurité de l'ONU. Elle a le droit de veto."
  },
  {
    content: "Quel est le chef de l'État de l'Autriche ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le président",
    incorrect_answers: ["Le chancelier", "Le roi", "Le Premier ministre"],
    contexte: "Le président de l'Autriche est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Norvège ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de la Norvège est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'OTAN, mais pas de l'Union européenne ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "La Norvège",
    incorrect_answers: ["La Suède", "La Finlande", "L'Autriche"],
    contexte: "La Norvège est un membre fondateur de l'OTAN, mais a refusé à deux reprises d'adhérer à l'UE par référendum."
  },
  {
    content: "Quel est le pays le plus peuplé de l'Union européenne ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La France", "L'Italie", "L'Espagne"],
    contexte: "L'Allemagne est le pays le plus peuplé de l'Union européenne, avec plus de 83 millions d'habitants."
  },
  {
    content: "Quel est le siège de la Cour de justice de l'Union européenne ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Luxembourg",
    incorrect_answers: ["Bruxelles", "Strasbourg", "Genève"],
    contexte: "Le Luxembourg est le siège de la Cour de justice de l'Union européenne. C'est la plus haute juridiction de l'UE."
  },
  {
    content: "Quel est le chef de l'État de la Russie ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de la Russie est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Allemagne ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Europe",
    correct_answer: "Le chancelier",
    incorrect_answers: ["Le président", "Le roi", "Le Premier ministre"],
    contexte: "Le chancelier de l'Allemagne est le chef du gouvernement. Il dirige l'administration du pays."
  },

  # Asie - Facile (46-60)
  {
    content: "Quel pays est le siège de l'Organisation de coopération de Shanghai ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Chine",
    incorrect_answers: ["Japon", "Inde", "Russie"],
    contexte: "La Chine est le siège de l'Organisation de coopération de Shanghai, une organisation régionale axée sur la sécurité."
  },
  {
    content: "Quel pays est le plus peuplé du monde ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Inde",
    incorrect_answers: ["La Chine", "Les États-Unis", "Le Brésil"],
    contexte: "L'Inde a dépassé la Chine en tant que pays le plus peuplé du monde, avec plus de 1,4 milliard d'habitants."
  },
  {
    content: "Quel est le chef de l'État du Japon ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'empereur",
    incorrect_answers: ["Le Premier ministre", "Le président", "Le roi"],
    contexte: "L'empereur du Japon est le chef de l'État. Sa fonction est principalement cérémonielle."
  },
  {
    content: "Quel est le chef du gouvernement du Japon ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["L'empereur", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre du Japon est le chef du gouvernement et dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Asie ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "La Russie",
    incorrect_answers: ["La Chine", "L'Inde", "Le Brésil"],
    contexte: "Bien que transcontinentale, la majeure partie du territoire de la Russie se trouve en Asie, ce qui en fait le plus grand pays du continent."
  },
  {
    content: "Quel est le chef de l'État de l'Inde ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Inde est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Inde ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de l'Inde est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre du G7 ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Japon",
    incorrect_answers: ["La Chine", "L'Inde", "La Corée du Sud"],
    contexte: "Le Japon est un des sept membres du G7, un groupe des pays les plus industrialisés du monde."
  },
  {
    content: "Quel pays est le plus grand producteur de riz au monde ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "La Chine",
    incorrect_answers: ["L'Inde", "Le Vietnam", "La Thaïlande"],
    contexte: "La Chine est le plus grand producteur de riz au monde, avec une production annuelle de plus de 200 millions de tonnes."
  },
  {
    content: "Quel est le chef de l'État de l'Arabie Saoudite ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi de l'Arabie Saoudite est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel pays est un membre fondateur de l'ANASE (Association des nations de l'Asie du Sud-Est) ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "La Thaïlande",
    incorrect_answers: ["Le Cambodge", "Le Vietnam", "La Birmanie"],
    contexte: "La Thaïlande est l'un des cinq membres fondateurs de l'ANASE, créée en 1967."
  },
  {
    content: "Quel pays est le plus peuplé d'Asie du Sud-Est ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Indonésie",
    incorrect_answers: ["Le Vietnam", "Les Philippines", "La Thaïlande"],
    contexte: "L'Indonésie est le pays le plus peuplé d'Asie du Sud-Est, avec plus de 270 millions d'habitants."
  },
  {
    content: "Quel pays est le plus grand producteur de pétrole au monde ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Arabie Saoudite",
    incorrect_answers: ["La Russie", "Les États-Unis", "Le Brésil"],
    contexte: "L'Arabie Saoudite est le plus grand producteur de pétrole au monde, avec une production journalière de plus de 10 millions de barils."
  },
  {
    content: "Quel est le chef de l'État de la Chine ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de la Chine est le chef de l'État. Il est également le chef du Parti communiste chinois."
  },
  {
    content: "Quel pays a signé l'accord de libre-échange avec l'Union européenne en 2018 ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Japon",
    incorrect_answers: ["La Chine", "L'Inde", "La Corée du Sud"],
    contexte: "L'Union européenne et le Japon ont signé un accord de libre-échange en 2018 pour faciliter les échanges commerciaux."
  },

  # Asie - Intermédiaire (61-75)
  {
    content: "Quel est le nom du Parlement de la Chine ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Congrès national du peuple",
    incorrect_answers: ["L'Assemblée populaire nationale", "Le Conseil d'État", "Le Parlement de Chine"],
    contexte: "Le Congrès national du peuple est l'organe législatif suprême de la Chine. Il est le plus grand parlement du monde."
  },
  {
    content: "Quel est le nom du traité qui a créé l'Association des nations de l'Asie du Sud-Est (ANASE) ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le traité de Bangkok",
    incorrect_answers: ["Le traité de Manille", "Le traité de Singapour", "Le traité de Kuala Lumpur"],
    contexte: "Le traité de Bangkok, signé en 1967, a créé l'ANASE, une organisation intergouvernementale régionale."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Asie du Sud-Est ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Indonésie",
    incorrect_answers: ["Le Vietnam", "La Thaïlande", "Le Cambodge"],
    contexte: "L'Indonésie est le plus grand pays d'Asie du Sud-Est en superficie, avec plus de 1,9 million de km²."
  },
  {
    content: "Quel est le chef de l'État de la Corée du Sud ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de la Corée du Sud est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Corée du Sud ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de la Corée du Sud est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel est le nom de la zone économique spéciale créée en 1980 en Chine pour attirer les investissements étrangers ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Shenzhen",
    incorrect_answers: ["Shanghai", "Pékin", "Hong Kong"],
    contexte: "Shenzhen est la première zone économique spéciale de Chine. C'est une ville de plus de 12 millions d'habitants."
  },
  {
    content: "Quel est le chef de l'État de l'Iran ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Iran est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Iran ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Iran est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est un membre permanent du Conseil de sécurité de l'ONU ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "La Chine",
    incorrect_answers: ["Le Japon", "L'Inde", "La Corée du Sud"],
    contexte: "La Chine est l'un des cinq membres permanents du Conseil de sécurité de l'ONU, avec un droit de veto."
  },
  {
    content: "Quel pays est le plus peuplé d'Asie du Sud-Est ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Indonésie",
    incorrect_answers: ["Le Vietnam", "La Thaïlande", "Le Cambodge"],
    contexte: "L'Indonésie est le pays le plus peuplé d'Asie du Sud-Est, avec plus de 270 millions d'habitants."
  },
  {
    content: "Quel pays est le plus grand producteur de pétrole au monde ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Arabie Saoudite",
    incorrect_answers: ["La Russie", "Les États-Unis", "Le Brésil"],
    contexte: "L'Arabie Saoudite est le plus grand producteur de pétrole au monde, avec une production journalière de plus de 10 millions de barils."
  },
  {
    content: "Quel est le chef de l'État du Japon ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'empereur",
    incorrect_answers: ["Le Premier ministre", "Le président", "Le chancelier"],
    contexte: "L'empereur du Japon est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Japon ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["L'empereur", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre du Japon est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel est le pays le plus peuplé du monde ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Inde",
    incorrect_answers: ["La Chine", "Les États-Unis", "Le Brésil"],
    contexte: "L'Inde a dépassé la Chine en tant que pays le plus peuplé du monde, avec plus de 1,4 milliard d'habitants."
  },
  {
    content: "Quel est le chef de l'État de l'Inde ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Inde est le chef de l'État. C'est une fonction principalement honorifique."
  },

  # Asie - Difficile (76-90)
  {
    content: "Quel est le nom du Parlement de l'Inde ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Parlement de l'Inde",
    incorrect_answers: ["Le Congrès national du peuple", "Le Conseil d'État", "L'Assemblée populaire nationale"],
    contexte: "Le Parlement de l'Inde est l'organe législatif de l'Inde. Il est composé de deux chambres, la Lok Sabha et la Rajya Sabha."
  },
  {
    content: "Quel est le nom du traité qui a créé l'Association des nations de l'Asie du Sud-Est (ANASE) ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le traité de Bangkok",
    incorrect_answers: ["Le traité de Manille", "Le traité de Singapour", "Le traité de Kuala Lumpur"],
    contexte: "Le traité de Bangkok, signé en 1967, a créé l'ANASE. C'est une organisation intergouvernementale régionale de l'Asie du Sud-Est."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Asie du Sud-Est ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Indonésie",
    incorrect_answers: ["Le Vietnam", "La Thaïlande", "Le Cambodge"],
    contexte: "L'Indonésie est le plus grand pays d'Asie du Sud-Est en superficie. Il a une superficie de 1,9 million de km²."
  },
  {
    content: "Quel est le chef de l'État de la Corée du Sud ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de la Corée du Sud est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Corée du Sud ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de la Corée du Sud est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand producteur de riz au monde ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "La Chine",
    incorrect_answers: ["L'Inde", "Le Vietnam", "La Thaïlande"],
    contexte: "La Chine est le plus grand producteur de riz au monde. Il a une production annuelle de plus de 200 millions de tonnes."
  },
  {
    content: "Quel est le chef de l'État de l'Arabie Saoudite ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi de l'Arabie Saoudite est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Arabie Saoudite ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de l'Arabie Saoudite est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'OPEP ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Arabie Saoudite",
    incorrect_answers: ["La Chine", "L'Inde", "Le Brésil"],
    contexte: "L'Arabie Saoudite est un des 13 membres de l'OPEP. Elle est le plus grand producteur de pétrole au monde."
  },
  {
    content: "Quel est le pays le plus peuplé d'Asie du Sud-Est ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Indonésie",
    incorrect_answers: ["Le Vietnam", "La Thaïlande", "Le Cambodge"],
    contexte: "L'Indonésie est le pays le plus peuplé d'Asie du Sud-Est. Il a plus de 270 millions d'habitants."
  },
  {
    content: "Quel pays est le plus grand producteur de pétrole au monde ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Arabie Saoudite",
    incorrect_answers: ["La Russie", "Les États-Unis", "Le Brésil"],
    contexte: "L'Arabie Saoudite est le plus grand producteur de pétrole au monde. Elle a une production annuelle de plus de 10 millions de barils par jour."
  },
  {
    content: "Quel est le chef de l'État du Japon ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'empereur",
    incorrect_answers: ["Le Premier ministre", "Le président", "Le chancelier"],
    contexte: "L'empereur du Japon est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Japon ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["L'empereur", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre du Japon est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel est le pays le plus peuplé du monde ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "L'Inde",
    incorrect_answers: ["La Chine", "Les États-Unis", "Le Brésil"],
    contexte: "L'Inde est le pays le plus peuplé du monde. Il a plus de 1,4 milliard d'habitants."
  },
  {
    content: "Quel est le chef de l'État de l'Inde ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Asie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Inde est le chef de l'État. C'est une fonction principalement honorifique."
  },

  # Océanie - Facile (91-105)
  {
    content: "Quel est le chef de l'État de l'Australie ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi d'Australie est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Australie ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre d'Australie est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel est le pays le plus peuplé de l'Océanie ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le pays le plus peuplé de l'Océanie. Il a plus de 25 millions d'habitants."
  },
  {
    content: "Quel est le chef de l'État de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi de la Nouvelle-Zélande est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre de la Nouvelle-Zélande est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre du G7 ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est un des sept membres du G7. Il est un des pays les plus riches du monde."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Océanie ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand pays d'Océanie en superficie. Il a une superficie de 7,7 millions de km²."
  },
  {
    content: "Quel est le chef de l'État de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi de la Papouasie-Nouvelle-Guinée est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre de la Papouasie-Nouvelle-Guinée est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand producteur de bauxite au monde ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand producteur de bauxite au monde. Il a une production annuelle de plus de 100 millions de tonnes."
  },
  {
    content: "Quel est le chef de l'État de Fidji ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de Fidji est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de Fidji ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de Fidji est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Océanie ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand pays d'Océanie en superficie. Il a une superficie de 7,7 millions de km²."
  },
  {
    content: "Quel est le chef de l'État de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi de la Nouvelle-Zélande est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre de la Nouvelle-Zélande est le chef du gouvernement. Il dirige l'administration du pays."
  },

  # Océanie - Intermédiaire (106-120)
  {
    content: "Quel est le nom du Parlement de l'Australie ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Parlement d'Australie",
    incorrect_answers: ["Le Sénat", "La Chambre des représentants", "Le Congrès"],
    contexte: "Le Parlement d'Australie est l'organe législatif de l'Australie. Il est composé de deux chambres, le Sénat et la Chambre des représentants."
  },
  {
    content: "Quel est le nom du traité qui a créé la Communauté du Pacifique (SPC) ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Accord de Canberra",
    incorrect_answers: ["L'Accord de Nouméa", "L'Accord de Nadi", "L'Accord de Suva"],
    contexte: "L'Accord de Canberra, signé en 1947, a créé la Communauté du Pacifique. C'est une organisation intergouvernementale régionale de l'Océanie."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Océanie ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand pays d'Océanie en superficie. Il a une superficie de 7,7 millions de km²."
  },
  {
    content: "Quel est le chef de l'État de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi de la Papouasie-Nouvelle-Guinée est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre de la Papouasie-Nouvelle-Guinée est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand producteur de bauxite au monde ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand producteur de bauxite au monde. Il a une production annuelle de plus de 100 millions de tonnes."
  },
  {
    content: "Quel est le chef de l'État de Fidji ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de Fidji est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de Fidji ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de Fidji est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Océanie ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand pays d'Océanie en superficie. Il a une superficie de 7,7 millions de km²."
  },
  {
    content: "Quel est le chef de l'État de la Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi de la Nouvelle-Zélande est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre de la Nouvelle-Zélande est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'APEC ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est un des 21 membres de l'APEC. C'est une organisation intergouvernementale régionale de l'Asie-Pacifique."
  },
  {
    content: "Quel est le chef de l'État des îles Salomon ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi des îles Salomon est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement des îles Salomon ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre des îles Salomon est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Océanie ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand pays d'Océanie en superficie. Il a une superficie de 7,7 millions de km²."
  },

  # Océanie - Difficile (121-135)
  {
    content: "Quel est le nrégime politique de la Nouvelle-Zélande ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Monarchie constitutionnelle",
    incorrect_answers: ["Le Sénat", "La Chambre des représentants", "Le Congrès"],
    contexte: "Le Parlement de la Nouvelle-Zélande est l'organe législatif de la Nouvelle-Zélande. Il est composé de deux chambres, le Sénat et la Chambre des représentants."
  },
  {
    content: "Quel est le nom du traité qui a créé la Communauté du Pacifique (SPC) ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Accord de Canberra",
    incorrect_answers: ["L'Accord de Nouméa", "L'Accord de Nadi", "L'Accord de Suva"],
    contexte: "L'Accord de Canberra, signé en 1947, a créé la Communauté du Pacifique. C'est une organisation intergouvernementale régionale de l'Océanie."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Océanie ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand pays d'Océanie en superficie. Il a une superficie de 7,7 millions de km²."
  },
  {
    content: "Quel est le chef de l'État de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi de la Papouasie-Nouvelle-Guinée est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre de la Papouasie-Nouvelle-Guinée est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand producteur de bauxite au monde ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand producteur de bauxite au monde. Il a une production annuelle de plus de 100 millions de tonnes."
  },
  {
    content: "Quel est le chef de l'État de Fidji ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de Fidji est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de Fidji ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de Fidji est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Océanie ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand pays d'Océanie en superficie. Il a une superficie de 7,7 millions de km²."
  },
  {
    content: "Quel est le chef de l'État de la Nouvelle-Zélande ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi de la Nouvelle-Zélande est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de la Nouvelle-Zélande ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre de la Nouvelle-Zélande est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'APEC ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est un des 21 membres de l'APEC. C'est une organisation intergouvernementale régionale de l'Asie-Pacifique."
  },
  {
    content: "Quel est le chef de l'État des îles Salomon ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi des îles Salomon est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement des îles Salomon ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre des îles Salomon est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Océanie ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "L'Australie est le plus grand pays d'Océanie en superficie. Il a une superficie de 7,7 millions de km²."
  },

  # Amérique - Facile (136-150)
  {
    content: "Quel est le chef de l'État du Canada ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi du Canada est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Canada ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre du Canada est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel est le pays le plus peuplé de l'Amérique ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Les États-Unis",
    incorrect_answers: ["Le Brésil", "Le Mexique", "Le Canada"],
    contexte: "Les États-Unis sont le pays le plus peuplé de l'Amérique. Il a plus de 330 millions d'habitants."
  },
  {
    content: "Quel est le chef de l'État des États-Unis ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président des États-Unis est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement des États-Unis ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président des États-Unis est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre du G7 ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Le Brésil", "Le Mexique", "L'Argentine"],
    contexte: "Le Canada est un des sept membres du G7. Il est un des pays les plus riches du monde."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Amérique ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Les États-Unis", "Le Brésil", "Le Mexique"],
    contexte: "Le Canada est le plus grand pays d'Amérique en superficie. Il a une superficie de 9,9 millions de km²."
  },
  {
    content: "Quel est le chef de l'État du Mexique ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Mexique est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Mexique ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Mexique est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'ALENA ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Le Brésil", "Le Mexique", "L'Argentine"],
    contexte: "Le Canada est un des trois membres de l'ALENA. C'est un accord de libre-échange entre le Canada, le Mexique et les États-Unis."
  },
  {
    content: "Quel est le chef de l'État du Brésil ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Brésil est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Brésil ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Brésil est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre du Mercosur ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["Le Canada", "Le Mexique", "Les États-Unis"],
    contexte: "Le Brésil est un des quatre membres du Mercosur. C'est un marché commun de l'Amérique du Sud."
  },
  {
    content: "Quel est le pays le plus peuplé de l'Amérique du Sud ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["Le Mexique", "Le Pérou", "La Colombie"],
    contexte: "Le Brésil est le pays le plus peuplé de l'Amérique du Sud. Il a plus de 210 millions d'habitants."
  },
  {
    content: "Quel est le chef de l'État de l'Argentine ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Argentine est le chef de l'État. C'est une fonction principalement honorifique."
  },

  # Amérique - Intermédiaire (151-165)
  {
    content: "Quel est le nom du Parlement du Canada ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Parlement du Canada",
    incorrect_answers: ["Le Sénat", "La Chambre des représentants", "Le Congrès"],
    contexte: "Le Parlement du Canada est l'organe législatif du Canada. Il est composé de deux chambres, le Sénat et la Chambre des communes."
  },
  {
    content: "Quel est le nom du traité qui a créé l'Accord de libre-échange nord-américain (ALENA) ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "L'Accord de libre-échange nord-américain",
    incorrect_answers: ["L'Accord de libre-échange nord-américain", "L'Accord de libre-échange nord-américain", "L'Accord de libre-échange nord-américain"],
    contexte: "L'Accord de libre-échange nord-américain, signé en 1994, a créé l'ALENA. C'est un accord de libre-échange entre le Canada, le Mexique et les États-Unis."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Amérique ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Les États-Unis", "Le Brésil", "Le Mexique"],
    contexte: "Le Canada est le plus grand pays d'Amérique en superficie. Il a une superficie de 9,9 millions de km²."
  },
  {
    content: "Quel est le chef de l'État des États-Unis ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président des États-Unis est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement des États-Unis ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président des États-Unis est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre du G7 ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Le Brésil", "Le Mexique", "L'Argentine"],
    contexte: "Le Canada est un des sept membres du G7. Il est un des pays les plus riches du monde."
  },
  {
    content: "Quel est le chef de l'État du Mexique ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Mexique est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Mexique ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Mexique est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'ALENA ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Le Brésil", "Le Mexique", "L'Argentine"],
    contexte: "Le Canada est un des trois membres de l'ALENA. C'est un accord de libre-échange entre le Canada, le Mexique et les États-Unis."
  },
  {
    content: "Quel est le chef de l'État du Brésil ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Brésil est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Brésil ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Brésil est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre du Mercosur ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["Le Canada", "Le Mexique", "Les États-Unis"],
    contexte: "Le Brésil est un des quatre membres du Mercosur. C'est un marché commun de l'Amérique du Sud."
  },
  {
    content: "Quel est le pays le plus peuplé de l'Amérique du Sud ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["Le Mexique", "Le Pérou", "La Colombie"],
    contexte: "Le Brésil est le pays le plus peuplé de l'Amérique du Sud. Il a plus de 210 millions d'habitants."
  },
  {
    content: "Quel est le chef de l'État de l'Argentine ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Argentine est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Argentine ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Argentine est le chef du gouvernement. Il dirige l'administration du pays."
  },

  # Amérique - Difficile (166-180)
  {
    content: "Quel est le nom du Parlement des États-Unis ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Congrès des États-Unis",
    incorrect_answers: ["Le Sénat", "La Chambre des représentants", "Le Parlement"],
    contexte: "Le Congrès des États-Unis est l'organe législatif des États-Unis. Il est composé de deux chambres, le Sénat et la Chambre des représentants."
  },
  {
    content: "Quel est le nom du traité qui a créé le marché commun de l'Amérique du Sud (Mercosur) ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le traité d'Asunción",
    incorrect_answers: ["Le traité de Montevidéo", "Le traité de Brasília", "Le traité de Buenos Aires"],
    contexte: "Le traité d'Asunción, signé en 1991, a créé le Mercosur. C'est un marché commun de l'Amérique du Sud."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Amérique ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Les États-Unis", "Le Brésil", "Le Mexique"],
    contexte: "Le Canada est le plus grand pays d'Amérique en superficie. Il a une superficie de 9,9 millions de km²."
  },
  {
    content: "Quel est le chef de l'État du Mexique ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Mexique est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Mexique ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Mexique est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'ALENA ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Le Brésil", "Le Mexique", "L'Argentine"],
    contexte: "Le Canada est un des trois membres de l'ALENA. C'est un accord de libre-échange entre le Canada, le Mexique et les États-Unis."
  },
  {
    content: "Quel est le chef de l'État du Brésil ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Brésil est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Brésil ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Brésil est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre du Mercosur ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["Le Canada", "Le Mexique", "Les États-Unis"],
    contexte: "Le Brésil est un des quatre membres du Mercosur. C'est un marché commun de l'Amérique du Sud."
  },
  {
    content: "Quel est le pays le plus peuplé de l'Amérique du Sud ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["Le Mexique", "Le Pérou", "La Colombie"],
    contexte: "Le Brésil est le pays le plus peuplé de l'Amérique du Sud. Il a plus de 210 millions d'habitants."
  },
  {
    content: "Quel est le chef de l'État de l'Argentine ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Argentine est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Argentine ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Argentine est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays a le droit de veto au Conseil de sécurité de l'ONU ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Les États-Unis",
    incorrect_answers: ["Le Canada", "Le Brésil", "Le Mexique"],
    contexte: "Les États-Unis sont un des cinq membres permanents du Conseil de sécurité de l'ONU. Ils ont le droit de veto."
  },
  {
    content: "Quel est le chef de l'État du Canada ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi du Canada est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Canada ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Amérique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre du Canada est le chef du gouvernement. Il dirige l'administration du pays."
  },

  # Afrique - Facile (181-195)
  {
    content: "Quel pays est le plus peuplé de l'Afrique ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigéria",
    incorrect_answers: ["L'Égypte", "L'Éthiopie", "La République démocratique du Congo"],
    contexte: "Le Nigéria est le pays le plus peuplé de l'Afrique. Il a plus de 200 millions d'habitants."
  },
  {
    content: "Quel est le chef de l'État du Nigéria ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Nigéria est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Nigéria ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Nigéria est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'Union africaine ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigéria",
    incorrect_answers: ["La Chine", "L'Inde", "Le Brésil"],
    contexte: "Le Nigéria est un des 55 membres de l'Union africaine. C'est une organisation intergouvernementale régionale de l'Afrique."
  },
  {
    content: "Quel est le chef de l'État de l'Afrique du Sud ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Afrique du Sud est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Afrique du Sud ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Afrique du Sud est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Afrique ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "L'Algérie",
    incorrect_answers: ["La République démocratique du Congo", "Le Soudan", "Le Nigéria"],
    contexte: "L'Algérie est le plus grand pays d'Afrique en superficie. Il a une superficie de 2,3 millions de km²."
  },
  {
    content: "Quel est le chef de l'État de l'Algérie ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Algérie est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Algérie ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de l'Algérie est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'Union africaine ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigéria",
    incorrect_answers: ["La Chine", "L'Inde", "Le Brésil"],
    contexte: "Le Nigéria est un des 55 membres de l'Union africaine. C'est une organisation intergouvernementale régionale de l'Afrique."
  },
  {
    content: "Quel est le chef de l'État de l'Égypte ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Égypte est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Égypte ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de l'Égypte est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel est le pays le plus grand en superficie de l'Afrique ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "L'Algérie",
    incorrect_answers: ["La République démocratique du Congo", "Le Soudan", "Le Nigéria"],
    contexte: "L'Algérie est le plus grand pays d'Afrique en superficie. Il a une superficie de 2,3 millions de km²."
  },
  {
    content: "Quel est le chef de l'État du Maroc ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi du Maroc est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Maroc ?",
    difficulty: "facile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre du Maroc est le chef du gouvernement. Il dirige l'administration du pays."
  },

  # Afrique - Intermédiaire (196-210)
  {
    content: "Quel est le régime politique de l'Afrique du Sud ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "République parlementaire",
    incorrect_answers: ["Régime militaire", "Autocratie", "Royauté"],
    contexte: "Le Parlement d'Afrique du Sud est l'organe législatif de l'Afrique du Sud. Il est composé de deux chambres, le Sénat et la Chambre des représentants."
  },
  {
    content: "Quel est le nom du traité qui a créé l'Union africaine ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le traité d'Addis-Abeba",
    incorrect_answers: ["Le traité de l'OUA", "Le traité de l'Union africaine", "Le traité de Tripoli"],
    contexte: "Le traité d'Addis-Abeba, signé en 2002, a créé l'Union africaine. C'est une organisation intergouvernementale régionale de l'Afrique."
  },
  {
    content: "Quel pays est le plus peuplé de l'Afrique ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigéria",
    incorrect_answers: ["L'Égypte", "L'Éthiopie", "La République démocratique du Congo"],
    contexte: "Le Nigéria est le pays le plus peuplé de l'Afrique. Il a plus de 200 millions d'habitants."
  },
  {
    content: "Quel pays est le 7ème producteur de gaz naturel au monde ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "L'Algérie",
    incorrect_answers: ["Le Nigéria", "L'Ouganda", "Le Maroc"],
    contexte: "L'Algérie, membre de l'OPEP est un plus grands producteurs de pétrole et de gaz au monde."
  },
  {
    content: "Quel est le chef du gouvernement de l'Algérie ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de l'Algérie est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'Union africaine ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigéria",
    incorrect_answers: ["La Chine", "L'Inde", "Le Brésil"],
    contexte: "Le Nigéria est un des 55 membres de l'Union africaine. C'est une organisation intergouvernementale régionale de l'Afrique."
  },
  {
    content: "Quel régime politique est en place en Egypte en 2025 ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "République Démocratique",
    incorrect_answers: ["Autocratie", "Régime parlementaire", "Royauté"],
    contexte: "Le président de l'Égypte est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Égypte ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de l'Égypte est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Afrique ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "L'Algérie",
    incorrect_answers: ["La République démocratique du Congo", "Le Soudan", "Le Nigéria"],
    contexte: "L'Algérie est le plus grand pays d'Afrique en superficie. Il a une superficie de 2,3 millions de km²."
  },
  {
    content: "Quel est le chef de l'État du Maroc ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi du Maroc est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Afrique du Sud ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Président",
    incorrect_answers: ["Le roi", "Le Premier ministre", "Le chancelier"],
    contexte: "Le Premier ministre du Maroc est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'Union africaine ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigéria",
    incorrect_answers: ["La Chine", "L'Inde", "Le Brésil"],
    contexte: "Le Nigéria est un des 55 membres de l'Union africaine. C'est une organisation intergouvernementale régionale de l'Afrique."
  },
  {
    content: "Quel est le chef de l'État du Nigéria ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Nigéria est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Maroc ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le président du Nigéria est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Afrique ?",
    difficulty: "intermédiaire",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "L'Algérie",
    incorrect_answers: ["La République démocratique du Congo", "Le Soudan", "Le Nigéria"],
    contexte: "L'Algérie est le plus grand pays d'Afrique en superficie. Il a une superficie de 2,3 millions de km²."
  },

  # Afrique - Difficile (211-225)
  {
    content: "Quel est le nom du Parlement du Nigéria ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Sénat et la Chambre des représentants",
    incorrect_answers: ["Le Parlement", "Le Congrès", "L'Assemblée nationale"],
    contexte: "Le Parlement du Nigéria est l'organe législatif du Nigéria. Il est composé de deux chambres, le Sénat et la Chambre des représentants."
  },
  {
    content: "Quel est le nom du traité qui a créé l'Union africaine ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le traité d'Addis-Abeba",
    incorrect_answers: ["Le traité de l'OUA", "Le traité de l'Union africaine", "Le traité de Tripoli"],
    contexte: "Le traité d'Addis-Abeba, signé en 2002, a créé l'Union africaine. C'est une organisation intergouvernementale régionale de l'Afrique."
  },
  {
    content: "Quel pays est le plus peuplé de l'Afrique ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigéria",
    incorrect_answers: ["L'Égypte", "L'Éthiopie", "La République démocratique du Congo"],
    contexte: "Le Nigéria est le pays le plus peuplé de l'Afrique. Il a plus de 200 millions d'habitants."
  },
  {
    content: "Quel est le chef de l'État de l'Algérie ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Algérie est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Algérie ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de l'Algérie est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est membre de l'Union africaine ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigéria",
    incorrect_answers: ["La Chine", "L'Inde", "Le Brésil"],
    contexte: "Le Nigéria est un des 55 membres de l'Union africaine. C'est une organisation intergouvernementale régionale de l'Afrique."
  },
  {
    content: "Quel est le chef de l'État de l'Égypte ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président de l'Égypte est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement de l'Égypte ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le président", "Le roi", "Le chancelier"],
    contexte: "Le Premier ministre de l'Égypte est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Afrique ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "L'Algérie",
    incorrect_answers: ["La République démocratique du Congo", "Le Soudan", "Le Nigéria"],
    contexte: "L'Algérie est le plus grand pays d'Afrique en superficie. Il a une superficie de 2,3 millions de km²."
  },
  {
    content: "Quel est le chef de l'État du Maroc ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le roi",
    incorrect_answers: ["Le président", "Le Premier ministre", "Le chancelier"],
    contexte: "Le roi du Maroc est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Maroc ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Premier ministre",
    incorrect_answers: ["Le roi", "Le président", "Le chancelier"],
    contexte: "Le Premier ministre du Maroc est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est suspendu de l'Union africaine ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le Mali",
    incorrect_answers: ["La Mauritanie", "L'Afrique du Sud", "L'Angola"],
    contexte: "Le pays est suspendu à la suite du coup d'État de 2020"
  },
  {
    content: "Quel est le chef de l'État du Nigéria ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Nigéria est le chef de l'État. C'est une fonction principalement honorifique."
  },
  {
    content: "Quel est le chef du gouvernement du Nigéria ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "Le président",
    incorrect_answers: ["Le Premier ministre", "Le roi", "Le chancelier"],
    contexte: "Le président du Nigéria est le chef du gouvernement. Il dirige l'administration du pays."
  },
  {
    content: "Quel pays est le plus grand en superficie de l'Afrique ?",
    difficulty: "difficile",
    category: "politique et géopolitique",
    region: "Afrique",
    correct_answer: "L'Algérie",
    incorrect_answers: ["La République démocratique du Congo", "Le Soudan", "Le Nigéria"],
    contexte: "L'Algérie est le plus grand pays d'Afrique en superficie. Il a une superficie de 2,3 millions de km²."
  },
]

questions_data.each_with_index do |data, index|
  Question.create!(
    content: data[:content],
    difficulty: data[:difficulty],
    category: data[:category],
    region: data[:region],
    correct_answer: data[:correct_answer],
    incorrect_answers: data[:incorrect_answers]
  )
    puts " Question #{index + 1}/#{questions_data.length} créée" if (index + 1) % 10 == 0
end

# Statistiques
puts "\n📊 Répartition par difficulté:"
Question.group(:difficulty).count.each do |difficulty, count|
  puts "  • #{difficulty}: #{count} questions"
end

puts "\n🌍 Répartition par région:"
Question.group(:region).count.each do |region, count|
  puts "  • #{region}: #{count} questions"
end

puts "\n📚 Répartition par catégorie:"
Question.group(:category).count.each do |category, count|
  puts "  • #{category}: #{count} questions"
end

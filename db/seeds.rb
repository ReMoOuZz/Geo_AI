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
# category : Hydrographie et reliefs / régions, états, villes et capitales / ethnies, religions, langues et coutumes /  politique et géopolitique
# region : Europe, Océanie, Amérique, Afrique, Asie (un array de 5 continents)
# 1 correct_answer (string d'une bonne réponse)
# 3 incorrect_answers (un array de 3 mauvaises réponses)
# Contexte : texte de 25 mots max expliquant la bonne réponse  Propose moi 150questions sur la catégorie "Hydrographie et reliefs"
Question.destroy_all

questions_data = [

  # SEEDS Drapeaux (60) via Claude Sonnet 4.0
  # 60 questions sur Europe, Océanie, Amérique, Asie, Afrique

  {
    content: "Quel pays a ce drapeau : bandes horizontales rouge, jaune et noire ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Allemagne",
    incorrect_answers: ["France", "Russie", "Luxembourg"],
    contexte: "Ce drapeau est resté celui de l'Allemagne après sa réunification, le 3 octobre 1990"
  },
  {
    content: "Quel pays a un drapeau avec une feuille d'érable rouge ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Canada",
    incorrect_answers: ["États-Unis", "Mexique", "Brésil"],
    contexte: "La feuille d'érable est devenue le symbole national du Canada en 1965."
  },
  {
    content: "Quel pays a un drapeau avec un cercle rouge sur fond blanc ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Japon",
    incorrect_answers: ["Chine", "Corée du Sud", "Thaïlande"],
    contexte: "Le cercle rouge représente le soleil levant, symbole du Japon."
  },
  {
    content: "Quel pays a un drapeau avec une croix blanche sur fond rouge ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Danemark",
    incorrect_answers: ["Suède", "Norvège", "Finlande"],
    contexte: "Le Dannebrog danois est considéré comme le plus ancien drapeau national."
  },
  {
    content: "Quel pays africain a un drapeau avec un aigle au centre ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Zambie",
    incorrect_answers: ["Égypte", "Nigeria", "Kenya"],
    contexte: "L'aigle zambien symbolise la capacité à s'élever au-dessus des difficultés."
  },
  {
    content: "Quel pays a un drapeau avec 50 étoiles et 13 bandes ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "États-Unis",
    incorrect_answers: ["Canada", "Mexique", "Argentine"],
    contexte: "Les 50 étoiles représentent les États, les 13 bandes les colonies."
  },
  {
    content: "Quel pays a un drapeau entièrement vert avec un croissant et une étoile blancs ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Pakistan",
    incorrect_answers: ["Bangladesh", "Arabie Saoudite", "Iran"],
    contexte: "Le vert représente l'islam, le croissant et l'étoile l'unité musulmane."
  },
  {
    content: "Quel pays a un drapeau avec une croix jaune sur fond bleu ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Suède",
    incorrect_answers: ["Norvège", "Finlande", "Danemark"],
    contexte: "Les couleurs bleue et jaune sont traditionnelles de la Suède royale."
  },
  {
    content: "Quel pays a un drapeau avec un dragon au centre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Bhoutan",
    incorrect_answers: ["Chine", "Mongolie", "Tibet"],
    contexte: "Le dragon du tonnerre symbolise la spiritualité bhoutanaise traditionnelle."
  },
  {
    content: "Quel pays a un drapeau tricolore vertical vert, blanc et rouge ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Italie",
    incorrect_answers: ["Irlande", "Mexique", "Iran"],
    contexte: "Inspiré du drapeau français, adopté lors de l'unification italienne."
  },
  {
    content: "Quel pays a un drapeau avec l'Union Jack dans le coin supérieur gauche ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Zélande",
    incorrect_answers: ["Ecosse", "Tahiti", "Canada"],
    contexte: "L'Union Jack rappelle l'héritage britannique de la Nouvelle-Zélande."
  },
  {
    content: "Quel pays a un drapeau avec une étoile blanche sur fond rouge, blanc, bleu ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Chili",
    incorrect_answers: ["Cuba", "Porto Rico", "Texas"],
  },
  {
    content: "Quel pays a un drapeau avec un cèdre vert au centre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Liban",
    incorrect_answers: ["Syrie", "Jordanie", "Irak"],
    contexte: "L'étoile représente l'unité du pays, le rouge le sang versé."
  },
  {
    content: "Quel pays a un drapeau avec une croix blanche sur fond rouge ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Suisse",
    incorrect_answers: ["Suède", "Angleterre", "Géorgie"],
    contexte: "Seul drapeau national carré au monde avec le Vatican."
  },
  {
    content: "Quel pays a un drapeau avec un soleil au centre sur fond bleu et blanc ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Argentine",
    incorrect_answers: ["Uruguay", "Brésil", "Chili"],
    contexte: "Le soleil de Mai commémore la révolution de mai 1810."

  },
  {
    content: "Quel pays a un drapeau avec une lune croissante et une étoile sur fond rouge ?",
    difficulty: "Difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Turquie",
    incorrect_answers: ["Maroc", "Algérie", "Pakistan"],
    contexte: "Symboles islamiques adoptés par l'Empire ottoman historique."
  },
  {
    content: "Quel pays a un drapeau noir, rouge et jaune en bandes verticales ?",
    difficulty: "Facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Belgique",
    incorrect_answers: ["Italie", "Autriche", "Espagne"],
    contexte: "Le 30 septembre 1830, le gouvernement provisoire adopte le drapeau national"
  },
  {
    content: "Lequel de ces pays n'a pas de bandes bleue, jaune et rouge dans son drapeau?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Pérou",
    incorrect_answers: ["Venezuela", "Équateur", "Colombie"],
    contexte: "Ces couleurs sont l'héritage de la Grande Colombie de Bolívar, le Pérou est exclu."
  },
  {
    content: "Quel pays a un drapeau entièrement rouge avec 5 étoiles jaunes ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Chine",
    incorrect_answers: ["Vietnam", "Corée du Nord", "Laos"],
    contexte: "Rouge communiste, grande étoile pour le parti, 4 petites pour classes."
  },
  {
    content: "Quel pays a un drapeau avec un lion tenant une épée ?",
    difficulty: "Difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Sri Lanka",
    incorrect_answers: ["Myanmar", "Thaïlande", "Cambodge"],
    contexte: "Lion singhalais traditionnel symbolisant la bravoure nationale."
  },
  {
    content: "Quel pays a un drapeau avec une étoile rouge sur fond blanc et vert ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Algérie",
    incorrect_answers: ["Maroc", "Tunisie", "Libye"],
    contexte: "Vert pour l'islam, blanc pour la paix, rouge pour liberté."
  },
  {
    content: "Quel pays a un drapeau avec des bandes orange, blanche et verte avec une roue au centre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Inde",
    incorrect_answers: ["Bangladesh", "Pakistan", "Sri Lanka"],
    contexte: "La roue d'Ashoka représente le dharma et le progrès."
  },
  {
    content: "Quel pays a un drapeau avec quatre étoiles représentant la Croix du Sud ?",
    difficulty: "Difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Zélande",
    incorrect_answers: ["Australie", "Samoa", "Fidji"],
    contexte: "La Croix du Sud guide la navigation dans l'hémisphère sud."
  },
  {
    content: "Quel pays a un drapeau avec un aigle dévorant un serpent sur un cactus ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Mexique",
    incorrect_answers: ["Guatemala", "Équateur", "Pérou"],
    contexte: "Légende aztèque de la fondation de Tenochtitlan."
  },
  {
    content: "Quel pays a un drapeau avec une unique étoile dorée sur fond rouge ?",
    difficulty: "Intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Vietnam",
    incorrect_answers: ["Chine", "Corée du Nord", "Laos"],
    contexte: "Étoile à cinq branches symbolisant les classes sociales unies."
  },
  {
    content: "Quel pays a un drapeau avec un trident au centre ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Barbade",
    incorrect_answers: ["Jamaïque", "Trinité-et-Tobago", "Bahamas"],
    contexte: "Trident brisé symbolisant l'indépendance des liens coloniaux."
  },
  {
    content: "Quel pays a un drapeau avec une kalashnikov ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Mozambique",
    incorrect_answers: ["Angola", "Zimbabwe", "Zambie"],
    contexte: "Seul drapeau national avec une arme moderne représentant la lutte."
  },
  {
    content: "Quel pays a un drapeau avec un quetzal (oiseau) sur la déclaration d'indépendance au centre ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Guatemala",
    incorrect_answers: ["Honduras", "Costa Rica", "Nicaragua"],
    contexte: "Quetzal oiseau sacré maya symbolisant la liberté."
  },
  {
    content: "Quel pays a un drapeau avec 5 étoiles et la carte du pays sur fond bleu ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Kosovo",
    incorrect_answers: ["Serbie", "Macédoine du Nord", "Monténégro"],
    contexte: "L'indépendance du Kosovo a été proclamée unilatéralement le 17 février 2008"
  },
  {
    content: "Quel pays d'Afrique porte un drapeau avec les couleurs verte, rouge, blanche ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Madagascar",
    incorrect_answers: ["Cap-Vert", "Mauritius", "Les Comores"],
    contexte: "Les couleurs du drapeau représentent des principes vénérés toujours"
  },
  {
    content: "Quel pays a un drapeau avec des bandes blanche et rouge + un triangle bleu à gauche ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "République tchèque",
    incorrect_answers: ["Slovaquie", "Slovénie", "Pologne"],
    contexte: "Triangle bleu distinctif le démarquant du drapeau polonais."
  },
  {
    content: "Quel pays a un drapeau avec une couronne royale dans le coin supérieur gauche ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Liechtenstein",
    incorrect_answers: ["Monaco", "Luxembourg", "Andorre"],
    contexte: "Couronne princière ajoutée pour le distinguer du drapeau haïtien."

  },
  {
    content: "Quel pays n'a pas de condor des Andes sur son drapeau ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Vénézuela",
    incorrect_answers: ["Colombie", "Équateur", "Bolivie"],
    contexte: "Le condor représente la liberté andine, le Vénézuela n'est pas dans les Andes."
  },
  {
    content: "Quel pays a un drapeau avec deux mains vers le ciel en son centre ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Brunei",
    incorrect_answers: ["Malaisie", "Indonésie", "Singapour"],
    contexte: "Deux mains qui personnifient l'engagement du gouvernement à promouvoir la sérénité"
  },
  {
    content: "Quel pays a un drapeau avec un yin-yang au centre ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Corée du Sud",
    incorrect_answers: ["Corée du Nord", "Mongolie", "Tibet"],
    contexte: "Taegeuk représente l'équilibre des forces cosmiques."
  },
  {
    content: "Quel pays a un drapeau avec une grue couronnée (oiseau) au centre ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Ouganda",
    incorrect_answers: ["Kenya", "Tanzanie", "Rwanda"],
    contexte: "Grue royale, oiseau national symbolisant la beauté ougandaise."
  },
  {
    content: "Combien y a-t-il d'étoiles sur le drapeau des Etats-Unis ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "50",
    incorrect_answers: ["41", "51", "40"],
    contexte: "Les 50 étoiles représentent les États, Puerto Rico n'est pas un état des Etats-Unis"

  },
  {
    content: "Quel pays a un drapeau avec un bouclier masaï traditionnel ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Kenya",
    incorrect_answers: ["Tanzanie", "Ouganda", "Éthiopie"],
    contexte: "Les Masaï sont un peuple d'éleveurs et de guerriers d'Afrique de l'Est"
  },
  {
    content: "Quel pays a un drapeau avec un makatea (atoll) stylisé ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Marshall",
    incorrect_answers: ["Palau", "Nauru", "Tuvalu"],
    contexte: "Cet archipel est formé d'îles volcaniques et d'atolls coralliens."
  },
  {
    content: "Quel pays a un drapeau avec une constellation d'étoiles ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Brésil",
    incorrect_answers: ["Venezuela", "Guyana", "Suriname"],
    contexte: "Les étoiles représentent la constellation de la Croix du Sud et les États du pays"
  },
  {
    content: "Quel pays a un drapeau bleu avec l'Union Jack et 4 étoiles ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Zélande",
    incorrect_answers: ["Australie", "Fidji", "Tuvalu"],
    contexte: "Quatre étoiles de la Croix du Sud pour la NZ et cinq pour l'Australie."
  },
  {
    content: "Quel pays océanien a un drapeau bleu clair avec des étoiles dorées ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Tuvalu",
    incorrect_answers: ["Samoa", "Palau", "Nauru"],
    contexte: "Neuf étoiles représentent les neuf atolls de l'archipel."
  },
  {
    content: "Quel pays a un drapeau avec un cercle jaune sur fond bleu ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Palau",
    incorrect_answers: ["Nauru", "Kiribati", "Samoa"],
    contexte: "Le cercle jaune représente la pleine lune, symbole de paix."
  },
  {
    content: "Quel drapeau océanien est rouge avec un carré bleu et des étoiles ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Samoa",
    incorrect_answers: ["Tonga", "Fidji", "Vanuatu"],
    contexte: "Carré bleu avec cinq étoiles représentant la Croix du Sud."
  },
  {
    content: "Quel pays a un drapeau rouge avec une croix blanche ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Tonga",
    incorrect_answers: ["Samoa", "Fidji", "Vanuatu"],
    contexte: "Seul pays océanien jamais colonisé, croix symbole chrétien."
  },
  {
    content: "Quel archipel a un drapeau bleu clair avec l'Union Jack et armoiries ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Fidji",
    incorrect_answers: ["Tuvalu", "Îles Cook", "Nauru"],
    contexte: "Écu avec lion tenant une noix de coco et canne à sucre."
  },
  {
    content: "Quel pays océanien a un drapeau avec un triangle noir et jaune ?",
    difficulty: "Difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Vanuatu",
    incorrect_answers: ["Samoa", "Tonga", "Palau"],
    contexte: "Y stylisé représentant l'archipel, défense de porc et fougère."
  },
  {
    content: "Quel micro-État (île) a un drapeau bleu avec une bande jaune horizontale ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Nauru",
    incorrect_answers: ["Palau", "Tuvalu", "Kiribati"],
    contexte: "Bande jaune représente l'équateur, étoile blanche l'île."
  },
  {
    content: "Quel pays a un drapeau avec soleil levant et oiseau-frégate ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Kiribati",
    incorrect_answers: ["Nauru", "Tuvalu", "Palau"],
    contexte: "Seul drapeau avec soleil levant doré sur fond bleu et rouge."
  },
  {
    content: "Quel territoire a l'Union Jack avec cercle d'étoiles blanches ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Îles Cook",
    incorrect_answers: ["Niue", "Tokelau", "Samoa américaines"],
    contexte: "Quinze étoiles représentent les quinze îles de l'archipel."
  },
  {
    content: "Quel état Australien a un drapeau bleu avec l'Union Jack et un lion ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Tasmanie",
    incorrect_answers: ["Îles Cook", "Tokelau", "Pitcairn"],
    contexte: "Fond jaune unique, Union Jack et cinq étoiles jaunes."
  },
  {
    content: "Quel pays a un drapeau rouge et blanc avec triangle vert ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Îles Salomon",
    incorrect_answers: ["Vanuatu", "Fidji", "Papouasie"],
    contexte: "Diagonal divisant le drapeau, cinq étoiles blanches."
  },
  {
    content: "Quel pays a un drapeau noir, rouge et jaune avec oiseau-paradis ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["Îles Salomon", "Vanuatu", "Fidji"],
    contexte: "Diagonal divisant triangle rouge et noir, Croix du Sud."
  },
  {
    content: "Quel archipel américain a un triangle rouge et blanc avec un aigle ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Samoa américaines",
    incorrect_answers: ["Guam", "Îles Mariannes", "Îles Marshall"],
    contexte: "Aigle américain tenant simboles samoans traditionnels."
  },
  {
    content: "Quel territoire américain a un drapeau bleu foncé avec armoiries ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Guam",
    incorrect_answers: ["Samoa américaines", "Îles Mariannes", "Wake"],
    contexte: "Écusson ovale rouge avec cocotier et embarcation traditionnelle."
  },
  {
    content: "Quel drapeau a des bandes blanche et orange avec étoile blanche ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Îles Marshall",
    incorrect_answers: ["Palau", "Nauru", "Kiribati"],
    contexte: "Bandes diagonales représentant l'équateur et les atolls."
  },
  {
    content: "Quel micro-État a un drapeau bleu avec triangle rouge et étoiles ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "États fédérés de Micronésie",
    incorrect_answers: ["Palau", "Îles Marshall", "Nauru"],
    contexte: "Quatre étoiles blanches représentant les quatre États fédérés."
  },
  {
    content: "Quel territoire français a trois bandes verticales avec emblème ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Calédonie",
    incorrect_answers: ["Polynésie française", "Wallis-et-Futuna", "Tahiti"],
    contexte: "Drapeau indépendantiste kanak avec flèche faîtière."
  },
  {
    content: "Quel pays africain a un drapeau vert avec croissant et étoile ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Algérie",
    incorrect_answers: ["Pakistan", "Tunisie", "Mauritanie"],
    contexte: "L'Algérie prend son indépendance vis à vis de la France le 5 juillet 1962."
  },
  {
    content: "Quel drapeau possède des bandes noire, blanche, verte avec un triangle et une étoile ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Jordanie",
    incorrect_answers: ["Syrie", "Liban", "Palestine"],
    contexte: "Cèdre du Liban millénaire, symbole de force et éternité."
  },
  {
    content: "Quel pays a deux bandes rouges et une bande blanche ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Autriche",
    incorrect_answers: ["Suisse", "Luxembourg", "Allemagne"],
    contexte: "L'origine remonte au blason de la maison régnante des Babenberg"
  },
  {
    content: "Quel pays a un drapeau bleu et blanc avec un soleil ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Uruguay",
    incorrect_answers: ["Chili", "Paraguay", "Bolivie"],
    contexte: "Soleil de Mai inspiré du drapeau argentin."
  },
  {
    content: "Quel pays a un drapeau bleu ciel avec soleil et aigle ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Kazakhstan",
    incorrect_answers: ["Azerbaïdjan", "Turkménistan", "Turquie"],
    contexte: "L'aigle était le symbole de Gengis Khan"
  },
  {
    content: "Quel pays africain a des bandes verte, jaune et rouge avec étoile ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Ghana",
    incorrect_answers: ["Liberia", "Mali", "Burkina Faso"],
    contexte: "Première colonie africaine indépendante, étoile noire de liberté."
  },
  {
    content: "Quel pays européen a un drapeau rouge avec une croix bleue et blanche ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Norvège",
    incorrect_answers: ["Suède", "Finlande", "Islande"],
    contexte: "Croix scandinave, à ne pas confondre avec le drapeau Islandais"
  },
  {
    content: "Quel pays  a un drapeau vert avec losange jaune ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Brésil",
    incorrect_answers: ["Bolivie", "Pérou", "Colombie"],
    contexte: "Devise 'Ordem e Progresso', sphère céleste avec étoiles."
  },
  {
    content: "Quel pays asiatique a un drapeau blanc et rouge horizontal, sans motif?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Indonésie",
    incorrect_answers: ["Pologne", "Monaco", "Singapour"],
    contexte: "Monaco et Pologne sont en Europe, Singapour a une lune et des étoiles"
  },
  {
    content: "Quel pays a un drapeau à 5 couleurs avec un croissant ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Comores",
    incorrect_answers: ["Mauritanie", "Algérie", "Tunisie"],
    contexte: "Quatre bandes représentent les quatre îles principales."
  },
  {
    content: "Quel pays européen a un drapeau rouge avec aigle noir bicéphale ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Albanie",
    incorrect_answers: ["Serbie", "Monténégro", "Macédoine"],
    contexte: "Aigle de Skanderbeg, héros national résistant aux Ottomans."
  },

  # SEEDS Drapeaux via GEMINI 2.5 PRO > NON VERIFIEES

  # EUROPE - Drapeaux

  {
    content: "À quel pays appartient le drapeau tricolore vertical bleu, blanc, rouge ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "France",
    incorrect_answers: ["Italie", "Belgique", "Pays-Bas"],
    contexte: "Le drapeau français est l'emblème national de la France depuis la Révolution française."
  },
  {
    content: "Ce drapeau avec des bandes horizontales noire, rouge et or est celui de quel pays ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Allemagne",
    incorrect_answers: ["Belgique", "Autriche", "Espagne"],
    contexte: "Lcouleurs du drapeau proviennent des uniformes des soldats durant les guerres napoléoniennes."
  },
  {
    content: "Quel pays est représenté par un drapeau aux bandes verticales verte, blanche et rouge ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Italie",
    incorrect_answers: ["France", "Irlande", "Hongrie"],
    contexte: "Le 'Tricolore' italien s'inspire du drapeau français. Le vert représente l'espoir, le blanc la foi et le rouge la charité."
  },
  {
    content: "Ce drapeau, connu sous le nom d'Union Jack, est l'emblème de quel État ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Royaume-Uni",
    incorrect_answers: ["Irlande", "Islande", "Finlande"],
    contexte: "L'Union Jack est une superposition des Drapeaux de l'Angleterre, de l'Écosse et de l'Irlande du Nord, symbolisant l'union de ces royaumes."
  },
  {
    content: "À quel pays correspond le drapeau rouge et jaune avec un blason au centre ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Espagne",
    incorrect_answers: ["Portugal", "Andorre", "Vatican"],
    contexte: "Surnommé 'la Rojigualda', le drapeau espagnol arbore les couleurs des anciens royaumes d'Aragon et de Castille, avec les armoiries nationales."
  },
  {
    content: "Quel pays utilise un drapeau à bandes horizontales blanche, bleue et rouge ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Russie",
    incorrect_answers: ["Belgique", "Lettonie", "Biélorussie"],
    contexte: "Ce drapeau a été adopté par Pierre le Grand. Le blanc symbolise la noblesse, le bleu la fidélité et le rouge le courage."
  },
  {
    content: "Ce drapeau est bleu avec une croix scandinave jaune. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Suède",
    incorrect_answers: ["Norvège", "Danemark", "Finlande"],
    contexte: "Le drapeau suédois est l'un des plus anciens. La croix nordique symbolise le christianisme et se retrouve sur de nombreux Drapeaux scandinaves."
  },
  {
    content: "Un fond rouge avec une croix blanche en son centre caractérise le drapeau de quel pays ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Suisse",
    incorrect_answers: ["Danemark", "Malte", "Autriche"],
    contexte: "Le drapeau carré de la Suisse est un symbole de neutralité et de paix. La croix blanche est un emblème chrétien utilisé depuis le Moyen Âge."
  },
  {
    content: "Quel pays est représenté par un drapeau aux bandes verticales noire, jaune et rouge ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Belgique",
    incorrect_answers: ["Allemagne", "France", "Roumanie"],
    contexte: "Les couleurs du drapeau belge sont celles du duché de Brabant. L'ordre vertical a été adopté pour se distinguer du drapeau allemand."
  },
  {
    content: "Ce drapeau est rouge avec une croix scandinave blanche. À quel pays appartient-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Danemark",
    incorrect_answers: ["Suisse", "Suède", "Norvège"],
    contexte: "Connu sous le nom de 'Dannebrog', ce drapeau est considéré comme le plus ancien drapeau national encore en usage, datant du XIIIe siècle."
  },
  {
    content: "Quel pays arbore un drapeau blanc traversé par une croix scandinave bleue ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Finlande",
    incorrect_answers: ["Grèce", "Islande", "Suède"],
    contexte: "Le drapeau finlandais symbolise les lacs (bleu) et la neige (blanc) qui caractérisent les paysages du pays. Il a été adopté en 1918."
  },
  {
    content: "Ce drapeau est rouge, avec une croix scandinave bleue bordée de blanc. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Norvège",
    incorrect_answers: ["Islande", "Danemark", "Suède"],
    contexte: "Le drapeau norvégien combine les couleurs de la France avec la croix scandinave, reflétant les liens historiques et culturels du pays."
  },
  {
    content: "Quel pays a un drapeau composé de neuf bandes horizontales bleues et blanches avec une croix blanche dans un carré bleu en haut à gauche ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Grèce",
    incorrect_answers: ["Finlande", "Chypre", "Portugal"],
    contexte: "Les neuf bandes du drapeau grec représenteraient les syllabes de la devise 'Liberté ou la Mort'. Le bleu et le blanc symbolisent la mer et le ciel."
  },
  {
    content: "Quel pays a un drapeau bicolore vert et rouge avec les armoiries nationales au centre ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Portugal",
    incorrect_answers: ["Espagne", "Hongrie", "Italie"],
    contexte: "Le vert représente l'espoir et le rouge le sang des héros. La sphère armillaire évoque l'âge des grandes découvertes portugaises."
  },
  {
    content: "Le drapeau des Pays-Bas est composé de trois bandes horizontales. Quelles sont leurs couleurs de haut en bas ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Rouge, blanc, bleu",
    incorrect_answers: ["Bleu, blanc, rouge", "Rouge, jaune, noir", "Blanc, bleu, rouge"],
    contexte: "C'est l'un des plus anciens Drapeaux tricolores. La bande orange originelle a été remplacée par du rouge pour une meilleure visibilité en mer."
  },
  {
    content: "Quel pays a un drapeau tricolore vertical vert, blanc et orange ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Irlande",
    incorrect_answers: ["Italie", "Côte d'Ivoire", "Hongrie"],
    contexte: "Le vert représente la tradition catholique, l'orange les protestants, et le blanc la paix entre eux."
  },
  {
    content: "Un drapeau à deux bandes horizontales, blanche en haut et rouge en bas, appartient à quel pays ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Pologne",
    incorrect_answers: ["Monaco", "Autriche", "Malte"],
    contexte: "Les couleurs sont basées sur les armoiries de la Pologne (aigle blanc) et de la Lituanie (cavalier blanc sur fond rouge)."
  },
  {
    content: "À quel pays correspond un drapeau à bandes horizontales bleue et jaune ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Ukraine",
    incorrect_answers: ["Suède", "Estonie", "Kazakhstan"],
    contexte: "Le bleu symbolise le ciel et le jaune les champs de blé, représentant les paysages et la richesse agricole de l'Ukraine."
  },
  {
    content: "Quel pays utilise un drapeau à trois bandes horizontales rouges, blanches et vertes ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Hongrie",
    incorrect_answers: ["Bulgarie", "Italie", "Mexique"],
    contexte: "Ces couleurs sont issues des armoiries hongroises. Le rouge symbolise la force, le blanc la fidélité et le vert l'espoir."
  },
  {
    content: "Ce drapeau est composé de trois bandes horizontales rouge, blanche et rouge. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Autriche",
    incorrect_answers: ["Pologne", "Lettonie", "Liban"],
    contexte: "Selon la légende, les couleurs représentent la tunique ensanglantée d'un duc après une bataille, sauf la partie protégée par sa ceinture."
  },
  {
    content: "Un drapeau bleu, noir et blanc en bandes horizontales est l'emblème de quel État balte ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Estonie",
    incorrect_answers: ["Lettonie", "Lituanie", "Finlande"],
    contexte: "Le bleu représente le ciel, le noir le sol natal et le blanc la neige et l'aspiration à la lumière."
  },
  {
    content: "Quel pays a un drapeau rouge avec un aigle noir à deux têtes au centre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Albanie",
    incorrect_answers: ["Serbie", "Monténégro", "Russie"],
    contexte: "L'aigle bicéphale est un symbole hérité de l'Empire byzantin et fut utilisé par le héros national Skanderbeg contre les Ottomans."
  },
  {
    content: "Quel pays est représenté par un drapeau tricolore horizontal blanc, vert et rouge ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Bulgarie",
    incorrect_answers: ["Hongrie", "Italie", "Iran"],
    contexte: "Le blanc symbolise la paix et l'amour, le vert la fertilité des terres bulgares, et le rouge le courage et le sang des patriotes."
  },
  {
    content: "Ce drapeau est bleu avec une croix scandinave rouge bordée de blanc. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Islande",
    incorrect_answers: ["Norvège", "Finlande", "Îles Féroé"],
    contexte: "Le drapeau représente la nature du pays : le rouge pour le feu des volcans, le blanc pour la glace et le bleu pour l'océan."
  },
  {
    content: "Quel pays a un drapeau à bandes horizontales rouge, blanc et bleu clair ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Luxembourg",
    incorrect_answers: ["Pays-Bas", "Russie", "France"],
    contexte: "Très similaire au drapeau néerlandais, celui du Luxembourg se distingue par sa nuance de bleu plus claire, officiellement définie comme 'bleu ciel'."
  },
  {
    content: "Un drapeau à bandes verticales bleu, jaune et rouge est celui de quel pays ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Roumanie",
    incorrect_answers: ["Tchad", "Andorre", "Moldavie"],
    contexte: "Le drapeau roumain, adopté en 1989, symbolise la liberté. Il est quasi identique à celui du Tchad, mais avec des nuances de bleu différentes."
  },
  {
    content: "À quel pays appartient le drapeau tricolore horizontal rouge, blanc et bleu avec un blason représentant un échiquier ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Croatie",
    incorrect_answers: ["Serbie", "Slovénie", "Slovaquie"],
    contexte: "Le 'šahovnica' (échiquier) au centre est un symbole historique croate. Les blasons au-dessus représentent les régions historiques du pays."
  },
  {
    content: "Ce drapeau est composé de trois bandes horizontales jaune, verte et rouge. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Lituanie",
    incorrect_answers: ["Estonie", "Lettonie", "Bulgarie"],
    contexte: "Le jaune symbolise le soleil, le vert les forêts et la nature, et le rouge le sang versé pour l'indépendance."
  },
  {
    content: "Un drapeau avec deux bandes horizontales, lie-de-vin en haut et en bas, séparées par une bande blanche plus fine. Quel pays représente-t-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Lettonie",
    incorrect_answers: ["Autriche", "Liban", "Pologne"],
    contexte: "L'un des plus anciens Drapeaux du monde. La légende dit qu'il représente un drap blanc taché du sang d'un chef letton blessé."
  },
  {
    content: "Quel pays a un drapeau blanc et rouge avec un triangle bleu sur le côté du guindant ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "République Tchèque",
    incorrect_answers: ["Pologne", "Slovaquie", "Philippines"],
    contexte: "Le drapeau combine les couleurs de la Bohême (blanc et rouge) avec le bleu de la Moravie. Il a été conservé après la dissolution de la Tchécoslovaquie."
  },
  {
    content: "Quel pays a un drapeau tricolore blanc, bleu, rouge avec un blason représentant trois pics et une croix patriarcale ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Slovaquie",
    incorrect_answers: ["Slovénie", "Serbie", "Russie"],
    contexte: "Similaire aux Drapeaux russe et slovène, il se distingue par son blason : le mont Tatra et la double croix de la tradition chrétienne byzantine."
  },
  {
    content: "À quel micro-État appartient un drapeau à bandes verticales bleu, jaune, rouge avec un blason au centre ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Andorre",
    incorrect_answers: ["Roumanie", "Moldavie", "Tchad"],
    contexte: "Les couleurs et le blason symbolisent la double suzeraineté de la France et de l'évêque d'Urgell, garantissant l'indépendance de la principauté."
  },
  {
    content: "Ce drapeau est identique à celui de la Roumanie, mais avec un blason (aigle tenant une croix) au centre de la bande jaune. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Moldavie",
    incorrect_answers: ["Andorre", "Roumanie", "Belgique"],
    contexte: "Le blason, représentant un auroch et un aigle, est l'élément qui distingue le drapeau moldave de celui de la Roumanie, reflétant une histoire partagée."
  },
  {
    content: "Quel pays a un drapeau tricolore blanc, bleu, rouge avec un blason représentant le mont Triglav, le plus haut sommet du pays ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Slovénie",
    incorrect_answers: ["Slovaquie", "Croatie", "Serbie"],
    contexte: "Le blason, ajouté en 1991, représente le mont Triglav, la mer Adriatique et les rivières du pays."
  },
  {
    content: "Un drapeau blanc avec une carte de l'île en couleur cuivre et deux rameaux d'olivier en dessous est celui de quel pays insulaire ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Chypre",
    incorrect_answers: ["Malte", "Crète", "Kosovo"],
    contexte: "Son dessin neutre (évitant les couleurs grecques et turques) et les rameaux d'olivier symbolisent la paix entre les deux communautés."
  },
  {
    content: "Quel pays a un drapeau bleu et rouge avec une couronne princière dorée dans le coin supérieur gauche ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Liechtenstein",
    incorrect_answers: ["Luxembourg", "Monaco", "Andorre"],
    contexte: "La couronne a été ajoutée en 1937 après avoir découvert aux JO que le drapeau était identique à celui d'Haïti."
  },
  {
    content: "Ce drapeau est bicolore, blanc et rouge en bandes verticales, avec une Croix de George dans le canton blanc. Quel pays est-ce ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Malte",
    incorrect_answers: ["Pologne", "Monaco", "Suisse"],
    contexte: "La Croix de George a été décernée à l'île par le roi George VI pour sa bravoure pendant la Seconde Guerre mondiale."
  },
  {
    content: "À quel pays correspond un drapeau bleu avec un triangle jaune et une rangée d'étoiles blanches ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Bosnie-Herzégovine",
    incorrect_answers: ["Kosovo", "Albanie", "Macédoine du Nord"],
    contexte: "Les étoiles et la couleur bleue représentent l'Europe. Le triangle symbolise les trois peuples constitutifs du pays (Bosniaques, Croates et Serbes)."
  },
  {
    content: "Un fond rouge avec un soleil d'or à huit rayons est le drapeau de quel pays des Balkans ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Macédoine du Nord",
    incorrect_answers: ["Albanie", "Monténégro", "Kirghizistan"],
    contexte: "Le 'soleil de la liberté' a été adopté en 1995. Il symbolise un nouveau départ pour la nation après son indépendance."
  },
  {
    content: "Quel micro-État a un drapeau à deux bandes horizontales, blanche en haut et bleue en bas, avec ses armoiries au centre ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Saint-Marin",
    incorrect_answers: ["Vatican", "Andorre", "Liechtenstein"],
    contexte: "Le blanc symbolise la neige du mont Titano et la pureté, le bleu le ciel et la liberté. Les armoiries portent la devise 'Libertas'."
  },
  {
    content: "Ce drapeau est rouge avec une bordure dorée et le blason national (un aigle bicéphale) au centre. À quel pays appartient-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Monténégro",
    incorrect_answers: ["Albanie", "Serbie", "Russie"],
    contexte: "Il s'inspire d'un étendard militaire historique. L'aigle bicéphale est un symbole de la dynastie Petrović-Njegoš qui a régné sur le pays."
  },
  {
    content: "Un drapeau rouge et vert, avec un motif ornemental blanc et rouge sur le côté du guindant, représente quel pays d'Europe de l'Est ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Biélorussie",
    incorrect_answers: ["Lituanie", "Moldavie", "Ukraine"],
    contexte: "Le motif 'rushnyk' est un dessin traditionnel biélorusse. C'est une version modifiée du drapeau de la république socialiste soviétique de Biélorussie."
  },
  {
    content: "Ce drapeau est bicolore rouge et blanc, en deux bandes horizontales. Attention à ne pas le confondre. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Monaco",
    incorrect_answers: ["Pologne", "Indonésie", "Malte"],
    contexte: "Les couleurs rouge et blanche sont celles de la maison princière des Grimaldi. Il est identique au drapeau indonésien, mais avec des proportions différentes."
  },
  {
    content: "Quel est le seul drapeau national en Europe à être de forme carrée, en dehors de celui de la Suisse ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Vatican",
    incorrect_answers: ["Saint-Marin", "Monaco", "Liechtenstein"],
    contexte: "Le drapeau de la Cité du Vatican est divisé verticalement en jaune et blanc, avec les clés de Saint-Pierre et la tiare papale."
  },
  {
    content: "Ce drapeau tricolore horizontal dans l'ordre : rouge, bleu et blanc avec un grand blason est celui de quel pays ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Europe",
    correct_answer: "Serbie",
    incorrect_answers: ["Russie", "Slovaquie", "Slovénie"],
    contexte: "Il utilise les couleurs panslaves, mais dans un ordre inversé par rapport à la Russie. Le blason représente l'aigle bicéphale serbe."
  },

  # ASIE - Drapeaux

  {
    content: "Ce drapeau rouge avec cinq étoiles jaunes (une grande et quatre petites) est celui de quel pays ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Chine",
    incorrect_answers: ["Vietnam", "Corée du Nord", "Laos"],
    contexte: "Le rouge symbolise la révolution communiste. La grande étoile représente le Parti Communiste Chinois, et les quatre petites, les classes sociales unies."
  },
  {
    content: "Un disque rouge plein sur un fond blanc simple caractérise le drapeau de quel pays insulaire ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Japon",
    incorrect_answers: ["Bangladesh", "Palaos", "Laos"],
    contexte: "Appelé 'Nisshōki' ou 'Hinomaru' (disque solaire), il représente le soleil levant, un symbole important dans la mythologie et la culture japonaises."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal safran, blanc et vert avec une roue bleue au centre ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Inde",
    incorrect_answers: ["Pakistan", "Sri Lanka", "Bangladesh"],
    contexte: "La roue, appelée Ashoka Chakra, est un symbole bouddhiste de la loi et du dharma. Les couleurs représentent le courage, la paix et la foi."
  },
  {
    content: "À quel pays appartient ce drapeau blanc avec un cercle rouge et bleu (Taegeuk) au centre et quatre trigrammes noirs aux coins ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Corée du Sud",
    incorrect_answers: ["Corée du Nord", "Japon", "Chine"],
    contexte: "Appelé 'Taegeukgi', il symbolise l'équilibre de l'univers. Les trigrammes représentent les éléments : ciel, terre, eau et feu."
  },
  {
    content: "Ce drapeau vert avec une inscription en arabe blanc et un sabre est celui de quel royaume du Moyen-Orient ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Arabie Saoudite",
    incorrect_answers: ["Iran", "Irak", "Pakistan"],
    contexte: "Le vert est la couleur de l'Islam. L'inscription est la 'chahada', la profession de foi musulmane. Le sabre symbolise la justice."
  },
  {
    content: "Un drapeau rouge avec une étoile jaune à cinq branches au centre est l'emblème de quel pays d'Asie du Sud-Est ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Vietnam",
    incorrect_answers: ["Chine", "Corée du Nord", "Myanmar"],
    contexte: "Le rouge symbolise la révolution et le sang versé pour l'indépendance. L'étoile jaune représente l'unité du peuple sous la direction du Parti communiste."
  },
  {
    content: "Quel pays a un drapeau rouge avec une étoile blanche et un croissant de lune blanc ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Turquie",
    incorrect_answers: ["Pakistan", "Tunisie", "Algérie"],
    contexte: "L'étoile et le croissant sont des symboles pré-islamiques adoptés par les peuples turcs, puis associés à l'Islam. Ils figurent sur le drapeau ottoman."
  },
  {
    content: "Ce drapeau est composé de deux bandes horizontales bleues encadrant une bande blanche, avec une Étoile de David bleue au centre. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Israël",
    incorrect_answers: ["Liban", "Grèce", "Argentine"],
    contexte: "Le dessin s'inspire du talit, le châle de prière juif. L'Étoile de David est un symbole universellement reconnu du judaïsme."
  },
  {
    content: "Quel pays utilise un drapeau vert avec un croissant de lune blanc et une étoile, et une bande blanche verticale sur le côté ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Pakistan",
    incorrect_answers: ["Arabie Saoudite", "Turquie", "Iran"],
    contexte: "Le vert représente la majorité musulmane, et la bande blanche les minorités religieuses. Le croissant et l'étoile symbolisent le progrès et la lumière."
  },
  {
    content: "Un drapeau rouge avec un grand cercle blanc et une étoile rouge à l'intérieur est celui de quel pays ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Corée du Nord",
    incorrect_answers: ["Chine", "Corée du Sud", "Vietnam"],
    contexte: "Le rouge symbolise le communisme et le patriotisme révolutionnaire. L'étoile rouge représente le socialisme et le cercle blanc, la pureté."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal vert, blanc et rouge ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Iran",
    incorrect_answers: ["Irak", "Syrie", "Hongrie"],
    contexte: "Le vert représente l'Islam, le blanc la paix et le rouge le courage. L'emblème central est une forme stylisée du mot 'Allah'."
  },
  {
    content: "Ce drapeau a trois bandes horizontales : rouge, noire et blanche, avec trois étoiles vertes. À quel pays appartient-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Irak",
    incorrect_answers: ["Syrie", "Égypte", "Yémen"],
    contexte: "Les couleurs sont celles du panarabisme. Les étoiles ont eu plusieurs significations ; aujourd'hui, elles représentent l'unité, la liberté et le socialisme."
  },
  {
    content: "Un drapeau avec cinq bandes horizontales (rouge, blanc, bleu, blanc, rouge) est celui de quel royaume d'Asie du Sud-Est ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Thaïlande",
    incorrect_answers: ["Cambodge", "Laos", "Malaisie"],
    contexte: "Le rouge symbolise la nation et le sang, le blanc la religion (bouddhisme) et le bleu la monarchie, les trois piliers du pays."
  },
  {
    content: "Quel pays a un drapeau rouge avec une bande verticale verte contenant une inscription blanche ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Maldives",
    incorrect_answers: ["Bangladesh", "Pakistan", "Arabie Saoudite"],
    contexte: "Le rouge symbolise le sang des héros, le rectangle vert la vie et la prospérité, et le croissant blanc la foi islamique."
  },
  {
    content: "Le drapeau de quel pays est rouge avec un croissant de lune et cinq étoiles blanches ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Singapour",
    incorrect_answers: ["Turquie", "Malaisie", "Indonésie"],
    contexte: "Le rouge symbolise la fraternité universelle, le blanc la pureté. Le croissant représente une jeune nation, et les cinq étoiles, ses idéaux."
  },
  {
    content: "Ce drapeau a des bandes horizontales bleues et blanches, un triangle rouge sur le côté et un soleil doré avec trois étoiles. Quel pays est-ce ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Philippines",
    incorrect_answers: ["Cuba", "Porto Rico", "Malaisie"],
    contexte: "C'est le seul drapeau au monde qui s'inverse en temps de guerre (bande rouge en haut). Le soleil représente la liberté, les étoiles les trois grandes régions."
  },
  {
    content: "À quel pays appartient ce drapeau composé de deux bandes horizontales, rouge en haut et blanche en bas ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Indonésie",
    incorrect_answers: ["Pologne", "Monaco", "Singapour"],
    contexte: "Appelé 'Sang Saka Merah-Putih' (Le Sacré Rouge et Blanc), il est basé sur les couleurs de l'empire Majapahit du XIIIe siècle."
  },
  {
    content: "Quel pays a un drapeau bleu avec une représentation du temple d'Angkor Vat en blanc au centre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Cambodge",
    incorrect_answers: ["Thaïlande", "Laos", "Myanmar"],
    contexte: "C'est le seul drapeau national au monde à représenter un bâtiment. Angkor Vat est le symbole de l'héritage culturel et religieux khmer."
  },
  {
    content: "Un drapeau avec 14 bandes rouges et blanches alternées et un canton bleu avec un croissant et une étoile à 14 branches. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Malaisie",
    incorrect_answers: ["États-Unis", "Liberia", "Singapour"],
    contexte: "Les 14 bandes et les 14 branches de l'étoile représentent les 13 États membres et le territoire fédéral, unis dans la fédération."
  },
  {
    content: "Le drapeau de quel pays est rouge et blanc, avec un cèdre vert au centre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Liban",
    incorrect_answers: ["Canada", "Chypre", "Népal"],
    contexte: "Le cèdre du Liban est un symbole de sainteté, d'éternité et de paix. Le rouge représente le sang versé, et le blanc la neige des montagnes."
  },
  {
    content: "Un drapeau vert avec un grand disque rouge au centre est celui de quel pays très peuplé ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Bangladesh",
    incorrect_answers: ["Japon", "Pakistan", "Inde"],
    contexte: "Le vert symbolise la luxuriance du pays. Le disque rouge représente le soleil se levant sur le Bengale et le sang des martyrs de l'indépendance."
  },
  {
    content: "Quel pays a un drapeau bleu clair avec un soleil et un aigle des steppes dorés ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Kazakhstan",
    incorrect_answers: ["Mongolie", "Ouzbékistan", "Kirghizistan"],
    contexte: "Le bleu ciel symbolise les peuples turcs. Le soleil représente la vie et l'énergie, et l'aigle la liberté et la puissance de l'État."
  },
  {
    content: "Ce drapeau a trois bandes horizontales : bleue, blanche et verte, avec un croissant rouge et des étoiles. De quel pays d'Asie centrale s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Ouzbékistan",
    incorrect_answers: ["Tadjikistan", "Turkménistan", "Kazakhstan"],
    contexte: "Le bleu représente le ciel, le blanc la paix, et le vert la nature. Les 12 étoiles symbolisent les 12 mois de l'année et les 12 provinces."
  },
  {
    content: "Un drapeau rouge avec un soleil stylisé jaune au centre (ressemblant à un yurt) est celui de quel pays montagneux ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Kirghizistan",
    incorrect_answers: ["Kazakhstan", "Macédoine du Nord", "Mongolie"],
    contexte: "Le rouge symbolise le courage. Le soleil représente la paix et la richesse. Le 'tunduk' au centre est l'ouverture au sommet d'une yourte kirghize."
  },
  {
    content: "Quel pays a un drapeau jaune avec deux bandes diagonales noire et blanche et un blason au centre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Brunei",
    incorrect_answers: ["Malaisie", "Singapour", "Timor oriental"],
    contexte: "Le jaune est la couleur royale. Les bandes représentent les deux principaux ministres. Le blason porte des symboles islamiques de protection et de prospérité."
  },
  {
    content: "Ce drapeau a trois bandes verticales : rouge, bleue et rouge, avec un 'soyonbo' doré. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Mongolie",
    incorrect_answers: ["Kazakhstan", "Népal", "Bhoutan"],
    contexte: "Le bleu symbolise le ciel éternel, et les bandes rouges la prospérité et la liberté. Le 'soyonbo' est un symbole national complexe."
  },
  {
    content: "Le drapeau tricolore horizontal rouge, blanc et vert est celui de quel pays d'Asie Centrale ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Tadjikistan",
    incorrect_answers: ["Iran", "Ouzbékistan", "Hongrie"],
    contexte: "Le rouge symbolise l'unité de la nation, le blanc le coton et la pureté, et le vert la nature. La couronne et les étoiles représentent la souveraineté."
  },
  {
    content: "Un drapeau à fond rouge, un triangle noir sur le côté, et des bandes jaunes et blanches qui convergent. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Timor oriental",
    incorrect_answers: ["Papouasie-Nouvelle-Guinée", "Brunei", "Philippines"],
    contexte: "Le triangle noir symbolise l'obscurantisme à vaincre, le rouge la lutte pour la libération. L'étoile blanche est la lumière qui guide vers la paix."
  },
  {
    content: "Quel pays a un drapeau avec deux bandes horizontales, bleue en haut et rouge en bas, séparées par une fine bande verte ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Gambie",
    incorrect_answers: ["Ouzbékistan", "Botswana", "Estonie"],
    contexte: "Le bleu représente le fleuve Gambie, le rouge le soleil et la savane, et le vert les forêts et l'agriculture."
  },
  {
    content: "Le drapeau de quel pays est jaune safran avec un lion tenant une épée, et des bandes verte et orange sur le côté ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Sri Lanka",
    incorrect_answers: ["Inde", "Bhoutan", "Myanmar"],
    contexte: "Le lion symbolise le courage de la nation cinghalaise. Les bandes verte et orange représentent les minorités musulmane et tamoule."
  },
  {
    content: "Quel est le seul pays au monde dont le drapeau national n'est pas rectangulaire ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Népal",
    incorrect_answers: ["Suisse", "Vatican", "Bhoutan"],
    contexte: "Le drapeau du Népal est composé de deux pennons superposés. Il représente les montagnes de l'Himalaya ainsi que les deux grandes religions du pays."
  },
  {
    content: "Ce drapeau est divisé en diagonale en jaune et orange, avec un grand dragon blanc au centre. De quel royaume s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Bhoutan",
    incorrect_answers: ["Népal", "Sri Lanka", "Mongolie"],
    contexte: "Le jaune représente le pouvoir temporel du roi, l'orange la tradition bouddhiste. Le 'Druk' (Dragon du Tonnerre) symbolise le pays."
  },
  {
    content: "Un drapeau vert avec une bande rouge verticale contenant cinq motifs de tapis traditionnels ('guls'). À quel pays appartient-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Turkménistan",
    incorrect_answers: ["Ouzbékistan", "Tadjikistan", "Kazakhstan"],
    contexte: "C'est le drapeau national le plus complexe du monde. Les cinq motifs de tapis représentent les cinq principales tribus du pays."
  },
  {
    content: "Le drapeau tricolore noir, blanc et vert, avec un triangle rouge sur le côté, appartient à quel État ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Jordanie",
    incorrect_answers: ["Palestine", "Syrie", "Émirats arabes unis"],
    contexte: "Les couleurs sont celles du panarabisme. L'étoile à sept branches représente les sept versets de la première sourate du Coran et l'unité des peuples arabes."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal jaune, bleu et rouge ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Arménie",
    incorrect_answers: ["Colombie", "Roumanie", "Moldavie"],
    contexte: "Le rouge symbolise le sang versé, le bleu le ciel et l'espoir, et le jaune la terre fertile et le courage du peuple."
  },
  {
    content: "Ce drapeau a trois bandes horizontales de taille égale, rouge, bleue et rouge, avec un blason au centre. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Laos",
    incorrect_answers: ["Cambodge", "Corée du Nord", "Autriche"],
    contexte: "Le rouge représente le sang de la lutte pour l'indépendance, et le bleu le Mékong. Le disque blanc symbolise la lune sur le Mékong et l'unité."
  },
  {
    content: "Un drapeau avec une croix de Saint-Georges rouge sur fond blanc et quatre autres croix plus petites dans chaque quadrant. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Géorgie",
    incorrect_answers: ["Angleterre", "Malte", "Danemark"],
    contexte: "Appelé le 'Drapeau des Cinq Croix', c'est un drapeau chrétien datant du Royaume de Géorgie médiéval, ré-adopté en 2004."
  },
  {
    content: "Le drapeau tricolore horizontal bleu, rouge, vert est celui de quel pays du Caucase ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Azerbaïdjan",
    incorrect_answers: ["Arménie", "Géorgie", "Ouzbékistan"],
    contexte: "Le bleu représente l'héritage turc, le rouge le progrès, et le vert l'Islam. Le croissant et l'étoile à huit branches sont au centre."
  },
  {
    content: "Quel pays a un drapeau rouge avec un oiseau de paradis stylisé et la constellation de la Croix du Sud ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["Australie", "Nouvelle-Zélande", "Timor oriental"],
    contexte: "Le drapeau est divisé en diagonale. L'oiseau de paradis est un symbole national, et la Croix du Sud représente sa position dans l'hémisphère sud."
  },
  {
    content: "Ce drapeau est jaune en haut et tricolore (blanc, vert, rouge) en bas. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Myanmar",
    incorrect_answers: ["Lituanie", "Éthiopie", "Sri Lanka"],
    contexte: "Le jaune représente la solidarité, le vert la paix et la tranquillité, et le rouge le courage. La grande étoile blanche symbolise l'union du pays."
  },
  {
    content: "Un drapeau avec un fond rouge et deux épées croisées surmontées d'un poignard ('khanjar') est celui de quel sultanat ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Oman",
    incorrect_answers: ["Yémen", "Qatar", "Émirats arabes unis"],
    contexte: "Le drapeau porte l'emblème national, le 'khanjar', dans le canton. Le blanc représente la paix et le vert la fertilité des terres."
  },
  {
    content: "Quel pays a un drapeau de couleur marron avec un bord dentelé blanc ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Qatar",
    incorrect_answers: ["Bahreïn", "Émirats arabes unis", "Oman"],
    contexte: "Le marron (ou pourpre) représente la couleur des pigments produits historiquement dans la région. Il a le ratio hauteur/largeur le plus grand au monde."
  },
  {
    content: "Le drapeau de Bahreïn est rouge et blanc. Qu'est-ce qui le distingue de celui du Qatar ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Cinq triangles formant une ligne dentelée",
    incorrect_answers: ["Une seule pointe dentelée", "La couleur est rouge vif", "Il n'y a pas de différence"],
    contexte: "Les cinq pointes ou triangles blancs symbolisent les cinq piliers de l'Islam. La couleur est rouge, contrairement au marron du Qatar."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal noir, blanc, vert, avec une bande verticale rouge sur le côté du guindant ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Asie",
    correct_answer: "Émirats arabes unis",
    incorrect_answers: ["Koweït", "Jordanie", "Syrie"],
    contexte: "Ce drapeau utilise les couleurs panarabes, représentant l'unité des nations arabes. Chaque couleur symbolise une dynastie ou une époque historique."
  },

  # Amérique - Drapeaux

  {
    content: "Ce drapeau a 13 bandes rouges et blanches et un canton bleu avec 50 étoiles. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "États-Unis",
    incorrect_answers: ["Royaume-Uni", "Liberia", "Malaisie"],
    contexte: "Les 13 bandes représentent les treize colonies d'origine. Les 50 étoiles symbolisent les 50 États actuels de l'Union."
  },
  {
    content: "Quel pays a un drapeau rouge avec une feuille d'érable blanche à onze pointes au centre ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Canada",
    incorrect_answers: ["Liban", "Suisse", "Pérou"],
    contexte: "La feuille d'érable est un symbole national du Canada depuis le 18e siècle, représentant la nature et l'environnement du pays."
  },
  {
    content: "Ce drapeau tricolore vertical vert, blanc et rouge avec un aigle au centre est celui de quel pays ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Mexique",
    incorrect_answers: ["Italie", "Hongrie", "Iran"],
    contexte: "L'aigle dévorant un serpent sur un cactus est une référence à la légende de la fondation de Tenochtitlan, la capitale aztèque."
  },
  {
    content: "Un drapeau vert et jaune avec un globe bleu et la devise 'Ordem e Progresso'. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Brésil",
    incorrect_answers: ["Portugal", "Guyana", "Colombie"],
    contexte: "Le vert représente les forêts, le jaune l'or et les richesses. Le ciel étoilé représente la vue depuis Rio de Janeiro lors de la proclamation de la république."
  },
  {
    content: "Quel pays a un drapeau bleu clair et blanc avec un soleil doré au centre ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Argentine",
    incorrect_answers: ["Uruguay", "Grèce", "Nicaragua"],
    contexte: "Les couleurs symbolisent le ciel et les nuages. Le 'Sol de Mayo' (Soleil de Mai) est un emblème de l'indépendance du pays."
  },
  {
    content: "Ce drapeau tricolore horizontal jaune, bleu et rouge est celui de quel pays sud-américain ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Colombie",
    incorrect_answers: ["Venezuela", "Équateur", "Roumanie"],
    contexte: "Le jaune représente la richesse, le bleu les deux océans qui bordent le pays, et le rouge le sang versé pour l'indépendance."
  },
  {
    content: "À quel pays des Caraïbes appartient un drapeau avec un triangle rouge, deux triangles bleus et des bandes blanches ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Cuba",
    incorrect_answers: ["Porto Rico", "République Dominicaine", "Philippines"],
    contexte: "Le triangle rouge symbolise le sang des patriotes. L'étoile blanche, 'La Estrella Solitaria', représente l'indépendance et la liberté."
  },
  {
    content: "Un drapeau avec deux bandes rouges et une bande blanche, avec un blason au centre. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Pérou",
    incorrect_answers: ["Canada", "Autriche", "Pologne"],
    contexte: "Selon la légende, les couleurs ont été inspirées par des flamants roses vus par le libérateur José de San Martín."
  },
  {
    content: "Quel pays a un drapeau bleu avec une bande diagonale rouge bordée de blanc ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Trinité-et-Tobago",
    incorrect_answers: ["République Dominicaine", "Jamaïque", "Namibie"],
    contexte: "Le rouge symbolise la vitalité du peuple et du soleil, le blanc la mer, et le noir la force et l'unité du peuple."
  },
  {
    content: "Ce drapeau a une croix blanche qui divise le champ en quatre rectangles, deux rouges et deux bleus. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "République Dominicaine",
    incorrect_answers: ["Cuba", "Haïti", "Panama"],
    contexte: "La croix blanche symbolise la foi et le sacrifice. Le bleu représente la liberté et le rouge le sang des héros."
  },
  {
    content: "Quel pays d'Amérique du Sud a un drapeau blanc avec une étoile rouge au centre ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Chili",
    incorrect_answers: ["Paraguay", "États-Unis", "Panama"],
    contexte: "Le bleu symbolise le ciel, le blanc la neige des Andes, et le rouge le sang des patriotes. L'étoile guide vers le progrès."
  },
  {
    content: "Un sautoir (croix en X) doré sur un fond vert est le drapeau de quelle île des Caraïbes ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Jamaïque",
    incorrect_answers: ["Brésil", "Afrique du Sud", "Écosse"],
    contexte: "Le noir symbolise la force et la créativité du peuple, le vert l'espoir et les richesses agricoles, et l'or le soleil."
  },
  {
    content: "Ce drapeau est similaire à celui de l'Argentine mais le soleil a un visage. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Uruguay",
    incorrect_answers: ["Argentine", "Paraguay", "Pérou"],
    contexte: "Les neuf bandes représentent les neuf départements originaux. Le 'Sol de Mayo' avec un visage est également un symbole d'indépendance."
  },
  {
    content: "Le drapeau du Panama est divisé en quatre quadrants. Quelles sont ses couleurs ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Rouge, blanc et bleu",
    incorrect_answers: ["Vert, jaune et bleu", "Noir, rouge et blanc", "Orange, blanc et vert"],
    contexte: "Le rouge et le bleu représentent les partis conservateur et libéral. Le blanc symbolise la paix entre eux. Les étoiles représentent la pureté et la force."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal jaune, bleu et rouge avec huit étoiles en arc ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Venezuela",
    incorrect_answers: ["Colombie", "Équateur", "Arménie"],
    contexte: "Les couleurs sont celles de la Grande Colombie. Les étoiles représentent les provinces qui ont signé l'acte d'indépendance contre l'Espagne."
  },
  {
    content: "Quel est le seul drapeau au monde à avoir deux faces différentes ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Paraguay",
    incorrect_answers: ["Uruguay", "Brésil", "Moldavie"],
    contexte: "L'avers porte les armoiries nationales, et le revers le sceau du Trésor, avec la devise 'Paz y Justicia' (Paix et Justice)."
  },
  {
    content: "Un drapeau bleu et blanc à cinq bandes horizontales, avec cinq volcans et un bonnet phrygien. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Salvador",
    incorrect_answers: ["Nicaragua", "Honduras", "Costa Rica"],
    contexte: "Les couleurs s'inspirent du drapeau des Provinces-Unies d'Amérique centrale. Les volcans représentent les cinq États membres de la fédération."
  },
  {
    content: "Ce drapeau tricolore jaune, bleu et rouge porte le blason national avec un condor. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Équateur",
    incorrect_answers: ["Colombie", "Venezuela", "Bolivie"],
    contexte: "Similaire à celui de la Colombie, il s'en distingue par l'ajout du blason, qui représente la richesse naturelle et la beauté du pays."
  },
  {
    content: "Un drapeau avec trois bandes horizontales : deux bleues et une blanche au milieu, avec cinq étoiles bleues. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Honduras",
    incorrect_answers: ["Salvador", "Nicaragua", "Argentine"],
    contexte: "Les cinq étoiles symbolisent les cinq nations des anciennes Provinces-Unies d'Amérique centrale et l'espoir qu'elles puissent à nouveau former une union."
  },
  {
    content: "Le drapeau du Costa Rica a cinq bandes horizontales. Quelles sont leurs couleurs de haut en bas ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Bleu, blanc, rouge, blanc, bleu",
    incorrect_answers: ["Rouge, blanc, bleu, blanc, rouge", "Bleu, blanc, bleu", "Blanc, rouge, blanc"],
    contexte: "Le bleu représente le ciel, le blanc la paix, et le rouge (plus large) la chaleur du peuple et le sang versé pour la liberté."
  },
  {
    content: "Quel pays d'Amérique du Sud a un drapeau tricolore horizontal rouge, jaune et vert ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Bolivie",
    incorrect_answers: ["Lituanie", "Ghana", "Éthiopie"],
    contexte: "Le rouge symbolise le sang des héros nationaux, le jaune la richesse minérale, et le vert l'immense richesse naturelle du pays."
  },
  {
    content: "Un trident noir sur un fond bleu et or est le symbole du drapeau de quel pays insulaire ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Barbade",
    incorrect_answers: ["Sainte-Lucie", "Bahamas", "Ukraine"],
    contexte: "Le trident brisé symbolise la rupture avec le passé colonial. Chaque pointe représente un principe de la démocratie. Le bleu est la mer, l'or le sable."
  },
  {
    content: "Ce drapeau bleu et blanc est très similaire à celui du Honduras et du Salvador. Quel pays est-ce ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Nicaragua",
    incorrect_answers: ["Guatemala", "Costa Rica", "Grèce"],
    contexte: "Comme ses voisins, il s'inspire de l'ancien drapeau centre-américain. Le blason central est presque identique à celui du Salvador."
  },
  {
    content: "Le drapeau de quel pays est bleu ciel et blanc, avec un quetzal (oiseau national) au centre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Guatemala",
    incorrect_answers: ["Mexique", "Costa Rica", "Panama"],
    contexte: "Les bandes verticales symbolisent les deux océans. Le quetzal, oiseau qui ne peut vivre en captivité, est un symbole de liberté."
  },
  {
    content: "Un drapeau bicolore bleu et rouge, séparé en diagonale, avec le blason national. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Haïti",
    incorrect_answers: ["République Dominicaine", "Liechtenstein", "France"],
    contexte: "Les couleurs sont issues du drapeau français, dont la partie blanche a été enlevée pour symboliser l'expulsion des colons."
  },
  {
    content: "Quel pays a un drapeau avec un triangle noir, deux triangles jaunes et deux triangles verts, séparés par un sautoir noir et blanc ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Guyana",
    incorrect_answers: ["Brésil", "Suriname", "Afrique du Sud"],
    contexte: "Appelé 'La Pointe de Flèche Dorée', il symbolise la nature (vert), les richesses minérales (jaune), et la persévérance (noir)."
  },
  {
    content: "Ce drapeau est bleu clair avec un triangle jaune et deux triangles noirs. De quel pays insulaire s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Sainte-Lucie",
    incorrect_answers: ["Bahamas", "Barbade", "Saint-Vincent-et-les-Grenadines"],
    contexte: "Le dessin représente les Pitons, deux montagnes volcaniques emblématiques de l'île, s'élevant de la mer (bleu)."
  },
  {
    content: "Un drapeau avec trois bandes horizontales : deux bleues et une jaune. De quel archipel s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Bahamas",
    incorrect_answers: ["Barbade", "Sainte-Lucie", "Colombie"],
    contexte: "Le triangle noir représente la force du peuple. La couleur aigue-marine (bleu) symbolise l'océan, et l'or le soleil et le sable."
  },
  {
    content: "Ce drapeau a une bande rouge diagonale sur un fond vert, avec une étoile jaune. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Saint-Kitts-et-Nevis",
    incorrect_answers: ["Dominique", "Grenade", "Suriname"],
    contexte: "Le vert représente la fertilité, le rouge la lutte pour l'indépendance, le noir l'héritage africain, et les deux étoiles l'espoir et la liberté."
  },
  {
    content: "Le drapeau du Belize est bleu avec deux fines bandes rouges. Qu'est-ce qui le rend unique parmi les Drapeaux nationaux ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Il représente des personnages humains",
    incorrect_answers: ["Il a 12 couleurs", "Il est parfaitement carré", "Il n'a pas de blason"],
    contexte: "Le blason central, très complexe, est le seul drapeau national à représenter des humains (deux bûcherons), soulignant l'importance de l'industrie du bois."
  },
  {
    content: "Un drapeau vert, blanc et vert avec un perroquet Sisserou au centre. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Dominique",
    incorrect_answers: ["Sainte-Lucie", "Saint-Vincent-et-les-Grenadines", "Grenade"],
    contexte: "Le fond vert représente les forêts. La croix tricolore symbolise la Trinité et la foi chrétienne. Le perroquet est l'oiseau national, endémique de l'île."
  },
  {
    content: "Quel pays a un drapeau avec cinq bandes de couleurs verte, blanche, rouge, blanche et verte, et une grande étoile jaune ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Suriname",
    incorrect_answers: ["Guyana", "Togo", "Bénin"],
    contexte: "Le vert symbolise la fertilité, le blanc la justice et la liberté, et le rouge le progrès. L'étoile jaune représente l'unité des groupes ethniques."
  },
  {
    content: "Ce drapeau a un cercle rouge contenant sept étoiles sur un fond jaune et vert. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Grenade",
    incorrect_answers: ["Dominique", "Saint-Kitts-et-Nevis", "Guyana"],
    contexte: "Le jaune représente la sagesse et le soleil, le vert l'agriculture. Les sept étoiles symbolisent les sept paroisses du pays. Le symbole à gauche est la noix de muscade."
  },
  {
    content: "Un drapeau tricolore bleu, jaune et vert avec trois losanges verts au centre. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Saint-Vincent-et-les-Grenadines",
    incorrect_answers: ["Sainte-Lucie", "Dominique", "Brésil"],
    contexte: "Les losanges forment un 'V' pour Vincent et sont appelés les 'Gemmes des Antilles'. Le bleu est le ciel, le jaune le sable, et le vert la végétation."
  },
  {
    content: "Quel pays a un drapeau avec un sautoir rouge sur fond blanc, et une bande bleue et blanche diagonale ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Amérique",
    correct_answer: "Antigua-et-Barbuda",
    incorrect_answers: ["Grenade", "Saint-Kitts-et-Nevis", "Jamaïque"],
    contexte: "Le soleil levant symbolise l'aube d'une nouvelle ère. Le noir représente les ancêtres africains, le bleu l'espoir, et le rouge l'énergie."
  },

  # Océanie - DRAPEAUX (NON VERIFIEES)

  {
    content: "Quel pays a un drapeau bleu avec l'Union Jack et une grande étoile à sept branches sous le canton ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Australie",
    incorrect_answers: ["Nouvelle-Zélande", "Fidji", "Tuvalu"],
    contexte: "La grande étoile est l'Étoile du Commonwealth. Les autres étoiles forment la Croix du Sud, une constellation visible dans l'hémisphère sud."
  },
  {
    content: "Ce drapeau bleu porte l'Union Jack et quatre étoiles rouges à cinq branches. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Zélande",
    incorrect_answers: ["Australie", "Îles Cook", "Samoa"],
    contexte: "Les quatre étoiles rouges représentent la constellation de la Croix du Sud. Il est très similaire au drapeau australien qui a des étoiles blanches."
  },
  {
    content: "Quel pays est représenté par un drapeau divisé en diagonale, avec un oiseau de paradis et la Croix du Sud ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["Îles Salomon", "Vanuatu", "Timor oriental"],
    contexte: "Le rouge et le noir sont des couleurs traditionnelles. L'oiseau de paradis est un symbole national, et la Croix du Sud indique sa position géographique."
  },
  {
    content: "Ce drapeau bleu ciel est orné d'un grand disque jaune légèrement décentré. De quel pays insulaire s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Palaos",
    incorrect_answers: ["Japon", "Bangladesh", "Micronésie"],
    contexte: "Le bleu représente l'océan Pacifique. Le disque jaune ne symbolise pas le soleil mais la pleine lune, considérée comme un moment propice."
  },
  {
    content: "Un drapeau rouge avec un canton blanc contenant une croix rouge est l'emblème de quel royaume du Pacifique ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Tonga",
    incorrect_answers: ["Suisse", "Danemark", "Géorgie"],
    contexte: "Le rouge symbolise le sang du Christ, et la croix la chrétienté. Sa constitution stipule que ce drapeau ne devra jamais être changé."
  },
  {
    content: "Quel pays a un drapeau bleu clair avec quatre étoiles blanches à cinq branches disposées en losange ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Micronésie",
    incorrect_answers: ["Somalie", "Palaos", "Nauru"],
    contexte: "Le fond bleu clair représente l'océan Pacifique. Les quatre étoiles symbolisent les quatre États de la fédération : Chuuk, Pohnpei, Kosrae et Yap."
  },
  {
    content: "Ce drapeau est divisé en diagonale par une bande jaune, avec un champ bleu en haut et vert en bas. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Îles Salomon",
    incorrect_answers: ["Vanuatu", "Papouasie-Nouvelle-Guinée", "Tanzanie"],
    contexte: "Le bleu représente l'eau, le vert la terre, et la bande jaune le soleil. Les cinq étoiles symbolisaient les cinq districts initiaux."
  },
  {
    content: "Quel drapeau montre un oiseau frégate doré volant au-dessus d'un soleil levant sur un fond de vagues bleues et blanches ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Kiribati",
    incorrect_answers: ["Nauru", "Palaos", "Seychelles"],
    contexte: "Ce dessin est tiré des armoiries accordées à la colonie en 1937. La frégate symbolise le pouvoir et la liberté, et le soleil levant l'océan Pacifique."
  },
  {
    content: "Un drapeau rouge avec un canton bleu contenant la Croix du Sud. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Samoa",
    incorrect_answers: ["Taïwan", "Chili", "Australie"],
    contexte: "Le rouge symbolise le courage, le blanc la pureté, et le bleu la liberté. La Croix du Sud représente la position du pays dans le Pacifique."
  },
  {
    content: "Ce drapeau bleu ciel porte l'Union Jack dans le canton et neuf étoiles jaunes. Quel pays représente-t-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Tuvalu",
    incorrect_answers: ["Australie", "Nouvelle-Zélande", "Fidji"],
    contexte: "Le fond bleu clair symbolise l'océan. Les neuf étoiles jaunes représentent la disposition géographique des neuf îles de l'archipel."
  },
  {
    content: "Un champ bleu, une fine bande jaune et une étoile blanche à 12 branches. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Nauru",
    incorrect_answers: ["Somalie", "Kiribati", "Micronésie"],
    contexte: "La bande jaune représente l'équateur, situé juste au-dessus de l'étoile. Les 12 branches de l'étoile symbolisent les 12 tribus originelles de l'île."
  },
  {
    content: "Quel pays a un drapeau bleu clair avec un blason représentant une colombe et des symboles de paix ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Fidji",
    incorrect_answers: ["Nouvelle-Zélande", "Australie", "Tonga"],
    contexte: "Le blason contient une colombe de la paix, de la canne à sucre, un cocotier et des bananes, reflétant l'agriculture de l'île."
  },
  {
    content: "Ce drapeau est divisé horizontalement en rouge et vert par un 'Y' noir bordé de jaune, avec un emblème au centre. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Vanuatu",
    incorrect_answers: ["Afrique du Sud", "Guyana", "Îles Salomon"],
    contexte: "L'emblème est une défense de sanglier, symbole de prospérité, entourant deux feuilles de fougère. Le 'Y' représente la disposition des îles."
  },
  {
    content: "Un champ bleu avec des bandes diagonales orange et blanche et une grande étoile blanche. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Îles Marshall",
    incorrect_answers: ["Micronésie", "Nauru", "Philippines"],
    contexte: "Les bandes représentent l'équateur. L'orange symbolise le courage et la richesse, et le blanc la paix. Les 24 pointes de l'étoile représentent les 24 municipalités."
  },
  {
    content: "Le drapeau de quelle dépendance néo-zélandaise est un 'Blue Ensign' avec 15 étoiles blanches disposées en cercle ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Îles Cook",
    incorrect_answers: ["Niue", "Tokelau", "Samoa"],
    contexte: "Les 15 étoiles représentent les 15 îles qui composent l'archipel. Le cercle symbolise l'unité et la force."
  },
  {
    content: "Quel est le seul pays ou territoire au monde à avoir un drapeau national de type 'Yellow Ensign' (jaune avec l'Union Jack) ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Niue",
    incorrect_answers: ["Australie", "Vatican", "Brunei"],
    contexte: "Le jaune symbolise le soleil et la chaleur des relations avec la Nouvelle-Zélande. Les étoiles sur l'Union Jack sont une modification unique."
  },
  {
    content: "Le drapeau des Samoa américaines représente un aigle tenant deux symboles traditionnels. Quels sont-ils ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Un chasse-mouches et un bâton de guerre",
    incorrect_answers: ["Une lance et un bouclier", "Une rame et un harpon", "Une fleur et une conque"],
    contexte: "L'aigle est un symbole américain. Le 'uatogi' (bâton de guerre) et le 'fue' (chasse-mouches) sont des symboles de pouvoir des chefs samoans."
  },
  {
    content: "Le drapeau de la Polynésie française est composé de trois bandes horizontales rouge, blanche, rouge, avec un emblème au centre. Que représente cet emblème ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Une pirogue polynésienne",
    incorrect_answers: ["Une fleur d'hibiscus", "Une montagne volcanique", "Un tiki sculpté"],
    contexte: "L'emblème représente une pirogue naviguant sous le soleil avec des vagues en dessous, symbolisant la culture et l'histoire maritime de la région."
  },
  {
    content: "Quel territoire français du Pacifique utilise officiellement à la fois le drapeau tricolore français et un drapeau indépendantiste local ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Nouvelle-Calédonie",
    incorrect_answers: ["Polynésie française", "Wallis-et-Futuna", "Clipperton"],
    contexte: "Depuis 2010, le drapeau Kanak (dit 'Kanaky') flotte aux côtés du drapeau français sur les édifices publics, symbolisant la double légitimité du pays."
  },
  {
    content: "Le drapeau de quel territoire américain présente une forme d'amande au centre, représentant une pierre de fronde ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Guam",
    incorrect_answers: ["Samoa américaines", "Porto Rico", "Îles Vierges américaines"],
    contexte: "Le sceau central représente une plage de la baie d'Agaña, avec un cocotier et un 'proa' (bateau local), encapsulé dans une forme de pierre de fronde Chamorro."
  },
  {
    content: "Le drapeau de Tokelau, adopté en 2009, représente une pirogue stylisée. Que symbolisent les quatre étoiles à ses côtés ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "La Croix du Sud",
    incorrect_answers: ["Les quatre îles de l'archipel", "Les quatre villages principaux", "Les quatre piliers de la foi"],
    contexte: "La pirogue symbolise le voyage et la direction. Les étoiles de la Croix du Sud aident à la navigation et confirment la position géographique du territoire."
  },
  {
    content: "Le drapeau des Îles Pitcairn, un 'Blue Ensign', porte un blason. Que contient ce blason ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Une ancre, une bible et une brouette",
    incorrect_answers: ["Un navire, un canon et une carte", "Un poisson, un cocotier et une croix", "Un mutin, un sabre et une île"],
    contexte: "L'ancre et la bible proviennent du HMS Bounty. La brouette et la plante (miro) symbolisent la vie et la fertilité sur l'île."
  },
  {
    content: "Le drapeau de Wallis-et-Futuna est rouge et comporte un élément unique dans son canton. Quel est-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Le drapeau français",
    incorrect_answers: ["Le drapeau du Vatican", "L'Union Jack", "Une croix blanche"],
    contexte: "Le drapeau français dans le canton symbolise l'appartenance du territoire à la France. La croix rouge pattée est un symbole local."
  },
  {
    content: "Le drapeau des Îles Mariannes du Nord est bleu, avec une étoile blanche surmontant un symbole culturel. Quel est ce symbole ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Une pierre latte",
    incorrect_answers: ["Un coquillage", "Une statue moai", "Un masque tribal"],
    contexte: "La pierre latte est un pilier de pierre ancien, fondation des maisons traditionnelles Chamorro, symbolisant la culture et l'héritage du peuple."
  },
  {
    content: "Quel est le principal point de différenciation visuelle entre les Drapeaux de l'Australie et de la Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "La couleur et le nombre d'étoiles de la Croix du Sud",
    incorrect_answers: ["La couleur de fond du drapeau", "La position de l'Union Jack", "La présence d'une grande étoile"],
    contexte: "La Nouvelle-Zélande a quatre étoiles rouges à 5 branches, tandis que l'Australie a quatre étoiles blanches à 7 branches et une plus petite à 5 branches."
  },
  {
    content: "Le drapeau de l'île Norfolk, un territoire australien, représente un arbre emblématique de l'île. Quel est cet arbre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Le Pin de Norfolk",
    incorrect_answers: ["L'Eucalyptus", "Le Cocotier", "Le Banyan"],
    contexte: "Le Pin de Norfolk (Araucaria heterophylla) est une espèce endémique et un symbole majeur de l'île, figurant au centre du drapeau vert et blanc."
  },
  {
    content: "Le drapeau de l'Île de Pâques (Rapa Nui) est blanc avec un emblème rouge au centre. Que représente cet emblème ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Un Reimiro, un pectoral en bois",
    incorrect_answers: ["Une statue Moai", "Un volcan en éruption", "L'homme-oiseau Tangata manu"],
    contexte: "Le Reimiro est un ornement pectoral traditionnel en forme de croissant, un symbole de royauté et de noblesse pour le peuple Rapa Nui."
  },
  {
    content: "Le drapeau de l'État de Chuuk, en Micronésie, représente un cocotier sur une île. Combien d'étoiles l'entourent ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "38",
    incorrect_answers: ["4", "12", "50"],
    contexte: "Les 38 étoiles représentent les 38 municipalités de l'État, soulignant l'unité dans la diversité de ce groupe d'îles et d'atolls."
  },
  {
    content: "Le drapeau de l'État de Pohnpei, en Micronésie, est bleu avec une coupe de sakau à moitié pleine et des étoiles. Que symbolise la coupe à moitié pleine ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Le partage et la générosité",
    incorrect_answers: ["Une cérémonie inachevée", "La modération", "Une récolte moyenne"],
    contexte: "Le sakau (kava) est une boisson cérémonielle. La coupe à moitié pleine est offerte, symbolisant l'hospitalité et la générosité de la culture pohnpéienne."
  },
  {
    content: "L'étoile sur le drapeau des Îles Marshall a 24 pointes. Que représentent les quatre grandes pointes ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Les quatre plus grandes villes/atolls",
    incorrect_answers: ["Les quatre points cardinaux", "Les quatre évangiles", "Les quatre principales familles royales"],
    contexte: "Les quatre grandes pointes symbolisent les principaux centres culturels et politiques : Majuro, Ebeye, Jaluit et Wotje. Les 20 autres représentent les autres municipalités."
  },
  {
    content: "Le drapeau de l'État de Yap, en Micronésie, représente une pirogue à balancier et un symbole culturel unique. Lequel ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Une pierre rai (monnaie de pierre)",
    incorrect_answers: ["Un masque de danse", "Un hameçon en nacre", "Un tatouage facial"],
    contexte: "La pierre rai, un grand disque de pierre, est une forme de monnaie traditionnelle unique à Yap, symbolisant la richesse et l'héritage culturel."
  },
  {
    content: "Le drapeau du Territoire australien de l'Île Christmas est divisé en diagonale. Que représente l'oiseau doré au centre ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Un Phaéton à bec jaune (Golden Bosun)",
    incorrect_answers: ["Une Frégate", "Un Fou à pieds rouges", "Un Gorfou sauteur"],
    contexte: "Le Golden Bosun est un oiseau marin emblématique et endémique de l'île. La Croix du Sud est également présente sur le champ bleu."
  },
  {
    content: "Le drapeau des Îles Cocos (Keeling) est vert avec un cocotier dans un disque doré, un croissant de lune et la Croix du Sud. Que symbolise le croissant ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "La population malaise et musulmane",
    incorrect_answers: ["La lune guidant les marins", "La forme de l'atoll principal", "La récolte de coprah"],
    contexte: "Le croissant de lune est un symbole de l'Islam, religion de la majorité de la population malaise des îles Cocos (Cocos Malays)."
  },
  {
    content: "Pourquoi le disque jaune sur le drapeau de Palaos est-il légèrement décentré vers le guindant (côté du mât) ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Océanie",
    correct_answer: "Pour une illusion d'optique",
    incorrect_answers: ["Pour représenter le lever de la lune", "Pour des raisons religieuses", "C'est une erreur de conception"],
    contexte: "Lorsque le drapeau flotte au vent, ce décalage donne l'illusion que la lune est parfaitement centrée, un détail de conception visuelle subtil."
  },

  # AFRIQUE - Drapeaux

  {
    content: "Quel pays a un drapeau composé de trois bandes verticales verte, jaune et rouge ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Sénégal",
    incorrect_answers: ["Mali", "Guinée", "Cameroun"],
    contexte: "Ce drapeau utilise les couleurs panafricaines. L'étoile verte au centre représente l'unité et l'espoir."
  },
  {
    content: "Ce drapeau a trois bandes horizontales : noire, rouge et verte. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Kenya",
    incorrect_answers: ["Malawi", "Libye", "Soudan"],
    contexte: "Le noir représente le peuple, le rouge le sang versé pour l'indépendance, et le vert le paysage. Le bouclier et les lances Massaï symbolisent la défense de la liberté."
  },
  {
    content: "Un drapeau vert, jaune et rouge avec une étoile jaune au centre est celui de quel pays ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Ghana",
    incorrect_answers: ["Éthiopie", "Cameroun", "Togo"],
    contexte: "Le Ghana a été le premier pays d'Afrique subsaharienne à adopter les couleurs panafricaines. L'étoile noire est 'l'étoile de la liberté africaine'."
  },
  {
    content: "Quel pays a un drapeau tricolore horizontal vert, jaune et rouge ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Éthiopie",
    incorrect_answers: ["Ghana", "Sénégal", "Mali"],
    contexte: "L'Éthiopie est à l'origine des couleurs panafricaines, symbolisant la foi, l'espoir et la charité. L'emblème central a été ajouté en 1996."
  },
  {
    content: "Ce drapeau est divisé en deux bandes horizontales, bleue en haut et verte en bas, avec un soleil rouge. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Maroc",
    incorrect_answers: ["Tunisie", "Algérie", "Turquie"],
    contexte: "Le fond rouge représente la bravoure et la force. Le pentagramme vert (Sceau de Salomon) symbolise la vie, la santé et la sagesse."
  },
  {
    content: "Un drapeau rouge avec un croissant de lune et une étoile blancs au centre est celui de quel pays d'Afrique du Nord ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Tunisie",
    incorrect_answers: ["Algérie", "Maroc", "Turquie"],
    contexte: "Le rouge et le blanc ont été adoptés de l'Empire ottoman. Le croissant et l'étoile sont des symboles de l'Islam, représentant aussi la chance."
  },
  {
    content: "Quel pays a un drapeau vert, blanc et vert, avec une bande rouge verticale sur le côté ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Algérie",
    incorrect_answers: ["Pakistan", "Arabie Saoudite", "Italie"],
    contexte: "Le vert représente l'Islam, le blanc la pureté. Le croissant et l'étoile rouges sont des symboles islamiques, le rouge symbolisant le sang des martyrs."
  },
  {
    content: "Un drapeau tricolore horizontal bleu, blanc et vert est celui de quel petit pays côtier ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Sierra Leone",
    incorrect_answers: ["Gabon", "Gambie", "Nigeria"],
    contexte: "Le vert symbolise l'agriculture et les montagnes, le blanc l'unité et la justice, et le bleu le port naturel de Freetown."
  },
  {
    content: "Quel pays est représenté par deux bandes verticales verte et blanche ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Nigeria",
    incorrect_answers: ["Irlande", "Côte d'Ivoire", "Niger"],
    contexte: "Le vert représente la richesse agricole et les forêts, tandis que le blanc symbolise la paix et l'unité."
  },
  {
    content: "Un drapeau tricolore vertical orange, blanc et vert est celui de quel pays d'Afrique de l'Ouest ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Côte d'Ivoire",
    incorrect_answers: ["Irlande", "Niger", "Inde"],
    contexte: "L'orange représente la savane du nord, le vert les forêts du sud, et le blanc la paix et l'unité entre eux."
  },
  {
    content: "Ce drapeau est bleu avec deux bandes jaune et verte. De quel pays s'agit-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Rwanda",
    incorrect_answers: ["Maroc", "République démocratique du Congo", "Somalie"],
    contexte: "Le bleu représente le bonheur et la paix, le jaune la richesse, et le vert l'espoir et la prospérité. Le soleil symbolise la lumière et l'unité."
  },
  {
    content: "Quel pays a un drapeau bleu ciel avec une seule étoile blanche à cinq branches au centre ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Somalie",
    incorrect_answers: ["Vietnam", "Micronésie", "Ghana"],
    contexte: "Le bleu est inspiré du drapeau de l'ONU. L'étoile de l'unité représente les cinq régions où vivent les peuples somalis."
  },
  {
    content: "Ce drapeau a trois bandes horizontales : rouge, blanche et noire. À quel pays appartient-il ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Égypte",
    incorrect_answers: ["Syrie", "Yémen", "Allemagne"],
    contexte: "Les couleurs sont celles du panarabisme. L'Aigle de Saladin au centre est un symbole de puissance et d'unité arabe."
  },
  {
    content: "Quel pays a un drapeau avec six couleurs, souvent appelé le 'drapeau arc-en-ciel' ?",
    difficulty: "facile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Afrique du Sud",
    incorrect_answers: ["Seychelles", "Maurice", "Madagascar"],
    contexte: "Le 'Y' symbolise la convergence des diverses cultures en une seule nation. Les couleurs n'ont pas de symbolisme officiel mais représentent l'unité post-apartheid."
  },
  {
    content: "Ce drapeau est bleu clair avec une bande noire diagonale bordée de jaune. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Tanzanie",
    incorrect_answers: ["Namibie", "Trinité-et-Tobago", "Botswana"],
    contexte: "Le drapeau combine les couleurs des Drapeaux du Tanganyika (vert et noir) et de Zanzibar (bleu et noir) qui ont fusionné pour former la Tanzanie."
  },
  {
    content: "Quel pays a un drapeau bleu ciel avec une bande noire horizontale au milieu, bordée de blanc ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Botswana",
    incorrect_answers: ["Estonie", "Kenya", "Sierra Leone"],
    contexte: "Le bleu représente l'eau et la pluie, une ressource rare et précieuse. Le noir et le blanc symbolisent l'harmonie entre les peuples."
  },
  {
    content: "Un drapeau avec une bande rouge verticale et trois bandes horizontales (jaune, verte, bleue). De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "République démocratique du Congo",
    incorrect_answers: ["Congo-Brazzaville", "Togo", "Bénin"],
    contexte: "Le bleu ciel représente la paix. Le rouge le sang des martyrs, et le jaune la richesse. L'étoile symbolise un avenir radieux pour le pays."
  },
  {
    content: "Ce drapeau est divisé en diagonale par une bande jaune, avec un champ vert en haut et rouge en bas. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Congo-Brazzaville",
    incorrect_answers: ["Sénégal", "Ghana", "Cameroun"],
    contexte: "Ce drapeau est le seul à utiliser les couleurs panafricaines (vert, jaune, rouge) dans un format diagonal."
  },
  {
    content: "Quel pays a un drapeau rouge avec une roue dentée, une machette et une étoile ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Angola",
    incorrect_answers: ["Mozambique", "Chine", "Vietnam"],
    contexte: "Les symboles s'inspirent de l'imagerie communiste : la roue dentée pour les travailleurs industriels et la machette pour les paysans."
  },
  {
    content: "Ce drapeau comporte un livre ouvert, une houe et un AK-47. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Mozambique",
    incorrect_answers: ["Angola", "Zimbabwe", "Ouganda"],
    contexte: "L'AK-47 symbolise la défense et la vigilance, le livre l'éducation, et la houe l'agriculture, piliers de la nation."
  },
  {
    content: "Le drapeau de l'Ouganda a six bandes horizontales et un oiseau au centre. Quel est cet oiseau ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Une grue royale grise",
    incorrect_answers: ["Un aigle", "Un flamant rose", "Un perroquet"],
    contexte: "La grue royale est l'oiseau national. Les couleurs noir, jaune et rouge symbolisent le peuple africain, le soleil et la fraternité."
  },
  {
    content: "Quel pays a un drapeau avec deux bandes horizontales, rouge en haut et verte en bas, avec une étoile jaune au centre ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Burkina Faso",
    incorrect_answers: ["Sénégal", "Togo", "Cameroun"],
    contexte: "Le rouge symbolise la révolution et le vert la richesse naturelle. L'étoile jaune est le guide de la révolution."
  },
  {
    content: "Ce drapeau a trois bandes horizontales de couleurs orange, blanche et verte. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Niger",
    incorrect_answers: ["Côte d'Ivoire", "Inde", "Irlande"],
    contexte: "L'orange représente le désert du Sahara, le blanc la pureté, et le vert les régions fertiles. Le disque orange symbolise le soleil."
  },
  {
    content: "Un drapeau avec un triangle bleu, une bande rouge et des bandes verte et jaune. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Comores",
    incorrect_answers: ["Seychelles", "Maurice", "Djibouti"],
    contexte: "Les quatre bandes et les quatre étoiles représentent les quatre îles de l'archipel. Le croissant est un symbole de l'Islam."
  },
  {
    content: "Quel drapeau partage deux de ses couleurs avec le drapeau de l'Ukraine ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Rwanda",
    incorrect_answers: ["Égypte", "Ouganda", "Burundi"],
    contexte: "Adopté en 2002. Le bleu symbolise le bonheur et la paix ; le jaune, le développement économique; le vert, la confiance en la prospérité future"
  },
  {
    content: "Ce drapeau est divisé en quatre rectangles de couleurs rouge, jaune, verte et noire. De quel pays insulaire s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Maurice",
    incorrect_answers: ["Madagascar", "Seychelles", "Comores"],
    contexte: "Le rouge représente la lutte pour l'indépendance, le bleu l'océan Indien, le jaune le soleil, et le vert l'agriculture."
  },
  {
    content: "Un drapeau bleu ciel et vert, séparés par un triangle blanc avec une étoile rouge. De quel pays s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Djibouti",
    incorrect_answers: ["Érythrée", "Somalie", "Éthiopie"],
    contexte: "Le bleu représente la mer, le vert la terre. Le blanc symbolise la paix, et l'étoile rouge l'unité et la lutte pour l'indépendance."
  },
  {
    content: "Quel pays a un drapeau avec une bande blanche verticale et deux bandes horizontales (rouge et verte) ?",
    difficulty: "intermédiaire",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Madagascar",
    incorrect_answers: ["Biélorussie", "Pologne", "Indonésie"],
    contexte: "Le rouge et le blanc étaient les couleurs du royaume Merina, et le vert a été ajouté pour représenter le peuple côtier."
  },
  {
    content: "Ce drapeau a des bandes diagonales bleues, jaunes, rouges, blanches et vertes. De quel archipel s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Seychelles",
    incorrect_answers: ["Maurice", "Comores", "Cap-Vert"],
    contexte: "Les bandes obliques symbolisent un pays dynamique tourné vers l'avenir. Les couleurs représentent le ciel, le soleil, le peuple, la nature et l'harmonie."
  },
  {
    content: "Un drapeau avec un triangle noir et des bandes verte, rouge et bleue, séparées par de fines lignes jaunes. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Soudan du Sud",
    incorrect_answers: ["Kenya", "Soudan", "Éthiopie"],
    contexte: "Le drapeau est similaire à celui du Kenya mais avec un triangle bleu et une étoile jaune, symbolisant les eaux du Nil et l'unité."
  },
  {
    content: "Quel pays a un drapeau bleu avec 10 étoiles jaunes disposées en cercle ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Cap-Vert",
    incorrect_answers: ["Union Européenne", "Brésil", "Comores"],
    contexte: "Les 10 étoiles représentent les 10 îles principales de l'archipel. Le bleu symbolise l'océan et le ciel."
  },
  {
    content: "Le drapeau du Lesotho est tricolore (bleu, blanc, vert) avec un chapeau traditionnel au centre. Quel est le nom de ce chapeau ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Un mokorotlo",
    incorrect_answers: ["Un fez", "Un kente", "Un dashiki"],
    contexte: "Le mokorotlo est un chapeau de paille conique, symbole national du Lesotho. Le drapeau symbolise un triptyque : la pluie (bleu), la paix (blanc) et la prospérité (vert)."
  },
  {
    content: "Quel pays anciennement appelé Swaziland a un drapeau avec un grand bouclier Nguni et deux lances ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Eswatini",
    incorrect_answers: ["Lesotho", "Botswana", "Afrique du Sud"],
    contexte: "Le bouclier et les lances symbolisent la protection contre les ennemis. Les plumes 'injobo' qui le décorent sont réservées au roi."
  },
  {
    content: "Un drapeau avec un rameau d'olivier vert sur un fond vert, rouge et bleu. De quel pays s'agit-il ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "Érythrée",
    incorrect_answers: ["Djibouti", "Éthiopie", "Chypre"],
    contexte: "Le rameau d'olivier symbolise la paix. Le rouge représente le sang versé, le vert la fertilité et le bleu la mer Rouge."
  },
  {
    content: "Le drapeau du Zimbabwe comporte sept bandes horizontales et un oiseau emblématique. Quel est cet oiseau ?",
    difficulty: "difficile",
    category: "Drapeaux",
    region: "Afrique",
    correct_answer: "L'Oiseau de Zimbabwe",
    incorrect_answers: ["Le Secrétaire", "L'Aigle pêcheur", "La Grue royale"],
    contexte: "L'Oiseau de Zimbabwe est une statuette trouvée dans les ruines du Grand Zimbabwe, symbole de l'histoire et du patrimoine du pays."
  },

  # RELIEFS, FLEUVES ET OCEANS

  # AFRIQUE - RELIEFS, FLEUVES ET OCEANS via GEMINI 2.5 Pro (NON VERIFIEES)

  {
    content: "Quel est le plus long fleuve du monde, qui traverse une grande partie de l'Afrique du Nord-Est ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Nil",
    incorrect_answers: ["Le Congo", "Le Niger", "Le Zambèze"],
    contexte: "Le Nil, s'écoulant sur environ 6 650 km, est une source de vie essentielle, notamment pour l'Égypte, depuis l'Antiquité."
  },
  {
    content: "Quel est le plus grand désert chaud du monde, couvrant la majeure partie de l'Afrique du Nord ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Sahara",
    incorrect_answers: ["Le Kalahari", "Le Namib", "Le Karoo"],
    contexte: "Le Sahara s'étend sur plus de 9 millions de km², une superficie comparable à celle des États-Unis."
  },
  {
    content: "Quelle est la plus haute montagne d'Afrique, située en Tanzanie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Kilimandjaro",
    incorrect_answers: ["Le Mont Kenya", "Le Mont Blanc", "Le Ras Dashen"],
    contexte: "Le Kilimandjaro est un volcan inactif célèbre pour ses neiges éternelles, bien que ses glaciers diminuent rapidement."
  },
  {
    content: "Quel océan borde la côte ouest de l'Afrique ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "L'Océan Atlantique",
    incorrect_answers: ["L'Océan Indien", "L'Océan Pacifique", "L'Océan Arctique"],
    contexte: "De l'Europe à l'Afrique et aux Amériques, l'Océan Atlantique est une voie commerciale et historique majeure."
  },
  {
    content: "Quel océan borde la côte est de l'Afrique ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "L'Océan Indien",
    incorrect_answers: ["L'Océan Atlantique", "L'Océan Pacifique", "La Mer Rouge"],
    contexte: "L'Océan Indien est connu pour ses moussons qui influencent le climat de la côte est-africaine."
  },
  {
    content: "Les Chutes Victoria, l'une des plus spectaculaires au monde, se trouvent sur quel fleuve ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Zambèze",
    incorrect_answers: ["Le Nil", "Le Congo", "Le Niger"],
    contexte: "Surnommées 'Mosi-oa-Tunya' (la fumée qui gronde), ces chutes forment le plus grand rideau d'eau du monde."
  },
  {
    content: "Quel est le plus grand lac d'Afrique en superficie, bordé par l'Ouganda, le Kenya et la Tanzanie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Lac Victoria",
    incorrect_answers: ["Le Lac Tanganyika", "Le Lac Malawi", "Le Lac Tchad"],
    contexte: "Le Lac Victoria est la principale source du Nil Blanc et le deuxième plus grand lac d'eau douce du monde."
  },
  {
    content: "Quelle mer sépare l'Afrique du Nord-Est de la péninsule arabique ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "La Mer Rouge",
    incorrect_answers: ["La Mer Méditerranée", "La Mer Noire", "Le Golfe Persique"],
    contexte: "La Mer Rouge est une voie navigable vitale, reliant la Méditerranée à l'Océan Indien via le canal de Suez."
  },
  {
    content: "Quelle grande île est située dans l'Océan Indien, à l'est du continent africain ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Madagascar",
    incorrect_answers: ["La Sicile", "La Crète", "Les Seychelles"],
    contexte: "Madagascar est la quatrième plus grande île du monde, célèbre pour sa faune et sa flore uniques, comme les lémuriens."
  },
  {
    content: "Quelle mer borde toute la côte nord de l'Afrique ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "La Mer Méditerranée",
    incorrect_answers: ["La Mer Rouge", "La Mer Adriatique", "L'Océan Atlantique"],
    contexte: "Berceau de nombreuses civilisations antiques, la Méditerranée relie l'Afrique à l'Europe et à l'Asie depuis des millénaires."
  },
  {
    content: "Quelle chaîne de montagnes s'étend sur le Maroc, l'Algérie et la Tunisie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "L'Atlas",
    incorrect_answers: ["Les Alpes", "Les Pyrénées", "Le Drakensberg"],
    contexte: "L'Atlas sépare la côte méditerranéenne et atlantique du désert du Sahara."
  },
  {
    content: "Le fleuve Congo, le deuxième plus puissant du monde, se jette dans quel océan ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "L'Océan Atlantique",
    incorrect_answers: ["L'Océan Indien", "La Mer Méditerranée", "La Mer Rouge"],
    contexte: "Le fleuve Congo possède le deuxième plus grand débit au monde après l'Amazone, drainant l'immense forêt tropicale du bassin du Congo."
  },
  {
    content: "Le cap de Bonne-Espérance est une pointe rocheuse célèbre située à l'extrémité sud de quel pays ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "L'Afrique du Sud",
    incorrect_answers: ["La Namibie", "Le Mozambique", "Madagascar"],
    contexte: "Historiquement important pour la route des Indes, ce cap est un point de repère maritime majeur, souvent battu par les tempêtes."
  },
  {
    content: "Quel désert s'étend sur une grande partie du Botswana, de la Namibie et de l'Afrique du Sud ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Kalahari",
    incorrect_answers: ["Le Sahara", "Le Namib", "Le Karoo"],
    contexte: "Bien qu'aride, le Kalahari n'est pas un désert au sens strict mais plutôt un semi-désert, abritant une faune et une flore variées."
  },
  {
    content: "Le delta de l'Okavango, un vaste delta intérieur, se trouve dans quel pays ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Botswana",
    incorrect_answers: ["Le Zimbabwe", "La Zambie", "L'Angola"],
    contexte: "Contrairement à la plupart des deltas, celui-ci ne se jette pas dans la mer mais s'évapore dans le désert du Kalahari."
  },
  {
    content: "Quelle formation géologique massive s'étend sur des milliers de kilomètres, de la Syrie au Mozambique ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "La Vallée du Grand Rift",
    incorrect_answers: ["La Fosse des Mariannes", "Le Grand Canyon", "La Cordillère des Andes"],
    contexte: "Cette immense faille tectonique est à l'origine de nombreux lacs et volcans en Afrique de l'Est, et est considérée comme le berceau de l'humanité."
  },
  {
    content: "Quel fleuve, le principal d'Afrique de l'Ouest, forme une grande boucle à travers le Mali ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Niger",
    incorrect_answers: ["Le Sénégal", "La Volta", "Le Congo"],
    contexte: "Essentiel pour l'agriculture et le transport, le fleuve Niger est la bouée de sauvetage des pays du Sahel qu'il traverse."
  },
  {
    content: "Quel est le lac le plus profond d'Afrique et le deuxième plus profond du monde ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Lac Tanganyika",
    incorrect_answers: ["Le Lac Victoria", "Le Lac Malawi", "Le Lac Kivu"],
    contexte: "Situé dans la Vallée du Rift, ce lac est également le plus long lac d'eau douce du monde."
  },
  {
    content: "Quelle chaîne de montagnes constitue la principale formation montagneuse d'Afrique du Sud ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Drakensberg",
    incorrect_answers: ["L'Atlas", "Les Monts Rwenzori", "Le Kilimandjaro"],
    contexte: "Signifiant 'Montagnes du Dragon' en afrikaans, le Drakensberg est célèbre pour ses paysages spectaculaires et ses peintures rupestres."
  },
  {
    content: "Le Canal de Suez, une voie navigable artificielle, relie la Mer Méditerranée à quelle autre mer ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "La Mer Rouge",
    incorrect_answers: ["La Mer Noire", "La Mer d'Arabie", "L'Océan Indien"],
    contexte: "Ce canal est l'une des routes maritimes les plus importantes au monde, permettant de raccourcir considérablement le trajet entre l'Europe et l'Asie."
  },
  {
    content: "Quel désert côtier, l'un des plus anciens du monde, s'étend le long de la côte de la Namibie ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le désert du Namib",
    incorrect_answers: ["Le Sahara", "Le Kalahari", "Le Karoo"],
    contexte: "Le Namib est célèbre pour ses dunes de sable rouge géantes, parmi les plus hautes du monde, qui plongent directement dans l'océan."
  },
  {
    content: "Le lac Tchad, vital pour des millions de personnes, est bordé par quels quatre pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Tchad, le Niger, le Nigeria et le Cameroun",
    incorrect_answers: ["Le Soudan, la Libye, l'Égypte et le Tchad", "Le Mali, le Burkina Faso, le Niger et le Bénin", "L'Algérie, la Libye, le Niger et le Tchad"],
    contexte: "La superficie du lac a considérablement diminué au cours des dernières décennies en raison du changement climatique et de la surexploitation de l'eau."
  },
  {
    content: "Quelle est la source principale du Nil Bleu, qui fournit la majorité de l'eau du Nil ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Lac Tana (en Éthiopie)",
    incorrect_answers: ["Le Lac Victoria (en Ouganda)", "Les Monts Rwenzori (en Ouganda)", "Le Lac Albert (en Ouganda)"],
    contexte: "Le Nil Bleu rejoint le Nil Blanc à Khartoum, au Soudan, pour former le Nil proprement dit."
  },
  {
    content: "Le mont Kenya est le deuxième plus haut sommet d'Afrique. Dans quel pays se trouve-t-il ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Kenya",
    incorrect_answers: ["La Tanzanie", "L'Ouganda", "L'Éthiopie"],
    contexte: "Ce volcan éteint est un site du patrimoine mondial de l'UNESCO, avec des écosystèmes variés allant de la forêt aux glaciers."
  },
  {
    content: "Quel canal sépare Madagascar du continent africain ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Canal du Mozambique",
    incorrect_answers: ["Le Canal de Suez", "Le Détroit de Gibraltar", "Le Détroit de Bab-el-Mandeb"],
    contexte: "Le Canal du Mozambique est un passage important pour la navigation et abrite des écosystèmes marins riches."
  },
  {
    content: "Le bassin du Congo abrite la deuxième plus grande forêt tropicale du monde. Quel fleuve le draine ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Congo",
    incorrect_answers: ["Le Niger", "Le Zambèze", "L'Ogooué"],
    contexte: "Cette forêt joue un rôle crucial dans la régulation du climat mondial et abrite une biodiversité exceptionnelle."
  },
  {
    content: "Le cratère du Ngorongoro, une vaste caldeira volcanique intacte, se trouve dans quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "La Tanzanie",
    incorrect_answers: ["Le Kenya", "L'Éthiopie", "L'Afrique du Sud"],
    contexte: "Classé au patrimoine mondial de l'UNESCO, le cratère abrite une concentration extraordinairement dense de faune sauvage."
  },
  {
    content: "Quel fleuve marque une partie de la frontière entre l'Afrique du Sud et la Namibie ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le fleuve Orange",
    incorrect_answers: ["Le Limpopo", "Le Zambèze", "Le Vaal"],
    contexte: "Le fleuve Orange est le plus long fleuve d'Afrique du Sud. Il est connu pour ses gisements de diamants alluvionnaires."
  },
  {
    content: "La 'Porte des Enfers' (Bab-el-Mandeb) est un détroit stratégique qui relie la Mer Rouge à quel golfe ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Golfe d'Aden",
    incorrect_answers: ["Le Golfe Persique", "Le Golfe d'Oman", "Le Golfe de Guinée"],
    contexte: "Ce détroit est un point de passage obligé pour le trafic maritime mondial, mais aussi une zone de piraterie et d'instabilité."
  },
  {
    content: "Quel lac, partagé entre le Malawi, le Mozambique et la Tanzanie, est connu pour son incroyable diversité de poissons cichlidés ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Lac Malawi (ou Lac Nyasa)",
    incorrect_answers: ["Le Lac Victoria", "Le Lac Tanganyika", "Le Lac Turkana"],
    contexte: "Ce lac abrite plus d'espèces de poissons que n'importe quel autre lac au monde, ce qui en fait un point chaud de la biodiversité."
  },
  {
    content: "La dépression de Danakil, l'un des endroits les plus chauds et les plus bas de la planète, se trouve principalement dans quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "L'Éthiopie",
    incorrect_answers: ["L'Érythrée", "Djibouti", "La Somalie"],
    contexte: "Cette région désertique est célèbre pour ses paysages surréalistes de volcans, de sources chaudes sulfureuses et de lacs de sel."
  },
  {
    content: "Quel massif montagneux, parfois appelé les 'Montagnes de la Lune', se trouve à la frontière de l'Ouganda et de la RDC ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Les Monts Rwenzori",
    incorrect_answers: ["Les Monts Virunga", "Le Massif de l'Adamaoua", "Le Massif du Tibesti"],
    contexte: "Malgré leur proximité avec l'équateur, les plus hauts sommets du Rwenzori sont recouverts de glaciers."
  },
  {
    content: "Le 'Grand Escarpement' est une caractéristique topographique majeure qui borde quel grand plateau ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le plateau sud-africain",
    incorrect_answers: ["Le plateau éthiopien", "Le plateau de Jos", "Le plateau du Fouta-Djalon"],
    contexte: "Cette longue chaîne de montagnes et de falaises sépare le haut plateau intérieur des plaines côtières plus basses."
  },
  {
    content: "Quel fleuve prend sa source dans le massif du Fouta-Djalon en Guinée et se jette dans l'Atlantique au Sénégal ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le fleuve Sénégal",
    incorrect_answers: ["Le fleuve Gambie", "La Volta", "Le Niger"],
    contexte: "Le Fouta-Djalon est considéré comme le 'château d'eau' de l'Afrique de l'Ouest, donnant naissance à plusieurs grands fleuves."
  },
  {
    content: "Le Lac Assal, le point le plus bas d'Afrique, est un lac salé situé dans quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Djibouti",
    incorrect_answers: ["L'Éthiopie", "L'Érythrée", "Le Kenya"],
    contexte: "Situé à 155 mètres sous le niveau de la mer, sa concentration en sel est dix fois supérieure à celle de l'océan."
  },
  {
    content: "Quel courant océanique froid remonte le long de la côte sud-ouest de l'Afrique, contribuant à l'aridité du désert du Namib ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le courant de Benguela",
    incorrect_answers: ["Le courant des Aiguilles", "Le courant de Guinée", "Le courant des Canaries"],
    contexte: "Ce courant riche en nutriments soutient une vie marine abondante mais empêche la formation de pluie sur la côte."
  },
  {
    content: "Le massif du Tibesti, une chaîne de volcans majoritairement inactifs, se trouve dans le désert du Sahara, principalement dans quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Tchad",
    incorrect_answers: ["La Libye", "Le Niger", "L'Algérie"],
    contexte: "Le Tibesti abrite le plus haut sommet du Sahara, l'Emi Koussi, et des peintures rupestres témoignant d'un passé plus humide."
  },
  {
    content: "Quel fleuve, formant la frontière entre la RDC et le Congo-Brazzaville, est le plus profond du monde ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Congo",
    incorrect_answers: ["Le Nil", "Le Zambèze", "Le Niger"],
    contexte: "À certains endroits, le fleuve Congo atteint des profondeurs de plus de 220 mètres, créant des écosystèmes aquatiques uniques."
  },
  {
    content: "La 'Côte des Squelettes' est le nom donné au littoral de quel pays, en raison de ses nombreux naufrages et de son climat inhospitalier ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "La Namibie",
    incorrect_answers: ["L'Angola", "L'Afrique du Sud", "La Somalie"],
    contexte: "La rencontre du brouillard dense du courant de Benguela et des dunes du désert du Namib crée des conditions de navigation extrêmement dangereuses."
  },
  {
    content: "Quel lac volcanique du Cameroun a libéré une grande quantité de CO2 en 1986, causant la mort de près de 1 800 personnes ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Afrique",
    correct_answer: "Le Lac Nyos",
    incorrect_answers: ["Le Lac Kivu", "Le Lac Manoun", "Le Lac Tana"],
    contexte: "Ce phénomène rare, appelé éruption limnique, a conduit à la mise en place de systèmes de dégazage pour prévenir de futures catastrophes."
  },

  # EUROPE - RELIEFS, FLEUVES ET OCEANS via GEMINI 2.5 Flash (NON VERIFIEES)

  {
    content: "Quelle est la plus haute chaîne de montagnes d'Europe, s'étendant sur huit pays dont la France, la Suisse et l'Italie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Les Alpes",
    incorrect_answers: ["Les Pyrénées", "Les Carpates", "L'Oural"],
    contexte: "Les Alpes abritent le Mont Blanc, le plus haut sommet d'Europe occidentale, et sont célèbres pour leurs paysages spectaculaires et leurs stations de ski."
  },
  {
    content: "Quel fleuve traverse des capitales comme Vienne, Bratislava, Budapest et Belgrade avant de se jeter dans la mer Noire ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Le Danube",
    incorrect_answers: ["Le Rhin", "La Volga", "La Seine"],
    contexte: "Le Danube est le deuxième plus long fleuve d'Europe. Il est une artère commerciale et culturelle majeure en Europe centrale et orientale."
  },
  {
    content: "Quelle mer semi-fermée borde le sud de l'Europe, le nord de l'Afrique et l'ouest de l'Asie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Mer Méditerranée",
    incorrect_answers: ["La Mer Noire", "La Mer du Nord", "La Mer Baltique"],
    contexte: "Berceau de nombreuses civilisations antiques, la Méditerranée est une mer cruciale pour le commerce, le tourisme et la culture."
  },
  {
    content: "Quel est le plus long fleuve d'Europe, qui s'écoule entièrement en Russie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Volga",
    incorrect_answers: ["Le Danube", "Le Dniepr", "Le Rhin"],
    contexte: "La Volga est considérée comme le fleuve national de la Russie. Elle joue un rôle vital pour le transport et l'hydroélectricité."
  },
  {
    content: "Quelle chaîne de montagnes forme une frontière naturelle entre la France et l'Espagne ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Les Pyrénées",
    incorrect_answers: ["Les Alpes", "Les Apennins", "Le Jura"],
    contexte: "Les Pyrénées s'étendent de l'océan Atlantique à la mer Méditerranée et abritent la principauté d'Andorre."
  },
  {
    content: "Quel fleuve traverse Paris, la capitale de la France ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Seine",
    incorrect_answers: ["La Loire", "Le Rhône", "La Garonne"],
    contexte: "La Seine est l'un des fleuves les plus célèbres du monde, bordée par de nombreux monuments parisiens emblématiques."
  },
  {
    content: "Quel détroit sépare l'Europe (Espagne) de l'Afrique (Maroc) ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Le détroit de Gibraltar",
    incorrect_answers: ["Le détroit du Bosphore", "La Manche", "Le détroit de Messine"],
    contexte: "Ce détroit stratégique relie l'océan Atlantique à la mer Méditerranée et est l'une des voies maritimes les plus fréquentées."
  },
  {
    content: "Quel océan borde la côte ouest de l'Europe, notamment le Portugal, l'Irlande et la Norvège ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "L'Océan Atlantique",
    incorrect_answers: ["L'Océan Pacifique", "L'Océan Arctique", "L'Océan Indien"],
    contexte: "L'Atlantique a joué un rôle crucial dans l'histoire de l'exploration, du commerce et de la migration européenne."
  },
  {
    content: "Le Rhin, un fleuve majeur, prend sa source dans quel pays avant de traverser l'Allemagne et les Pays-Bas ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Suisse",
    incorrect_answers: ["L'Autriche", "L'Italie", "La France"],
    contexte: "Le Rhin est une voie navigable vitale pour l'industrie européenne, notamment dans la région de la Ruhr en Allemagne."
  },
  {
    content: "Quel grand lac est partagé entre la France et la Suisse ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Le Lac Léman (Lac de Genève)",
    incorrect_answers: ["Le Lac de Constance", "Le Lac de Garde", "Le Lac Majeur"],
    contexte: "Le Lac Léman est le plus grand lac alpin d'Europe centrale, célèbre pour son jet d'eau à Genève."
  },
  {
    content: "Le Vésuve est un volcan célèbre qui surplombe quelle ville italienne ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Naples",
    incorrect_answers: ["Rome", "Florence", "Venise"],
    contexte: "Le Vésuve est tristement célèbre pour sa violente éruption en 79 apr. J.-C. qui a détruit les villes de Pompéi et Herculanum."
  },
  {
    content: "Quel fleuve traverse la capitale du Royaume-Uni, Londres ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Tamise",
    incorrect_answers: ["La Severn", "Le Trent", "La Clyde"],
    contexte: "La Tamise est le plus long fleuve d'Angleterre et a été au cœur de l'histoire et du développement de Londres."
  },
  {
    content: "La mer du Nord est une mer de l'océan Atlantique située entre quels deux territoires ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Grande-Bretagne et l'Europe continentale",
    incorrect_answers: ["L'Irlande et la Grande-Bretagne", "La Scandinavie et la Russie", "L'Italie et les Balkans"],
    contexte: "La mer du Nord est une zone de pêche importante et contient de grandes réserves de pétrole et de gaz naturel."
  },
  {
    content: "Quelle est la plus grande île d'Europe ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Grande-Bretagne",
    incorrect_answers: ["L'Islande", "L'Irlande", "La Sicile"],
    contexte: "L'île de Grande-Bretagne comprend l'Angleterre, l'Écosse et le Pays de Galles."
  },
  {
    content: "Quelle mer sépare l'Italie de la péninsule des Balkans ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Mer Adriatique",
    incorrect_answers: ["La Mer Tyrrhénienne", "La Mer Ionienne", "La Mer Égée"],
    contexte: "L'Adriatique est connue pour ses eaux claires et ses nombreuses îles le long de la côte croate."
  },
  {
    content: "Quelle chaîne de montagnes forme l'épine dorsale de la péninsule italienne ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Les Apennins",
    incorrect_answers: ["Les Alpes", "Les Dolomites", "Les Pyrénées"],
    contexte: "Les Apennins s'étendent sur près de 1 200 km du nord au sud de l'Italie, caractérisant une grande partie de son paysage."
  },
  {
    content: "Le détroit de la Manche sépare la Grande-Bretagne de quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La France",
    incorrect_answers: ["L'Irlande", "La Belgique", "Les Pays-Bas"],
    contexte: "C'est l'une des voies de navigation les plus fréquentées au monde et elle est traversée par le tunnel sous la Manche."
  },
  {
    content: "Quel est le plus grand lac d'Europe, situé au nord-ouest de la Russie ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Le Lac Ladoga",
    incorrect_answers: ["Le Lac Onega", "Le Lac Vänern", "Le Lac Peïpous"],
    contexte: "Pendant la Seconde Guerre mondiale, la surface gelée du lac Ladoga a servi de 'Route de la Vie' pour ravitailler Leningrad assiégée."
  },
  {
    content: "Les fjords, de profondes vallées glaciaires envahies par la mer, sont particulièrement emblématiques de quel pays scandinave ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Norvège",
    incorrect_answers: ["La Suède", "La Finlande", "Le Danemark"],
    contexte: "Les fjords norvégiens, comme le Geirangerfjord et le Nærøyfjord, sont inscrits au patrimoine mondial de l'UNESCO pour leur beauté naturelle."
  },
  {
    content: "La mer Noire est reliée à la mer Méditerranée par quel détroit stratégique ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Le Bosphore",
    incorrect_answers: ["Le détroit de Gibraltar", "Le détroit de Kertch", "Les Dardanelles"],
    contexte: "Le Bosphore traverse la ville d'Istanbul, ce qui en fait une voie navigable unique traversant une métropole majeure."
  },
  {
    content: "Quelle chaîne de montagnes s'étend en arc de cercle à travers l'Europe centrale et orientale, de la République Tchèque à la Roumanie ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Les Carpates",
    incorrect_answers: ["Les Alpes", "Les Balkans", "Les Sudètes"],
    contexte: "Les Carpates abritent les plus grandes populations d'ours bruns, de loups et de lynx d'Europe."
  },
  {
    content: "Le Pô est le plus long fleuve de quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "L'Italie",
    incorrect_answers: ["L'Espagne", "La France", "La Grèce"],
    contexte: "Il traverse la plaine du Pô, la région agricole et industrielle la plus importante d'Italie, avant de se jeter dans l'Adriatique."
  },
  {
    content: "Quel pays est une grande île volcanique située sur la dorsale médio-atlantique, connue pour ses geysers et ses glaciers ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "L'Islande",
    incorrect_answers: ["L'Irlande", "Le Groenland", "Chypre"],
    contexte: "Surnommée 'la terre de glace et de feu', l'Islande est l'un des pays les plus actifs sur le plan volcanique au monde."
  },
  {
    content: "La mer Baltique est une mer intérieure connue pour sa faible salinité. Quel pays n'a PAS de côte sur la mer Baltique ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Norvège",
    incorrect_answers: ["La Suède", "La Pologne", "La Finlande"],
    contexte: "La Baltique est presque entièrement fermée, ce qui, combiné à l'apport de nombreux fleuves, explique sa faible teneur en sel."
  },
  {
    content: "Le Tage (Tejo) est le plus long fleuve de quelle péninsule ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La péninsule Ibérique",
    incorrect_answers: ["La péninsule Italienne", "La péninsule des Balkans", "La péninsule Scandinave"],
    contexte: "Il traverse l'Espagne et le Portugal, passant par des villes comme Tolède et Lisbonne avant de se jeter dans l'Atlantique."
  },
  {
    content: "Le massif du Jura forme une frontière naturelle entre la France et quel autre pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Suisse",
    incorrect_answers: ["L'Allemagne", "L'Italie", "La Belgique"],
    contexte: "Le Jura a donné son nom à la période géologique du Jurassique en raison des nombreux fossiles marins trouvés dans ses calcaires."
  },
  {
    content: "Quelle mer, une partie de la Méditerranée, est parsemée de milliers d'îles et borde la Grèce et la Turquie ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Mer Égée",
    incorrect_answers: ["La Mer Ionienne", "La Mer Adriatique", "La Mer Tyrrhénienne"],
    contexte: "La mer Égée est le berceau des civilisations minoenne et mycénienne et est célèbre pour ses îles comme Santorin et Mykonos."
  },
  {
    content: "Quelle est la plus grande île de la mer Méditerranée ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Sicile",
    incorrect_answers: ["La Sardaigne", "Chypre", "La Crète"],
    contexte: "La Sicile est une région autonome d'Italie, célèbre pour l'Etna, le volcan actif le plus haut d'Europe."
  },
  {
    content: "Le plateau de la Meseta est la principale caractéristique du relief intérieur de quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "L'Espagne",
    incorrect_answers: ["Le Portugal", "La France", "L'Italie"],
    contexte: "Ce vaste plateau couvre une grande partie du centre de l'Espagne, y compris la capitale, Madrid."
  },
  {
    content: "Quel fleuve prend sa source en Allemagne et se jette dans la mer du Nord à Hambourg ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "L'Elbe",
    incorrect_answers: ["Le Weser", "L'Oder", "Le Danube"],
    contexte: "L'Elbe a joué un rôle important dans l'histoire, marquant un point de rencontre entre les armées américaines et soviétiques en 1945."
  },
  {
    content: "Les polders, des étendues de terre gagnées sur la mer, sont une caractéristique emblématique de quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Les Pays-Bas",
    incorrect_answers: ["Le Danemark", "La Belgique", "L'Allemagne"],
    contexte: "Près d'un tiers du territoire des Pays-Bas se trouve sous le niveau de la mer, protégé par un système complexe de digues et de polders."
  },
  {
    content: "Quelle chaîne de montagnes est traditionnellement considérée comme la frontière naturelle entre l'Europe et l'Asie ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "L'Oural",
    incorrect_answers: ["Le Caucase", "Les Carpates", "Les Alpes scandinaves"],
    contexte: "Bien que la frontière soit une convention, l'Oural s'étend du nord au sud de la Russie occidentale et est riche en ressources minérales."
  },
  {
    content: "Le détroit de Messine, connu pour ses courants forts, sépare la Sicile de quelle partie de l'Italie ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La péninsule italienne (Calabre)",
    incorrect_answers: ["La Sardaigne", "La Corse", "Malte"],
    contexte: "Dans la mythologie grecque, ce détroit abritait les monstres marins Charybde et Scylla, représentant le danger de la navigation."
  },
  {
    content: "Le lac Balaton, le plus grand lac d'Europe centrale, est une destination touristique majeure dans quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Hongrie",
    incorrect_answers: ["L'Autriche", "La Slovaquie", "La Croatie"],
    contexte: "Surnommé la 'mer hongroise', ce lac peu profond est populaire pour la baignade et les sports nautiques."
  },
  {
    content: "Le 'Gulf Stream' est un puissant courant océanique chaud qui a un effet modérateur significatif sur le climat de quelle partie de l'Europe ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "L'Europe de l'Ouest et du Nord",
    incorrect_answers: ["L'Europe de l'Est", "L'Europe du Sud", "L'Europe Centrale"],
    contexte: "Sans le Gulf Stream, des pays comme le Royaume-Uni et la Norvège auraient des hivers beaucoup plus froids, similaires à ceux du Canada."
  },
  {
    content: "Les Alpes dinariques sont une chaîne de montagnes qui s'étend le long de la côte de quelle mer ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Mer Adriatique",
    incorrect_answers: ["La Mer Égée", "La Mer Noire", "La Mer Tyrrhénienne"],
    contexte: "Elles traversent plusieurs pays des Balkans, de la Slovénie à l'Albanie, et sont connues pour leur relief karstique."
  },
  {
    content: "Quel fleuve, le plus long de Pologne, traverse Varsovie et Cracovie avant de se jeter dans la mer Baltique ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Vistule",
    incorrect_answers: ["L'Oder", "Le Dniepr", "Le Niémen"],
    contexte: "La Vistule est considérée comme le fleuve le plus important de Pologne, tant sur le plan historique qu'économique."
  },
  {
    content: "Le golfe de Botnie est la partie la plus septentrionale de quelle mer ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Mer Baltique",
    incorrect_answers: ["La Mer du Nord", "La Mer de Barents", "La Mer Blanche"],
    contexte: "Situé entre la Suède et la Finlande, ce golfe gèle complètement pendant l'hiver, permettant la circulation de brise-glaces."
  },
  {
    content: "Quelle région marécageuse du sud de la France, célèbre pour ses chevaux blancs et ses taureaux, est en fait un delta fluvial ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Camargue",
    incorrect_answers: ["Le Marais poitevin", "Les Landes", "La Sologne"],
    contexte: "La Camargue est le delta du Rhône, le plus grand delta fluvial d'Europe occidentale."
  },
  {
    content: "Le Lough Neagh est le plus grand lac d'eau douce de quelles îles ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "Les Îles Britanniques",
    incorrect_answers: ["Les Îles Féroé", "Les Shetland", "Les Baléares"],
    contexte: "Situé en Irlande du Nord, il fournit 40 % de l'eau potable de la région."
  },
  {
    content: "Le détroit des Dardanelles relie la mer Égée à quelle autre mer ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Mer de Marmara",
    incorrect_answers: ["La Mer Noire", "La Mer d'Azov", "La Mer Méditerranée"],
    contexte: "Avec le Bosphore, il forme les détroits turcs, une voie navigable stratégique qui a été au cœur de nombreux conflits, notamment pendant la Première Guerre mondiale."
  },
  {
    content: "Le plateau du Hardangervidda, le plus grand plateau d'érosion d'Europe, abrite la plus grande population de rennes sauvages. Dans quel pays se trouve-t-il ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Norvège",
    incorrect_answers: ["La Suède", "La Finlande", "L'Écosse"],
    contexte: "Ce plateau est un parc national protégé, offrant des paysages arctiques uniques dans le sud de la Norvège."
  },
  {
    content: "Le Guadalquivir est un fleuve majeur qui traverse quelle région autonome du sud de l'Espagne ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "L'Andalousie",
    incorrect_answers: ["La Catalogne", "La Castille", "Le Pays Basque"],
    contexte: "Il traverse des villes historiques comme Cordoue et Séville et est le seul grand fleuve d'Espagne navigable pour les navires de mer."
  },
  {
    content: "Les Météores, des formations rocheuses spectaculaires au sommet desquelles des monastères ont été construits, se trouvent dans quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Europe",
    correct_answer: "La Grèce",
    incorrect_answers: ["L'Italie", "L'Espagne", "La Turquie"],
    contexte: "Situés en Thessalie, ces piliers de grès sont un site du patrimoine mondial de l'UNESCO, combinant merveille naturelle et réalisation humaine."
  },

  # Amérique - RELIEFS, FLEUVES ET OCEANS via GEMINI 2.5 Flash (NON VERIFIEES)

  {
    content: "Quel est le plus long fleuve d'Amérique du Sud, et le plus puissant du monde en termes de débit ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "L'Amazone",
    incorrect_answers: ["Le Mississippi", "Le Paraná", "Le Mackenzie"],
    contexte: "L'Amazone draine le plus grand bassin hydrographique du monde, couvrant une immense partie de l'Amérique du Sud."
  },
  {
    content: "Quelle est la plus longue chaîne de montagnes du monde, s'étendant sur toute la côte ouest de l'Amérique du Sud ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "La Cordillère des Andes",
    incorrect_answers: ["Les Montagnes Rocheuses", "Les Appalaches", "La Sierra Madre"],
    contexte: "Les Andes s'étendent sur environ 7 000 km, traversant sept pays du Venezuela au Chili."
  },
  {
    content: "Quel est le plus grand fleuve d'Amérique du Nord, drainant une grande partie du centre des États-Unis ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Mississippi",
    incorrect_answers: ["Le Missouri", "Le Colorado", "Le Saint-Laurent"],
    contexte: "Le système fluvial Mississippi-Missouri est le quatrième plus long au monde et est crucial pour l'économie et l'agriculture américaines."
  },
  {
    content: "Quel océan borde la côte ouest des Amériques ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "L'Océan Pacifique",
    incorrect_answers: ["L'Océan Atlantique", "L'Océan Arctique", "L'Océan Indien"],
    contexte: "Le Pacifique est le plus grand et le plus profond des océans du monde, s'étendant de l'Alaska à la Terre de Feu."
  },
  {
    content: "Quel océan borde la côte est des Amériques ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "L'Océan Atlantique",
    incorrect_answers: ["L'Océan Pacifique", "L'Océan Austral", "La Mer des Caraïbes"],
    contexte: "L'Atlantique sépare les Amériques de l'Europe et de l'Afrique et a été la principale voie des explorations et des migrations."
  },
  {
    content: "Les Chutes du Niagara se trouvent à la frontière entre les États-Unis et quel autre pays ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Le Mexique", "Le Groenland", "Cuba"],
    contexte: "Ces chutes puissantes sont situées sur la rivière Niagara, qui relie le lac Érié au lac Ontario."
  },
  {
    content: "Quel est le plus grand groupe de lacs d'eau douce au monde, situé en Amérique du Nord ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Les Grands Lacs",
    incorrect_answers: ["Le Grand Lac Salé", "Le Lac Titicaca", "Le Lac de Maracaibo"],
    contexte: "Les cinq Grands Lacs (Supérieur, Michigan, Huron, Érié, Ontario) forment une frontière naturelle entre les États-Unis et le Canada."
  },
  {
    content: "Quelle chaîne de montagnes s'étend de l'ouest du Canada au Nouveau-Mexique aux États-Unis ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Les Montagnes Rocheuses",
    incorrect_answers: ["Les Appalaches", "La Cordillère des Andes", "La Sierra Nevada"],
    contexte: "Les Rocheuses sont célèbres pour leurs parcs nationaux, comme Yellowstone et Banff, et leurs paysages alpins spectaculaires."
  },
  {
    content: "Quel golfe est situé au sud des États-Unis et à l'est du Mexique ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Golfe du Mexique",
    incorrect_answers: ["Le Golfe de Californie", "La Baie d'Hudson", "La Mer des Caraïbes"],
    contexte: "Ce golfe est une zone majeure pour la pêche, l'extraction de pétrole et est sujet à de puissants ouragans."
  },
  {
    content: "Quel fleuve forme une grande partie de la frontière entre les États-Unis et le Mexique ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Rio Grande",
    incorrect_answers: ["Le Colorado", "Le Mississippi", "Le Gila"],
    contexte: "Connu sous le nom de Río Bravo au Mexique, ce fleuve s'étend de la cordillère des Rocheuses jusqu'au golfe du Mexique."
  },
  {
    content: "Le Canal de Panama relie l'Océan Atlantique à quel autre océan ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "L'Océan Pacifique",
    incorrect_answers: ["L'Océan Indien", "L'Océan Arctique", "La Mer des Caraïbes"],
    contexte: "Cette voie navigable artificielle a révolutionné le commerce maritime en raccourcissant considérablement les voyages entre les deux océans."
  },
  {
    content: "Quel est le point le plus au sud de l'Amérique du Sud ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Cap Horn",
    incorrect_answers: ["Le Cap de Bonne-Espérance", "Ushuaia", "Le Détroit de Magellan"],
    contexte: "Situé au Chili, le Cap Horn est célèbre pour ses conditions de navigation extrêmement difficiles et ses tempêtes."
  },
  {
    content: "La Baie d'Hudson est une très grande baie située dans quelle partie du Canada ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le nord-est",
    incorrect_answers: ["La côte ouest", "Le sud", "Les provinces maritimes"],
    contexte: "Cette mer intérieure est gelée pendant une grande partie de l'année et est un habitat important pour les ours polaires."
  },
  {
    content: "Quelle mer tropicale est bordée par l'Amérique du Sud au sud et les Grandes Antilles au nord ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "La Mer des Caraïbes",
    incorrect_answers: ["La Mer des Sargasses", "Le Golfe du Mexique", "L'Océan Atlantique Nord"],
    contexte: "La mer des Caraïbes est célèbre pour ses eaux turquoise, ses récifs coralliens et ses nombreuses îles touristiques."
  },
  {
    content: "Quelle est la principale chaîne de montagnes dans l'est de l'Amérique du Nord, s'étendant de Terre-Neuve à l'Alabama ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Les Appalaches",
    incorrect_answers: ["Les Montagnes Rocheuses", "Les Laurentides", "La Sierra Nevada"],
    contexte: "Les Appalaches sont beaucoup plus anciennes et érodées que les Rocheuses, avec des sommets plus arrondis."
  },
  {
    content: "Quel fleuve a creusé le Grand Canyon en Arizona ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Colorado",
    incorrect_answers: ["Le Columbia", "Le Snake", "Le Rio Grande"],
    contexte: "Pendant des millions d'années, l'érosion par le fleuve Colorado a sculpté ce canyon spectaculaire, l'un des plus célèbres au monde."
  },
  {
    content: "Le Lac Titicaca, le plus haut lac navigable du monde, est situé dans quelle chaîne de montagnes ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "La Cordillère des Andes",
    incorrect_answers: ["Les Montagnes Rocheuses", "La Sierra Madre", "Les Appalaches"],
    contexte: "À cheval sur la frontière entre le Pérou et la Bolivie, ce lac d'altitude était un site sacré pour les Incas."
  },
  {
    content: "Quel désert, l'un des plus secs du monde, s'étend le long de la côte du Chili et du Pérou ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le désert d'Atacama",
    incorrect_answers: ["Le désert de Sonora", "Le désert de Mojave", "Le désert de Patagonie"],
    contexte: "Certaines parties de l'Atacama n'ont jamais enregistré de précipitations. Il est connu pour ses paysages lunaires et ses observatoires astronomiques."
  },
  {
    content: "Le fleuve Saint-Laurent relie les Grands Lacs à quel océan ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "L'Océan Atlantique",
    incorrect_answers: ["L'Océan Arctique", "L'Océan Pacifique", "La Baie d'Hudson"],
    contexte: "Cette voie maritime est cruciale pour le commerce, permettant aux navires d'atteindre le cœur industriel de l'Amérique du Nord."
  },
  {
    content: "La Patagonie est une région naturelle partagée entre quels deux pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "L'Argentine et le Chili",
    incorrect_answers: ["Le Brésil et l'Uruguay", "Le Pérou et la Bolivie", "La Colombie et le Venezuela"],
    contexte: "Cette région de l'extrême sud est célèbre pour ses steppes arides, ses glaciers spectaculaires et ses montagnes escarpées comme le Fitz Roy."
  },
  {
    content: "Quel est le plus grand lac entièrement situé au Canada ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Grand lac de l'Ours",
    incorrect_answers: ["Le Grand lac des Esclaves", "Le Lac Supérieur", "Le Lac Winnipeg"],
    contexte: "Situé dans les Territoires du Nord-Ouest, c'est le huitième plus grand lac du monde."
  },
  {
    content: "Le Salar de Uyuni, le plus grand désert de sel du monde, se trouve dans quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "La Bolivie",
    incorrect_answers: ["Le Chili", "L'Argentine", "Le Pérou"],
    contexte: "Pendant la saison des pluies, ce désert de sel se transforme en un immense miroir, créant des paysages surréalistes."
  },
  {
    content: "Quel passage maritime dangereux sépare la pointe sud de l'Amérique du Sud de l'Antarctique ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Passage de Drake",
    incorrect_answers: ["Le Détroit de Magellan", "Le Canal de Beagle", "Le Détroit de Béring"],
    contexte: "C'est l'une des zones maritimes les plus agitées du monde, où les océans Atlantique, Pacifique et Austral se rencontrent."
  },
  {
    content: "Le bouclier canadien (ou laurentien) est une très grande formation géologique riche en quoi ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Minéraux et lacs",
    incorrect_answers: ["Terres agricoles fertiles", "Pétrole et gaz", "Déserts de sable"],
    contexte: "Ce plateau de roches anciennes couvre une grande partie de l'est et du centre du Canada et est une source majeure de minéraux."
  },
  {
    content: "Les chutes d'Iguazú, un ensemble impressionnant de cascades, se trouvent à la frontière de quels trois pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Brésil, l'Argentine et le Paraguay",
    incorrect_answers: ["La Colombie, le Venezuela et le Brésil", "Le Pérou, la Bolivie et le Brésil", "L'Uruguay, l'Argentine et le Brésil"],
    contexte: "Plus larges que les Chutes Victoria, elles sont considérées comme l'une des merveilles naturelles du monde."
  },
  {
    content: "Le fleuve Orénoque (Orinoco) traverse principalement quels deux pays d'Amérique du Sud ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Venezuela et la Colombie",
    incorrect_answers: ["Le Brésil et le Pérou", "L'Équateur et la Colombie", "Le Guyana et le Suriname"],
    contexte: "C'est l'un des plus longs fleuves d'Amérique du Sud, célèbre pour son delta et la richesse de sa faune."
  },
  {
    content: "Quel est le point le plus bas d'Amérique du Nord, situé dans le désert de Mojave ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "La Vallée de la Mort (Death Valley)",
    incorrect_answers: ["Le Grand Lac Salé", "La Mer Salton", "Le Bayou de la Louisiane"],
    contexte: "Située à 86 mètres sous le niveau de la mer, c'est aussi l'un des endroits les plus chauds de la planète."
  },
  {
    content: "Le plateau des Guyanes est un massif ancien situé au nord de quel grand fleuve ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "L'Amazone",
    incorrect_answers: ["L'Orénoque", "Le Paraná", "Le Magdalena"],
    contexte: "Cette région abrite des formations rocheuses uniques appelées tepuys, comme le mont Roraima, et des chutes d'eau spectaculaires."
  },
  {
    content: "Le fleuve Mackenzie, le plus long fleuve du Canada, se jette dans quel océan ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "L'Océan Arctique",
    incorrect_answers: ["L'Océan Pacifique", "L'Océan Atlantique", "La Baie d'Hudson"],
    contexte: "Il draine un immense bassin dans le nord-ouest du Canada et est gelé pendant une grande partie de l'année."
  },
  {
    content: "L'Aconcagua, le plus haut sommet des Amériques, se trouve dans quelle chaîne de montagnes et dans quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Les Andes, en Argentine",
    incorrect_answers: ["Les Andes, au Chili", "Les Rocheuses, aux États-Unis", "La Sierra Nevada, en Colombie"],
    contexte: "Culminant à 6 961 mètres, c'est le plus haut sommet en dehors de l'Asie."
  },
  {
    content: "Quel phénomène naturel unique, un mascaret (vague de marée), remonte le fleuve Amazone depuis l'océan Atlantique ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Pororoca",
    incorrect_answers: ["L'El Niño", "Le mascaret de la Severn", "La vague scélérate"],
    contexte: "Le Pororoca peut atteindre jusqu'à 4 mètres de haut et remonter à plus de 800 km à l'intérieur des terres, attirant des surfeurs."
  },
  {
    content: "Le fleuve Paraná et le fleuve Uruguay se rejoignent pour former quel immense estuaire ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Río de la Plata",
    incorrect_answers: ["Le delta de l'Amazone", "L'estuaire du Saint-Laurent", "La baie de Chesapeake"],
    contexte: "Cet estuaire, qui ressemble à une mer intérieure, sépare l'Argentine de l'Uruguay et abrite les capitales Buenos Aires et Montevideo."
  },
  {
    content: "Le cratère de Chicxulub, trace de l'impact d'astéroïde qui aurait causé l'extinction des dinosaures, est centré sur quelle péninsule ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "La péninsule du Yucatán (au Mexique)",
    incorrect_answers: ["La péninsule de Basse-Californie", "La Floride", "La péninsule du Labrador"],
    contexte: "Bien qu'enfoui, le cratère est visible à travers un arc de cénotes (gouffres d'eau) qui marque son périmètre."
  },
  {
    content: "La Fosse des Mariannes, le point le plus profond des océans, se trouve à l'est de quelle chaîne d'îles américaines ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Les Îles Mariannes (territoire américain)",
    incorrect_answers: ["Les Philippines", "Les Îles Aléoutiennes", "Les Hawaï"],
    contexte: "Bien que géographiquement en Océanie, les Mariannes du Nord et Guam sont des territoires des États-Unis."
  },
  {
    content: "Quelle est la particularité hydrographique du canal Casiquiare au Venezuela ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Il relie deux grands bassins fluviaux (Orénoque et Amazone)",
    incorrect_answers: ["Il coule dans les deux sens", "Il est entièrement souterrain", "Il se termine dans un désert de sel"],
    contexte: "Ce canal naturel, ou bifurcation fluviale, est un phénomène rare qui permet à l'eau de passer du bassin de l'Orénoque à celui de l'Amazone."
  },
  {
    content: "Le Grand Lac Salé (Great Salt Lake) en Utah est le vestige de quel immense lac préhistorique ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Lac Bonneville",
    incorrect_answers: ["Le Lac Agassiz", "Le Lac Missoula", "Le Lac Lahontan"],
    contexte: "À l'époque glaciaire, le lac Bonneville couvrait une grande partie de l'ouest des États-Unis. Le Grand Lac Salé est ce qu'il en reste aujourd'hui."
  },
  {
    content: "Le détroit de Magellan est une voie navigable située à l'extrémité sud de quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "L'Uruguay", "Le Brésil"],
    contexte: "Avant le Canal de Panama, ce détroit était la principale route pour contourner l'Amérique du Sud, malgré sa navigation difficile."
  },
  {
    content: "La 'ceinture de feu' est une zone de forte activité sismique et volcanique. Quel est son point culminant volcanique en Amérique du Nord",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Pic d'Orizaba (Mexique)",
    incorrect_answers: ["Le Mont Rainier (États-Unis)", "Le Mont St. Helens (États-Unis)", "Le Popocatépetl (Mexique)"],
    contexte: "Culminant à 5 636 mètres, ce stratovolcan est le plus haut sommet du Mexique et le troisième d'Amérique du Nord."
  },
  {
    content: "Le Pantanal, la plus grande zone humide tropicale du monde, est principalement situé dans quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["La Colombie", "Le Pérou", "L'Argentine"],
    contexte: "S'étendant aussi en Bolivie et au Paraguay, cette immense plaine inondable est un sanctuaire de biodiversité, particulièrement pour les jaguars."
  },
  {
    content: "Quel est le seul pays d'Amérique centrale qui n'a pas de façade sur l'océan Atlantique (mer des Caraïbes) ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Amérique",
    correct_answer: "Le Salvador",
    incorrect_answers: ["Le Belize", "Le Honduras", "Le Nicaragua"],
    contexte: "Le Salvador est le plus petit pays d'Amérique centrale et ne possède qu'une côte sur l'océan Pacifique."
  },

  # Océanie - RELIEFS, FLEUVES ET OCEANS via GEMINI 2.5 Flash (NON VERIFIEES)

  {
    content: "Quel est le plus grand système de récifs coralliens du monde, visible depuis l'espace, situé au large de la côte australienne ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Grande Barrière de Corail",
    incorrect_answers: ["Le Récif de Nouvelle-Calédonie", "Le Récif de Ningaloo", "Le Triangle de Corail"],
    contexte: "Cet écosystème marin, le plus vaste du monde, abrite une biodiversité exceptionnelle mais est gravement menacé par le changement climatique."
  },
  {
    content: "Quel océan entoure la majorité des îles d'Océanie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'Océan Pacifique",
    incorrect_answers: ["L'Océan Atlantique", "L'Océan Indien", "L'Océan Austral"],
    contexte: "L'Océanie est presque entièrement composée d'îles et d'atolls dispersés dans l'immensité de l'océan Pacifique."
  },
  {
    content: "Quel est le plus haut sommet d'Océanie, situé sur l'île de Nouvelle-Guinée ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Le Puncak Jaya (Pyramide Carstensz)",
    incorrect_answers: ["Le Mont Cook", "Le Mont Kosciuszko", "Le Mauna Kea"],
    contexte: "Bien que situé près de l'équateur, ce sommet est suffisamment haut pour abriter des glaciers, ce qui en fait une curiosité géologique."
  },
  {
    content: "Uluru, également connu sous le nom d'Ayers Rock, est un monolithe de grès géant situé dans quel pays ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Fidji"],
    contexte: "Ce rocher sacré pour les peuples aborigènes est célèbre pour changer de couleur de façon spectaculaire au lever et au coucher du soleil."
  },
  {
    content: "Quelle chaîne de montagnes est la plus haute de Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Les Alpes du Sud",
    incorrect_answers: ["Les Montagnes Rocheuses", "Les Andes", "La Cordillère australienne"],
    contexte: "Les Alpes du Sud s'étendent sur la majeure partie de l'Île du Sud et abritent le Mont Cook (Aoraki), le plus haut sommet du pays."
  },
  {
    content: "Quel est le plus long fleuve d'Australie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Le Murray",
    incorrect_answers: ["Le Darling", "Le Murrumbidgee", "Le Lachlan"],
    contexte: "Le système fluvial Murray-Darling est le plus important d'Australie, drainant le bassin agricole le plus fertile du pays."
  },
  {
    content: "Quel type de relief, un récif corallien en forme d'anneau, est commun en Polynésie française et dans d'autres parties de l'océan Pacifique ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Un atoll",
    incorrect_answers: ["Un fjord", "Un mesa", "Un inselberg"],
    contexte: "Les atolls, comme Bora Bora ou Rangiroa, se forment autour d'une île volcanique qui s'est érodée et enfoncée sous la mer."
  },
  {
    content: "Quelle mer sépare l'Australie de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Mer de Tasman",
    incorrect_answers: ["La Mer de Corail", "La Mer d'Arafura", "La Mer de Timor"],
    contexte: "Nommée d'après l'explorateur Abel Tasman, cette mer est connue pour ses conditions météorologiques souvent difficiles."
  },
  {
    content: "Le mont Kosciuszko est le point culminant de quel pays ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Tasmanie"],
    contexte: "Situé dans les Snowy Mountains, c'est le plus haut sommet du continent australien, bien que plus bas que le Puncak Jaya."
  },
  {
    content: "Quel détroit sépare l'Australie continentale de l'île de Tasmanie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Le détroit de Bass",
    incorrect_answers: ["Le détroit de Cook", "Le détroit de Torres", "Le détroit de Malacca"],
    contexte: "Ce détroit est relativement peu profond et connu pour ses eaux agitées et ses forts courants."
  },
  {
    content: "Le Milford Sound, un fjord spectaculaire, est une attraction touristique majeure dans quel pays ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["L'Australie", "La Norvège", "Le Chili"],
    contexte: "Situé dans le parc national de Fiordland, le Milford Sound est célèbre pour ses falaises abruptes et ses cascades."
  },
  {
    content: "La 'Nullarbor Plain' est une vaste plaine aride et plate célèbre pour être...",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Le plus grand affleurement de calcaire au monde",
    incorrect_answers: ["Le plus grand désert de sel", "Le plus grand cratère de météorite", "La plus grande forêt d'eucalyptus"],
    contexte: "Située en Australie-Méridionale et Occidentale, son nom signifie 'sans arbres' en latin."
  },
  {
    content: "Quel est le plus grand lac d'Océanie, bien qu'il soit souvent à sec ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Le Lac Eyre (Kati Thanda)",
    incorrect_answers: ["Le Lac Taupo", "Le Lac Gairdner", "Le Lac Torrens"],
    contexte: "Ce lac salé endoréique en Australie ne se remplit que rarement. C'est aussi le point le plus bas du continent."
  },
  {
    content: "Quel détroit sépare les deux îles principales de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Le détroit de Cook",
    incorrect_answers: ["Le détroit de Foveaux", "Le détroit de Bass", "Le détroit de Torres"],
    contexte: "Ce détroit est connu pour être l'une des zones maritimes les plus imprévisibles et dangereuses au monde."
  },
  {
    content: "Quelle mer tropicale est située entre l'Australie, la Nouvelle-Guinée et les Îles Salomon ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Mer de Corail",
    incorrect_answers: ["La Mer d'Arafura", "La Mer de Tasman", "La Mer de Banda"],
    contexte: "La mer de Corail abrite la Grande Barrière de Corail et a été le théâtre d'une bataille navale cruciale pendant la Seconde Guerre mondiale."
  },
  {
    content: "Les Bungle Bungle Range sont des formations de grès en forme de ruches, situées dans quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Vanuatu"],
    contexte: "Situées dans le parc national de Purnululu, ces formations uniques sont caractérisées par leurs bandes alternées orange et noires."
  },
  {
    content: "Le fleuve Sepik, l'un des plus grands systèmes fluviaux vierges du monde, traverse quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["L'Indonésie", "L'Australie", "Les Îles Salomon"],
    contexte: "Le Sepik est célèbre pour ses cultures tribales uniques qui vivent le long de ses rives et pour son art sculptural distinctif."
  },
  {
    content: "Le 'Outback' est le nom donné à la vaste région aride et reculée qui couvre l'intérieur de quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "Toutes les îles du Pacifique"],
    contexte: "L'Outback est un paysage emblématique de l'Australie, caractérisé par de vastes étendues, des températures extrêmes et une faible population."
  },
  {
    content: "La 'Ceinture de feu du Pacifique', une zone de forte activité volcanique et sismique, inclut de nombreux pays d'Océanie. Lequel est particulièrement connu pour ses volcans actifs ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["L'Australie", "Les Îles Cook", "Samoa"],
    contexte: "Des pays comme la PNG, Vanuatu et les Tonga sont situés directement sur la Ceinture de feu, ce qui explique leurs volcans actifs, comme le Yasur au Vanuatu."
  },
  {
    content: "Le lac Taupo, le plus grand lac de Nouvelle-Zélande, est en fait...",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La caldeira d'un supervolcan",
    incorrect_answers: ["Un fjord rempli d'eau douce", "Un lac salé", "Un lac artificiel pour l'hydroélectricité"],
    contexte: "Le lac s'est formé suite à une éruption volcanique cataclysmique il y a environ 26 500 ans, l'une des plus puissantes de l'histoire de la Terre."
  },
  {
    content: "Quel détroit sépare l'île de Nouvelle-Guinée de la pointe nord de l'Australie ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Le détroit de Torres",
    incorrect_answers: ["Le détroit de Bass", "Le détroit de Cook", "La mer d'Arafura"],
    contexte: "Ce détroit peu profond est parsemé de centaines d'îles, habitées par les insulaires du détroit de Torres, un peuple indigène distinct."
  },
  {
    content: "Quelle est la particularité géologique de l'île de la Nouvelle-Zélande ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Elle est située à la jonction de deux plaques tectoniques",
    incorrect_answers: ["C'est un continent entièrement submergé", "Elle n'a aucune activité volcanique", "C'est la plus grande île corallienne"],
    contexte: "La collision des plaques pacifique et australo-indienne est à l'origine des Alpes du Sud, de l'activité volcanique et des fréquents tremblements de terre."
  },
  {
    content: "Le 'Grand Désert de Sable' et le 'Grand Désert de Victoria' sont deux des plus grands déserts de quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["L'Arabie Saoudite", "La Chine", "Les États-Unis"],
    contexte: "L'Australie est le continent habité le plus sec, avec une grande partie de son intérieur occupée par des déserts."
  },
  {
    content: "La Fosse des Mariannes, le point le plus profond des océans, se trouve dans quelle sous-région d'Océanie ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Micronésie",
    incorrect_answers: ["La Polynésie", "La Mélanésie", "L'Australasie"],
    contexte: "Située à l'est des Philippines, la fosse atteint une profondeur de près de 11 000 mètres au Challenger Deep."
  },
  {
    content: "Qu'est-ce que le 'Triangle de Corail' ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'épicentre mondial de la biodiversité marine",
    incorrect_answers: ["Une formation de trois atolls", "Une zone de navigation dangereuse", "Une chaîne de volcans sous-marins"],
    contexte: "Cette zone maritime, qui inclut la Papouasie-Nouvelle-Guinée et les Îles Salomon, abrite la plus grande diversité d'espèces de coraux au monde."
  },
  {
    content: "L'île Fraser, la plus grande île de sable du monde, se trouve au large de la côte de quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "L'Indonésie", "Les Philippines"],
    contexte: "Cette île unique est la seule au monde où une forêt tropicale pousse sur des dunes de sable, grâce à des champignons mycorhiziens."
  },
  {
    content: "La plaine de Canterbury est la plus grande étendue de terres agricoles plates de quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["L'Australie", "La Tasmanie", "La Papouasie-Nouvelle-Guinée"],
    contexte: "Située sur l'Île du Sud, cette plaine est une région vitale pour l'agriculture et l'élevage néo-zélandais."
  },
  {
    content: "La 'Wave Rock' est une formation rocheuse naturelle qui ressemble à une vague océanique géante. Dans quel pays se trouve-t-elle ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["Les États-Unis", "La Nouvelle-Zélande", "L'Afrique du Sud"],
    contexte: "Située en Australie-Occidentale, cette formation de granit est le résultat de millions d'années d'érosion par le vent et l'eau."
  },
  {
    content: "Quel est le plus grand lagon du monde, entourant une île riche en nickel ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Le lagon de Nouvelle-Calédonie",
    incorrect_answers: ["Le lagon de Bora Bora", "L'atoll de Kwajalein", "Le lagon de Marovo"],
    contexte: "Ce lagon et ses récifs-barrières sont inscrits au patrimoine mondial de l'UNESCO pour leur biodiversité exceptionnelle."
  },
  {
    content: "Le mont Erebus, volcan actif le plus austral, est situé sur l'Antarctique mais est administré par quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["L'Australie", "Le Chili", "Le Royaume-Uni"],
    contexte: "Il est situé dans la Dépendance de Ross, une région de l'Antarctique revendiquée par la Nouvelle-Zélande."
  },
  {
    content: "La 'plaque australienne' est une plaque tectonique majeure qui comprend le continent australien et quel océan ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'Océan Indien",
    incorrect_answers: ["L'Océan Pacifique", "L'Océan Atlantique", "L'Océan Austral"],
    contexte: "La fusion de la plaque indienne et de la plaque australienne forme la plaque indo-australienne, qui entre en collision avec la plaque eurasienne."
  },
  {
    content: "Le détroit de Foveaux sépare l'Île du Sud de la Nouvelle-Zélande de quelle autre île plus petite ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'île Stewart (Rakiura)",
    incorrect_answers: ["Les îles Chatham", "L'île d'Urville", "L'île de la Grande Barrière"],
    contexte: "Ce détroit est connu pour ses eaux froides et agitées et pour être le centre de l'ostréiculture de la célèbre huître de Bluff."
  },
  {
    content: "Qu'est-ce que le 'Continent Perdu' de Zélandia ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Un microcontinent presque entièrement submergé",
    incorrect_answers: ["Une ancienne île volcanique", "Un mythe aborigène", "Une grande péninsule de l'Antarctique"],
    contexte: "Les seules parties émergées de Zélandia sont la Nouvelle-Zélande et la Nouvelle-Calédonie. Le reste est sous l'océan Pacifique."
  },
  {
    content: "Le Mauna Kea à Hawaï, bien que son sommet soit à 4 207 m, est parfois considéré comme la plus haute montagne du monde. Pourquoi ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Sa base se trouve au fond de l'océan",
    incorrect_answers: ["Il continue de grandir rapidement", "C'est un supervolcan", "Il est le plus proche de la lune"],
    contexte: "Mesurée depuis sa base sur le plancher océanique, sa hauteur totale dépasse 10 000 mètres, ce qui est plus élevé que le mont Everest."
  },
  {
    content: "La 'convergence subtropicale' est une zone océanique importante où les eaux froides du sud rencontrent les eaux chaudes du nord. Elle passe près de quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["La Papouasie-Nouvelle-Guinée", "L'Australie", "Fidji"],
    contexte: "Cette zone de convergence est une frontière marine qui influence les courants, le climat et la distribution de la vie marine."
  },
  {
    content: "La région de Kimberley en Australie-Occidentale est connue pour quel phénomène de marée extrême ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Les 'Horizontal Falls' (Chutes Horizontales)",
    incorrect_answers: ["Des tsunamis fréquents", "L'absence totale de marées", "Des tourbillons géants"],
    contexte: "L'eau de la marée, pouvant atteindre 11 mètres, est forcée de passer à travers deux gorges étroites, créant une cascade couchée sur le côté."
  },
  {
    content: "Le lac Wakatipu en Nouvelle-Zélande est célèbre pour sa forme de 'S' et pour un phénomène de balancement de l'eau. Comment s'appelle ce phénomène ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Une seiche (ou 'pouls' du lac)",
    incorrect_answers: ["Une marée", "Un courant de fond", "Une éruption limnique"],
    contexte: "Le niveau de l'eau du lac monte et descend d'environ 20 cm toutes les 27 minutes. La légende maorie l'attribue au battement de cœur d'un géant."
  },
  {
    content: "Le 'Great Artesian Basin' est l'une des plus grandes réserves d'eau souterraine au monde. Sous quelle partie de l'Océanie se trouve-t-il ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "L'est de l'Australie",
    incorrect_answers: ["L'Île du Nord de la Nouvelle-Zélande", "La Nouvelle-Guinée", "Le désert de Gibson"],
    contexte: "Cette nappe aquifère est la seule source d'eau fiable pour une grande partie de l'Outback australien, soutenant l'élevage et les communautés."
  },
  {
    content: "La 'fosse de Tonga', l'une des plus profondes du monde, est située à l'est de quelle nation insulaire ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "Tonga",
    incorrect_answers: ["Fidji", "Samoa", "Nouvelle-Zélande"],
    contexte: "C'est une zone de subduction où la plaque Pacifique plonge sous la plaque australienne, avec le mouvement de plaque le plus rapide sur Terre."
  },
  {
    content: "Le fleuve Waikato est le plus long de quel pays ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["L'Australie", "La Tasmanie", "La Papouasie-Nouvelle-Guinée"],
    contexte: "Il prend sa source sur les pentes du mont Ruapehu et traverse l'Île du Nord, jouant un rôle crucial dans la production d'hydroélectricité."
  },

  # ASIE - RELIEFS, FLEUVES ET OCEANS via GEMINI 2.5 Pro (NON VERIFIEES)

  {
    content: "Quelle est la plus haute chaîne de montagnes du monde, abritant le mont Everest ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "L'Himalaya",
    incorrect_answers: ["Les Andes", "Les Alpes", "L'Oural"],
    contexte: "L'Himalaya, 'demeure des neiges' en sanskrit, s'étend sur plusieurs pays d'Asie et contient les plus hauts sommets de la planète."
  },
  {
    content: "Quel est le plus haut sommet du monde, situé dans la chaîne de l'Himalaya ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Mont Everest",
    incorrect_answers: ["Le K2", "Le Mont Blanc", "Le Kilimandjaro"],
    contexte: "Culminant à 8 848 mètres, le mont Everest se trouve à la frontière entre le Népal et la Chine (Tibet)."
  },
  {
    content: "Quel est le plus long fleuve d'Asie, s'écoulant entièrement en Chine ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Yangtsé (Chang Jiang)",
    incorrect_answers: ["Le Fleuve Jaune (Huang He)", "Le Mékong", "Le Gange"],
    contexte: "Le Yangtsé est le troisième plus long fleuve du monde. Le barrage des Trois-Gorges y est construit."
  },
  {
    content: "Quel est le plus grand océan du monde, qui borde la côte est de l'Asie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "L'Océan Pacifique",
    incorrect_answers: ["L'Océan Atlantique", "L'Océan Indien", "L'Océan Arctique"],
    contexte: "L'Océan Pacifique couvre environ un tiers de la surface de la Terre et est bordé par de nombreux pays asiatiques."
  },
  {
    content: "Quel grand désert froid s'étend sur le nord de la Chine et le sud de la Mongolie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le désert de Gobi",
    incorrect_answers: ["Le Sahara", "Le désert d'Atacama", "Le désert d'Arabie"],
    contexte: "Le désert de Gobi est célèbre pour ses dunes, ses montagnes et ses fossiles de dinosaures."
  },
  {
    content: "Quel océan borde la côte sud de l'Asie, notamment l'Inde et l'Indonésie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "L'Océan Indien",
    incorrect_answers: ["L'Océan Pacifique", "L'Océan Atlantique", "L'Océan Austral"],
    contexte: "C'est le troisième plus grand océan du monde, connu pour ses moussons qui influencent fortement le climat de l'Asie du Sud."
  },
  {
    content: "Le mont Fuji est un volcan emblématique et le point culminant de quel pays ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Japon",
    incorrect_answers: ["La Corée du Sud", "Les Philippines", "La Chine"],
    contexte: "Considéré comme une montagne sacrée, le mont Fuji est un stratovolcan actif mais dont la dernière éruption remonte à 1707."
  },
  {
    content: "Quel fleuve sacré pour les hindous traverse le nord de l'Inde ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Gange",
    incorrect_answers: ["L'Indus", "Le Brahmapoutre", "Le Yangtsé"],
    contexte: "Le Gange est une source de vie pour des centaines de millions de personnes et un lieu de pèlerinage majeur."
  },
  {
    content: "Quelle chaîne de montagnes est traditionnellement considérée comme la frontière entre l'Europe et l'Asie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "L'Oural",
    incorrect_answers: ["Le Caucase", "L'Himalaya", "Les Alpes"],
    contexte: "L'Oural s'étend du nord au sud de la Russie occidentale et est riche en ressources minérales."
  },
  {
    content: "Quelle mer intérieure est située entre l'Europe et l'Asie, au nord de la Turquie ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "La Mer Noire",
    incorrect_answers: ["La Mer Méditerranée", "La Mer Caspienne", "La Mer d'Aral"],
    contexte: "La Mer Noire est reliée à la Méditerranée par le détroit du Bosphore, ce qui en fait une voie navigable stratégique."
  },
  {
    content: "Quel golfe sépare l'Iran de la péninsule arabique ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Golfe Persique",
    incorrect_answers: ["Le Golfe d'Aden", "Le Golfe d'Oman", "La Mer Rouge"],
    contexte: "Le Golfe Persique est une région d'une importance géopolitique capitale en raison de ses immenses réserves de pétrole et de gaz."
  },
  {
    content: "Quel archipel constitue la nation insulaire la plus grande du monde, située en Asie du Sud-Est ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "L'Indonésie",
    incorrect_answers: ["Les Philippines", "Le Japon", "Les Maldives"],
    contexte: "L'Indonésie est composée de plus de 17 000 îles, dont Sumatra, Java et Bornéo."
  },
  {
    content: "Le Fleuve Jaune (Huang He) est le deuxième plus long fleuve de quel pays ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "La Chine",
    incorrect_answers: ["L'Inde", "La Russie", "Le Vietnam"],
    contexte: "Surnommé le 'berceau de la civilisation chinoise', il est aussi appelé le 'chagrin de la Chine' en raison de ses inondations dévastatrices."
  },
  {
    content: "Quelle est la plus grande mer intérieure du monde, bordée par l'Asie et l'Europe ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "La Mer Caspienne",
    incorrect_answers: ["La Mer Noire", "La Mer d'Aral", "Le Lac Baïkal"],
    contexte: "En réalité un lac salé, la mer Caspienne est riche en ressources énergétiques et est bordée par cinq pays."
  },
  {
    content: "La Sibérie est une immense région qui couvre la majeure partie de la partie asiatique de quel pays ?",
    difficulty: "facile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "La Russie",
    incorrect_answers: ["La Chine", "La Mongolie", "Le Kazakhstan"],
    contexte: "La Sibérie s'étend de l'Oural à l'océan Pacifique et est connue pour ses hivers extrêmes et ses vastes ressources naturelles."
  },
  {
    content: "Quel fleuve majeur d'Asie du Sud-Est traverse la Chine, le Myanmar, le Laos, la Thaïlande, le Cambodge et le Vietnam ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Mékong",
    incorrect_answers: ["Le Fleuve Rouge", "L'Irrawaddy", "Le Salouen"],
    contexte: "Le Mékong est essentiel à la vie de millions de personnes, soutenant la pêche et la riziculture dans son delta fertile."
  },
  {
    content: "Le lac Baïkal, le plus ancien et le plus profond lac du monde, se trouve dans quelle région ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "La Sibérie (Russie)",
    incorrect_answers: ["La Mongolie", "Le Kazakhstan", "La Chine"],
    contexte: "Le lac Baïkal contient environ 20 % de l'eau douce de surface non gelée du monde et abrite des milliers d'espèces endémiques."
  },
  {
    content: "Quel est le point le plus bas de la surface terrestre émergée, situé à la frontière entre Israël et la Jordanie ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Les rives de la Mer Morte",
    incorrect_answers: ["La Vallée de la Mort", "La dépression de Danakil", "La dépression de Tourfan"],
    contexte: "La Mer Morte est un lac hypersalin dont les rives se situent à plus de 400 mètres sous le niveau de la mer."
  },
  {
    content: "Quelle chaîne de montagnes sépare le sous-continent indien du plateau tibétain ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "L'Himalaya",
    incorrect_answers: ["L'Hindou Kouch", "Le Karakoram", "Le Tian Shan"],
    contexte: "Formée par la collision des plaques tectoniques indienne et eurasienne, cette chaîne continue de s'élever aujourd'hui."
  },
  {
    content: "Le détroit de Malacca, l'une des voies maritimes les plus importantes au monde, sépare la péninsule malaise de quelle île ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Sumatra (Indonésie)",
    incorrect_answers: ["Bornéo", "Java", "Ceylan"],
    contexte: "Ce détroit est un point de passage stratégique pour le commerce entre l'océan Indien et l'océan Pacifique."
  },
  {
    content: "Le plateau du Deccan est une grande formation géologique qui couvre la majeure partie de quelle partie de l'Inde ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le sud de l'Inde",
    incorrect_answers: ["Le nord de l'Inde", "L'est de l'Inde", "L'ouest de l'Inde"],
    contexte: "Ce plateau est d'origine volcanique et est flanqué par les chaînes de montagnes des Ghâts occidentaux et orientaux."
  },
  {
    content: "Le fleuve Indus, qui a donné son nom à l'Inde, prend sa source au Tibet et traverse principalement quel pays ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Pakistan",
    incorrect_answers: ["L'Inde", "L'Afghanistan", "Le Népal"],
    contexte: "Le bassin de l'Indus a été le berceau de l'une des plus anciennes civilisations du monde."
  },
  {
    content: "Quel désert, connu pour ses 'mers de sable' et ses conditions extrêmes, couvre une grande partie du sud de la péninsule arabique ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Rub al-Khali (le 'Quart Vide')",
    incorrect_answers: ["Le désert de Syrie", "Le désert du Néfoud", "Le désert du Sinaï"],
    contexte: "C'est le plus grand désert de sable continu au monde, une vaste étendue inhabitée et inexplorée."
  },
  {
    content: "Le K2, le deuxième plus haut sommet du monde, est situé dans quelle chaîne de montagnes ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Karakoram",
    incorrect_answers: ["L'Himalaya", "L'Hindou Kouch", "Le Pamir"],
    contexte: "Situé à la frontière entre le Pakistan et la Chine, le K2 est considéré comme beaucoup plus difficile à gravir que l'Everest."
  },
  {
    content: "La mer d'Aral, autrefois le quatrième plus grand lac du monde, a presque disparu à cause de quoi ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le détournement des fleuves pour l'irrigation",
    incorrect_answers: ["Le changement climatique", "L'évaporation naturelle", "Un tremblement de terre"],
    contexte: "Le détournement des fleuves Amou-Daria et Syr-Daria par l'Union Soviétique pour la culture du coton a provoqué une catastrophe écologique majeure."
  },
  {
    content: "Le Tigre et l'Euphrate sont deux fleuves qui ont défini une région historique. Laquelle ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "La Mésopotamie",
    incorrect_answers: ["L'Anatolie", "Le Levant", "La Perse"],
    contexte: "Cette région, principalement en Irak moderne, est considérée comme le 'berceau de la civilisation' où l'écriture et l'agriculture ont émergé."
  },
  {
    content: "Quel est le plus grand plateau du monde en termes de superficie et d'altitude ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le plateau Tibétain",
    incorrect_answers: ["Le plateau du Deccan", "Le plateau de Sibérie centrale", "Le plateau d'Anatolie"],
    contexte: "Surnommé le 'Toit du monde', il est si vaste et élevé qu'il influence le climat de toute l'Asie."
  },
  {
    content: "Le détroit de Béring sépare la Sibérie (Asie) de quelle région (Amérique) ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "L'Alaska",
    incorrect_answers: ["Le Canada", "Le Groenland", "La Californie"],
    contexte: "Pendant les périodes glaciaires, un pont terrestre à cet endroit a permis aux premiers humains de migrer vers les Amériques."
  },
  {
    content: "Le lac Tonlé Sap au Cambodge est unique car...",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le sens de son courant s'inverse chaque année",
    incorrect_answers: ["Il est d'eau salée", "Il est le plus profond du monde", "Il gèle en hiver"],
    contexte: "Pendant la mousson, le fleuve Mékong est si puissant qu'il force la rivière Tonlé Sap à s'inverser, remplissant le lac."
  },
  {
    content: "La Fosse des Mariannes, le point le plus profond des océans, est située à l'est de quel archipel ?",
    difficulty: "intermédiaire",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Les Philippines",
    incorrect_answers: ["Le Japon", "L'Indonésie", "Taïwan"],
    contexte: "Le point le plus bas, le Challenger Deep, atteint une profondeur de près de 11 000 mètres."
  },
  {
    content: "Le désert du Taklamakan, connu pour ses conditions extrêmes, se trouve dans quelle région autonome de Chine ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Xinjiang",
    incorrect_answers: ["Le Tibet", "La Mongolie-Intérieure", "Le Qinghai"],
    contexte: "Son nom est souvent interprété comme 'celui qui y entre n'en sort jamais'. La Route de la Soie le contournait par le nord et le sud."
  },
  {
    content: "Quel fleuve, le plus long de Sibérie, se jette dans l'océan Arctique et forme un immense delta ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "La Léna",
    incorrect_answers: ["L'Ob", "L'Ienisseï", "L'Amour"],
    contexte: "Le delta de la Léna est une vaste toundra gelée pendant la majeure partie de l'année, mais abrite une faune importante en été."
  },
  {
    content: "Le 'Nœud du Pamir' est un carrefour orographique où plusieurs grandes chaînes de montagnes se rencontrent. Laquelle n'en fait PAS partie ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "L'Oural",
    incorrect_answers: ["L'Himalaya", "Le Tian Shan", "L'Hindou Kouch"],
    contexte: "Situé principalement au Tadjikistan, ce 'toit du monde' est l'une des régions montagneuses les plus élevées et les plus inaccessibles."
  },
  {
    content: "Le fleuve Brahmapoutre prend sa source au Tibet, traverse l'Inde, puis entre dans quel pays où il rejoint le Gange ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Bangladesh",
    incorrect_answers: ["Le Myanmar", "Le Népal", "Le Bhoutan"],
    contexte: "Le delta commun du Gange et du Brahmapoutre est le plus grand delta du monde."
  },
  {
    content: "La mer d'Andaman est une mer marginale de l'océan Indien séparée du golfe de Thaïlande par quelle péninsule ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "La péninsule malaise",
    incorrect_answers: ["La péninsule indochinoise", "La péninsule coréenne", "La péninsule anatolienne"],
    contexte: "Cette mer est connue pour ses îles touristiques comme Phuket et pour avoir été au centre du tsunami de 2004."
  },
  {
    content: "Quel est le plus grand volcan de boue du monde, situé sur l'île de Java en Indonésie ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Lusi (Sidoarjo)",
    incorrect_answers: ["Le Krakatoa", "Le Merapi", "Le Tambora"],
    contexte: "En éruption depuis 2006, Lusi a englouti des dizaines de villages. Son déclenchement, naturel ou dû à un forage gazier, est controversé."
  },
  {
    content: "Les Ghâts occidentaux sont une chaîne de montagnes qui longe quelle côte de l'Inde ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "La côte ouest",
    incorrect_answers: ["La côte est", "La frontière nord", "La pointe sud"],
    contexte: "Cette chaîne est un point chaud de la biodiversité mondiale, créant une barrière qui bloque les pluies de la mousson."
  },
  {
    content: "Le détroit d'Ormuz, un point de passage stratégique pour le pétrole, relie le golfe Persique à quel golfe ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Golfe d'Oman",
    incorrect_answers: ["Le Golfe d'Aden", "Le Golfe de Suez", "Le Golfe d'Aqaba"],
    contexte: "Environ un tiers du pétrole transporté par voie maritime dans le monde transite par ce détroit étroit et contesté."
  },
  {
    content: "Le lac Issyk-Koul est un grand lac endoréique légèrement salé situé dans les montagnes de quel pays d'Asie centrale ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Le Kirghizistan",
    incorrect_answers: ["Le Tadjikistan", "Le Kazakhstan", "L'Ouzbékistan"],
    contexte: "Bien qu'entouré de sommets enneigés, ce 'lac chaud' ne gèle jamais en hiver en raison de sa légère salinité et de son activité géothermique."
  },
  {
    content: "La 'Ligne Wallace' est une ligne de division faunique qui sépare les écozones asiatique et australasienne. Elle passe entre quelles îles indonésiennes ?",
    difficulty: "difficile",
    category: "Hydrographie et reliefs",
    region: "Asie",
    correct_answer: "Bali et Lombok",
    incorrect_answers: ["Java et Sumatra", "Bornéo et Célèbes", "Sumatra et Java"],
    contexte: "Cette ligne correspond à un chenal en eau profonde qui a agi comme une barrière pour les espèces, même lorsque le niveau de la mer était plus bas."
  },

  # Régions et villes du monde

  # Océanie - Régions et villes du monde via GEMINI 2.5 Pro (NON VERIFIEES)

  {
    content: "Quelle est la capitale de l'Australie ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Canberra",
    incorrect_answers: ["Sydney", "Melbourne", "Brisbane"],
    contexte: "Bien que Sydney soit la plus grande ville, Canberra a été choisie comme capitale en 1908 en tant que compromis entre les deux villes rivales."
  },
  {
    content: "Quelle est la plus grande ville d'Australie, célèbre pour son opéra et son pont ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Sydney",
    incorrect_answers: ["Melbourne", "Canberra", "Perth"],
    contexte: "Sydney est la capitale de l'État de la Nouvelle-Galles du Sud et le principal centre économique et financier de l'Australie."
  },
  {
    content: "Quelle est la capitale de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Wellington",
    incorrect_answers: ["Auckland", "Christchurch", "Queenstown"],
    contexte: "Wellington est la capitale la plus méridionale du monde. Elle est connue pour sa scène culturelle dynamique et son port."
  },
  {
    content: "Quelle est la plus grande ville de Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Auckland",
    incorrect_answers: ["Wellington", "Christchurch", "Hamilton"],
    contexte: "Située sur l'Île du Nord, Auckland est le principal centre économique et démographique du pays."
  },
  {
    content: "Quelle est la capitale des Fidji ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Suva",
    incorrect_answers: ["Nadi", "Lautoka", "Apia"],
    contexte: "Suva, située sur l'île de Viti Levu, est le centre politique et commercial des Fidji et un port important du Pacifique Sud."
  },
  {
    content: "L'Océanie est traditionnellement divisée en trois grandes régions. Laquelle n'en fait PAS partie ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "L'Indonésie",
    incorrect_answers: ["La Polynésie", "La Mélanésie", "La Micronésie"],
    contexte: "La Polynésie, la Mélanésie et la Micronésie sont les trois grandes subdivisions culturelles et géographiques de l'Océanie."
  },
  {
    content: "Dans quel pays se trouve la ville de Melbourne, connue pour ses tramways et sa scène artistique ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée", "L'Afrique du Sud"],
    contexte: "Melbourne est la capitale de l'État de Victoria et a été la capitale de l'Australie de 1901 à 1927."
  },
  {
    content: "Quelle est la capitale de la Papouasie-Nouvelle-Guinée ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Port Moresby",
    incorrect_answers: ["Lae", "Honiara", "Jayapura"],
    contexte: "Port Moresby est la plus grande ville du pays et son principal port, situé sur la côte sud de l'île de Nouvelle-Guinée."
  },
  {
    content: "La Polynésie française est un territoire d'outre-mer de quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "La France",
    incorrect_answers: ["Le Royaume-Uni", "Les États-Unis", "L'Espagne"],
    contexte: "Cet ensemble d'îles, dont Tahiti, est une collectivité d'outre-mer française avec une large autonomie."
  },
  {
    content: "Perth est une grande ville isolée située sur la côte ouest de quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "L'Afrique du Sud", "L'Indonésie"],
    contexte: "Perth est la capitale de l'Australie-Occidentale et est souvent considérée comme l'une des villes les plus isolées du monde."
  },
  {
    content: "Quelle est la plus grande ville de l'Île du Sud de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Christchurch",
    incorrect_answers: ["Dunedin", "Queenstown", "Wellington"],
    contexte: "Surnommée la 'Cité-Jardin', Christchurch est connue pour son patrimoine anglais et sa résilience après les séismes de 2010-2011."
  },
  {
    content: "Hawaï, un archipel célèbre, est un État de quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Les États-Unis",
    incorrect_answers: ["Le Japon", "Le Royaume-Uni", "L'Australie"],
    contexte: "Hawaï est le 50ème et dernier État à avoir rejoint les États-Unis en 1959. Sa capitale est Honolulu."
  },
  {
    content: "La Tasmanie est un État insulaire de quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "Le Royaume-Uni", "L'Indonésie"],
    contexte: "Située au sud du continent, la Tasmanie est connue pour ses vastes étendues sauvages et sa faune unique."
  },
  {
    content: "Dans quel pays se trouve Adélaïde, une ville connue pour ses festivals culturels et ses vignobles ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "L'Afrique du Sud", "Le Chili"],
    contexte: "Adélaïde est la capitale de l'Australie-Méridionale, une région viticole de renommée mondiale."
  },
  {
    content: "Quelle est la capitale du Samoa ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Apia",
    incorrect_answers: ["Suva", "Nuku'alofa", "Pago Pago"],
    contexte: "Apia est la seule ville du Samoa et son principal port, située sur l'île d'Upolu."
  },
  {
    content: "Quelle est la capitale du royaume des Tonga ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Nuku'alofa",
    incorrect_answers: ["Apia", "Suva", "Port-Vila"],
    contexte: "Nuku'alofa est située sur l'île de Tongatapu et abrite le palais royal de la seule monarchie de Polynésie."
  },
  {
    content: "Quelle est la capitale du Vanuatu ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Port-Vila",
    incorrect_answers: ["Luganville", "Honiara", "Nouméa"],
    contexte: "Port-Vila, sur l'île d'Éfaté, est le centre économique et commercial du Vanuatu."
  },
  {
    content: "Quelle est la capitale des Îles Salomon ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Honiara",
    incorrect_answers: ["Gizo", "Auki", "Port Moresby"],
    contexte: "Honiara, sur l'île de Guadalcanal, a été reconstruite après la Seconde Guerre mondiale, suite à de violentes batailles."
  },
  {
    content: "Nouméa est la capitale de quel territoire français ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "La Nouvelle-Calédonie",
    incorrect_answers: ["La Polynésie française", "Wallis-et-Futuna", "L'Île de la Réunion"],
    contexte: "Nouméa est une ville portuaire dynamique, connue pour son mélange de cultures kanake et française."
  },
  {
    content: "Papeete est la capitale de quel territoire français ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "La Polynésie française",
    incorrect_answers: ["La Nouvelle-Calédonie", "Wallis-et-Futuna", "Guam"],
    contexte: "Située sur l'île de Tahiti, Papeete est le centre gouvernemental, économique et touristique de la Polynésie française."
  },
  {
    content: "Quel État australien est une grande péninsule au nord-est du pays, abritant la Grande Barrière de Corail ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Le Queensland",
    incorrect_answers: ["Le Territoire du Nord", "L'Australie-Occidentale", "La Nouvelle-Galles du Sud"],
    contexte: "Le Queensland, dont la capitale est Brisbane, est surnommé le 'Sunshine State' (l'État ensoleillé)."
  },
  {
    content: "L'île de Guam, dans l'ouest du Pacifique, est un territoire de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Les États-Unis",
    incorrect_answers: ["Le Japon", "L'Australie", "Les Philippines"],
    contexte: "Guam est la plus grande île de Micronésie et abrite une importante base militaire américaine."
  },
  {
    content: "Quelle est la capitale de la République de Kiribati ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Tarawa-Sud",
    incorrect_answers: ["Bairiki", "Ambo", "Majuro"],
    contexte: "Tarawa-Sud est située sur un atoll et est l'une des capitales les plus densément peuplées au monde."
  },
  {
    content: "Dans quelle ville australienne se trouve la 'Gold Coast', une célèbre destination touristique pour ses plages et ses parcs à thème ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Le Queensland",
    incorrect_answers: ["La Nouvelle-Galles du Sud", "Victoria", "L'Australie-Occidentale"],
    contexte: "La Gold Coast est une ville côtière et une région au sud de Brisbane, dans le Queensland."
  },
  {
    content: "Pago Pago est la capitale de quel territoire américain en Polynésie ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Les Samoa américaines",
    incorrect_answers: ["Le Samoa", "Guam", "Les Îles Vierges américaines"],
    contexte: "Pago Pago est connue pour son port naturel spectaculaire, l'un des plus profonds du Pacifique Sud."
  },
  {
    content: "Quelle est la capitale de la République de Nauru, le plus petit État insulaire du monde ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Nauru n'a pas de capitale officielle",
    incorrect_answers: ["Yaren", "Aiwo", "Denigomodu"],
    contexte: "Le district de Yaren abrite la plupart des bâtiments gouvernementaux, mais il n'est pas désigné comme capitale officielle."
  },
  {
    content: "Queenstown, en Nouvelle-Zélande, est mondialement connue comme la capitale de quoi ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Des sports extrêmes et de l'aventure",
    incorrect_answers: ["De la finance", "De l'agriculture", "De la politique"],
    contexte: "Située sur les bords du lac Wakatipu, Queenstown est un haut lieu du saut à l'élastique, du ski et du VTT."
  },
  {
    content: "Quel est le nom de la région sauvage et aride qui couvre l'intérieur de l'Australie ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "L'Outback",
    incorrect_answers: ["Le Bush", "La Pampa", "La Savane"],
    contexte: "L'Outback australien est une vaste étendue peu peuplée, caractérisée par ses paysages désertiques et ses ranchs (stations)."
  },
  {
    content: "Quelle est la capitale des Îles Marshall ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Majuro",
    incorrect_answers: ["Ebeye", "Kwajalein", "Palikir"],
    contexte: "Majuro est un grand atoll corallien qui abrite plus de la moitié de la population du pays."
  },
  {
    content: "Palikir est la capitale de quel pays insulaire du Pacifique ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Les États fédérés de Micronésie",
    incorrect_answers: ["Les Îles Marshall", "Palaos", "Nauru"],
    contexte: "Palikir a été désignée capitale en 1989. Elle est située sur l'île de Pohnpei."
  },
  {
    content: "Quelle est la capitale de Tuvalu ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Funafuti",
    incorrect_answers: ["Vaiaku", "Fongafale", "Nukulaelae"],
    contexte: "Funafuti est un atoll. Les bâtiments administratifs se trouvent dans le village de Vaiaku sur l'îlot de Fongafale."
  },
  {
    content: "Quelle est la capitale de la République de Palaos ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Ngerulmud",
    incorrect_answers: ["Koror", "Melekeok", "Airai"],
    contexte: "Ngerulmud, dans l'État de Melekeok, est devenue la capitale en 2006, remplaçant Koror. C'est la capitale la moins peuplée du monde."
  },
  {
    content: "Mata-Utu est la capitale de quel territoire français ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Wallis-et-Futuna",
    incorrect_answers: ["La Nouvelle-Calédonie", "La Polynésie française", "Saint-Pierre-et-Miquelon"],
    contexte: "Mata-Utu est la capitale du district de Hahake et du royaume d'Uvea, située sur l'île de Wallis."
  },
  {
    content: "Le Territoire du Nord est une vaste région peu peuplée de quel pays ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "Le Canada", "La Papouasie-Nouvelle-Guinée"],
    contexte: "Sa capitale est Darwin. Le Territoire du Nord abrite des sites emblématiques comme Uluru et le parc national de Kakadu."
  },
  {
    content: "L'Île de Pâques (Rapa Nui), célèbre pour ses statues moai, est un territoire spécial de quel pays américain ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Le Chili",
    incorrect_answers: ["Les États-Unis", "Le Pérou", "L'Équateur"],
    contexte: "Bien que géographiquement en Polynésie, l'île a été annexée par le Chili en 1888."
  },
  {
    content: "Quel est le nom de la région qui comprend la Nouvelle-Zélande, la Nouvelle-Calédonie et la Nouvelle-Guinée, qui fait partie d'un continent largement submergé ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Zélandia",
    incorrect_answers: ["Gondwana", "Laurasia", "Pangée"],
    contexte: "Zélandia est un microcontinent dont 94% de la superficie est submergée sous l'océan Pacifique."
  },
  {
    content: "Quelle est la capitale de Niue, un État en libre association avec la Nouvelle-Zélande ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Alofi",
    incorrect_answers: ["Avatele", "Hakupu", "Avarua"],
    contexte: "Alofi est le centre administratif de cette petite nation insulaire, l'un des plus grands atolls surélevés du monde."
  },
  {
    content: "La région de Kimberley, connue pour ses paysages accidentés et ses peintures rupestres, se trouve dans quel État australien ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "L'Australie-Occidentale",
    incorrect_answers: ["Le Queensland", "Le Territoire du Nord", "L'Australie-Méridionale"],
    contexte: "Le Kimberley est l'une des régions les plus sauvages et les moins peuplées d'Australie."
  },
  {
    content: "Avarua est la capitale de quel État du Pacifique Sud ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Les Îles Cook",
    incorrect_answers: ["Niue", "Tuvalu", "Samoa"],
    contexte: "Avarua est située sur l'île de Rarotonga et constitue le principal centre commercial et touristique du pays."
  },
  {
    content: "Le 'Triangle polynésien' est une région du Pacifique dont les sommets sont Hawaï, l'Île de Pâques et quel autre pays ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["Fidji", "L'Australie", "Tahiti"],
    contexte: "Ce vaste triangle définit la zone habitée par les peuples polynésiens, partageant des langues et des cultures similaires."
  },
  {
    content: "Dans quel pays se trouve la ville de Dunedin, fondée par des colons écossais et connue pour son architecture victorienne ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["L'Écosse", "L'Australie", "Le Canada"],
    contexte: "Dunedin, sur l'Île du Sud, tire son nom du nom gaélique d'Édimbourg et abrite la plus ancienne université du pays."
  },
  {
    content: "L'île de Bougainville, qui a voté massivement pour son indépendance, fait actuellement partie de quel pays ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "La Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["Les Îles Salomon", "L'Australie", "L'Indonésie"],
    contexte: "Suite à un référendum en 2019, l'île est engagée dans un processus pour devenir une nation indépendante."
  },
  {
    content: "Saipan est la plus grande île et la capitale de quel territoire américain ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Les Îles Mariannes du Nord",
    incorrect_answers: ["Guam", "Les Samoa américaines", "Palaos"],
    contexte: "Ce commonwealth en union politique avec les États-Unis a été le théâtre d'une bataille majeure pendant la Seconde Guerre mondiale."
  },
  {
    content: "Quel territoire australien est constitué de deux groupes d'îles tropicales dans l'océan Indien, l'un portant le nom de Noël ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Océanie",
    correct_answer: "Les Territoires de l'Île Christmas et des Îles Cocos (Keeling)",
    incorrect_answers: ["Les Îles Ashmore et Cartier", "L'Île Norfolk", "Les Îles Heard et McDonald"],
    contexte: "Ces territoires sont administrés par l'Australie mais sont géographiquement plus proches de l'Asie."
  },

  # Amérique - Régions et villes du monde via GEMINI 2.5 Pro (NON VERIFIEES)

  {
    content: "Quelle est la capitale des États-Unis ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Washington, D.C.",
    incorrect_answers: ["New York", "Los Angeles", "Chicago"],
    contexte: "Washington, D.C. a été désignée comme capitale en 1790. 'D.C.' signifie 'District of Columbia'."
  },
  {
    content: "Quelle est la capitale du Canada ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Ottawa",
    incorrect_answers: ["Toronto", "Montréal", "Vancouver"],
    contexte: "Ottawa a été choisie comme capitale par la reine Victoria en 1857 en raison de sa position stratégique entre le Haut et le Bas-Canada."
  },
  {
    content: "Quelle est la plus grande ville du Brésil, connue pour être un centre financier majeur ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "São Paulo",
    incorrect_answers: ["Rio de Janeiro", "Brasilia", "Salvador"],
    contexte: "São Paulo est la ville la plus peuplée de l'hémisphère sud et un pôle économique majeur pour toute l'Amérique latine."
  },
  {
    content: "Quelle est la capitale du Mexique ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Mexico (Ciudad de México)",
    incorrect_answers: ["Guadalajara", "Cancún", "Monterrey"],
    contexte: "Construite sur les ruines de l'ancienne capitale aztèque Tenochtitlan, Mexico est l'une des plus grandes métropoles du monde."
  },
  {
    content: "Quelle est la capitale de l'Argentine, célèbre pour le tango ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Buenos Aires",
    incorrect_answers: ["Córdoba", "Rosario", "Mendoza"],
    contexte: "Buenos Aires est une ville portuaire animée, souvent surnommée le 'Paris de l'Amérique du Sud' pour son architecture."
  },
  {
    content: "La ville de New York se trouve dans quel État américain ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "New York",
    incorrect_answers: ["New Jersey", "Californie", "Washington"],
    contexte: "La ville de New York n'est pas la capitale de l'État de New York ; la capitale est Albany."
  },
  {
    content: "Quelle est la capitale du Pérou ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Lima",
    incorrect_answers: ["Cusco", "Arequipa", "Machu Picchu"],
    contexte: "Fondée par Francisco Pizarro en 1535, Lima, la 'Cité des Rois', était la capitale de la vice-royauté du Pérou."
  },
  {
    content: "Dans quel pays se trouve la ville de Rio de Janeiro, célèbre pour son carnaval et le Christ Rédempteur ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["L'Argentine", "Le Portugal", "La Colombie"],
    contexte: "Rio de Janeiro a été la capitale du Brésil jusqu'en 1960, date à laquelle elle a été remplacée par Brasilia."
  },
  {
    content: "La province du Québec, majoritairement francophone, se trouve dans quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["La France", "Les États-Unis", "La Belgique"],
    contexte: "Le Québec est la plus grande province du Canada en superficie et la deuxième en population, avec Montréal comme métropole."
  },
  {
    content: "Quelle est la capitale de la Colombie ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Bogota",
    incorrect_answers: ["Medellín", "Cali", "Carthagène"],
    contexte: "Située à plus de 2 600 mètres d'altitude dans les Andes, Bogota est l'une des capitales les plus élevées du monde."
  },
  {
    content: "Quelle est la capitale de Cuba ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "La Havane",
    incorrect_answers: ["Santiago de Cuba", "Varadero", "Trinidad"],
    contexte: "La Havane est célèbre pour son architecture coloniale espagnole, ses vieilles voitures américaines et sa culture musicale."
  },
  {
    content: "La Californie (California) est un État situé sur quelle côte des États-Unis ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "La côte ouest",
    incorrect_answers: ["La côte est", "La côte du Golfe du Mexique", "La frontière nord"],
    contexte: "Avec des villes comme Los Angeles et San Francisco, la Californie est l'État le plus peuplé des États-Unis."
  },
  {
    content: "Quelle est la capitale du Chili ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Santiago",
    incorrect_answers: ["Valparaíso", "Concepción", "Antofagasta"],
    contexte: "Santiago est située dans une vallée entourée par la Cordillère des Andes et la Cordillère de la Côte."
  },
  {
    content: "Toronto est la plus grande ville de quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Les États-Unis", "Le Royaume-Uni", "L'Australie"],
    contexte: "Toronto, capitale de la province de l'Ontario, est le centre financier du Canada et l'une des villes les plus multiculturelles du monde."
  },
  {
    content: "La Patagonie est une région naturelle spectaculaire partagée entre le Chili et quel autre pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "L'Argentine",
    incorrect_answers: ["Le Brésil", "Le Pérou", "L'Uruguay"],
    contexte: "La Patagonie est célèbre pour ses paysages de montagnes, de glaciers, de steppes et ses côtes sauvages."
  },
  {
    content: "Quelle ville canadienne, la plus grande de la Colombie-Britannique, est un port majeur sur la côte du Pacifique ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Vancouver",
    incorrect_answers: ["Victoria", "Calgary", "Edmonton"],
    contexte: "Vancouver est régulièrement classée parmi les villes les plus agréables à vivre au monde, mais ce n'est pas la capitale de sa province."
  },
  {
    content: "Quelle est la capitale administrative de la Bolivie, la plus haute du monde ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "La Paz",
    incorrect_answers: ["Sucre", "Santa Cruz de la Sierra", "Cochabamba"],
    contexte: "Bien que Sucre soit la capitale constitutionnelle, La Paz abrite le siège du gouvernement et est la capitale de facto."
  },
  {
    content: "Brasilia a été construite dans les années 1950 pour devenir la nouvelle capitale de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["L'Argentine", "Le Mexique", "Le Venezuela"],
    contexte: "Cette ville planifiée, célèbre pour son architecture moderniste signée Oscar Niemeyer, a remplacé Rio de Janeiro comme capitale en 1960."
  },
  {
    content: "Quelle est la capitale de la Jamaïque ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Kingston",
    incorrect_answers: ["Montego Bay", "Ocho Rios", "Negril"],
    contexte: "Kingston est le centre culturel et économique de l'île, célèbre pour être le berceau de la musique reggae."
  },
  {
    content: "La 'Nouvelle-Angleterre' (New England) est une région historique située dans quelle partie des États-Unis ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Nord-Est",
    incorrect_answers: ["Le Sud-Est", "Le Midwest", "La côte Ouest"],
    contexte: "Cette région comprend six États, dont le Massachusetts et le Vermont, et est connue pour ses paysages d'automne et son histoire coloniale."
  },
  {
    content: "Quelle est la capitale de l'Uruguay ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Montevideo",
    incorrect_answers: ["Punta del Este", "Colonia del Sacramento", "Salto"],
    contexte: "Située sur les rives du Río de la Plata, Montevideo abrite près de la moitié de la population du pays."
  },
  {
    content: "Quelle ville américaine est surnommée la 'Cité des Vents' (Windy City) ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Chicago",
    incorrect_answers: ["New York", "San Francisco", "Boston"],
    contexte: "Située sur les bords du lac Michigan, Chicago est la plus grande ville du Midwest et un important centre financier et culturel."
  },
  {
    content: "Quito, dont le centre historique est classé au patrimoine mondial de l'UNESCO, est la capitale de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "L'Équateur",
    incorrect_answers: ["La Colombie", "Le Pérou", "La Bolivie"],
    contexte: "Située à 2 850 mètres d'altitude, Quito est la deuxième capitale la plus haute du monde, après La Paz."
  },
  {
    content: "Quelle ville était la capitale de l'Empire Inca, située dans les Andes péruviennes ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Cusco",
    incorrect_answers: ["Lima", "Machu Picchu", "Arequipa"],
    contexte: "Cusco, ou 'le nombril du monde' en quechua, est aujourd'hui le point de départ pour visiter le Machu Picchu."
  },
  {
    content: "La péninsule du Yucatán, célèbre pour ses ruines mayas et ses cénotes, appartient principalement à quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Mexique",
    incorrect_answers: ["Le Guatemala", "Le Belize", "Le Honduras"],
    contexte: "Elle sépare le golfe du Mexique de la mer des Caraïbes et abrite des destinations touristiques comme Cancún et Tulum."
  },
  {
    content: "Quelle est la capitale du Venezuela ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Caracas",
    incorrect_answers: ["Maracaibo", "Valencia", "Mérida"],
    contexte: "Située dans une vallée près de la côte caraïbe, Caracas est le principal centre administratif, financier et commercial du pays."
  },
  {
    content: "San Juan est la capitale de quel territoire américain dans les Caraïbes ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Porto Rico",
    incorrect_answers: ["Cuba", "La République Dominicaine", "Les Îles Vierges américaines"],
    contexte: "Le Vieux San Juan est célèbre pour ses rues pavées et ses bâtiments colorés de l'époque coloniale espagnole."
  },
  {
    content: "La Terre de Feu (Tierra del Fuego) est un archipel à l'extrême sud du continent, partagé entre le Chili et quel autre pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "L'Argentine",
    incorrect_answers: ["L'Uruguay", "Le Brésil", "Le Paraguay"],
    contexte: "La ville d'Ushuaia, en Argentine, est souvent considérée comme la ville la plus australe du monde."
  },
  {
    content: "Quelle ville de Louisiane, aux États-Unis, est célèbre pour son quartier français et son festival de Mardi Gras ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "La Nouvelle-Orléans (New Orleans)",
    incorrect_answers: ["Bâton-Rouge", "Shreveport", "Lafayette"],
    contexte: "La Nouvelle-Orléans est le berceau du jazz et est connue pour sa culture et sa cuisine créoles uniques."
  },
  {
    content: "Asunción est la capitale de quel pays enclavé d'Amérique du Sud ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Paraguay",
    incorrect_answers: ["La Bolivie", "L'Uruguay", "L'Équateur"],
    contexte: "Située sur les rives du fleuve Paraguay, Asunción est l'une des plus anciennes villes d'Amérique du Sud."
  },
  {
    content: "Quelle est la capitale du Suriname ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Paramaribo",
    incorrect_answers: ["Georgetown", "Cayenne", "Belmopan"],
    contexte: "Le centre historique de Paramaribo est classé au patrimoine mondial de l'UNESCO pour son architecture coloniale hollandaise unique."
  },
  {
    content: "Quel est le nom du district fédéral qui abrite la capitale du Brésil, Brasilia ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Distrito Federal",
    incorrect_answers: ["L'État de Brasilia", "Le Territoire de la Capitale", "La Région Centrale"],
    contexte: "Comme Washington D.C. ou Mexico, la capitale brésilienne est située dans un district fédéral autonome."
  },
  {
    content: "Belmopan, l'une des plus petites capitales du monde, se trouve dans quel pays d'Amérique centrale ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Belize",
    incorrect_answers: ["Le Honduras", "Le Nicaragua", "Le Costa Rica"],
    contexte: "Belmopan est devenue la capitale après que l'ancienne capitale, Belize City, ait été dévastée par un ouragan en 1961."
  },
  {
    content: "Quelle ville n'est PAS une capitale d'État aux États-Unis ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Philadelphie",
    incorrect_answers: ["Sacramento (Californie)", "Albany (New York)", "Tallahassee (Floride)"],
    contexte: "Bien qu'elle ait été la première capitale des États-Unis, Philadelphie n'est pas la capitale de la Pennsylvanie (c'est Harrisburg)."
  },
  {
    content: "Quelle est la capitale de la Guyane, un département d'outre-mer français ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Cayenne",
    incorrect_answers: ["Kourou", "Saint-Laurent-du-Maroni", "Paramaribo"],
    contexte: "Située en Amérique du Sud, la Guyane fait partie intégrante de la France et de l'Union Européenne."
  },
  {
    content: "Tegucigalpa est la capitale de quel pays d'Amérique centrale ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Honduras",
    incorrect_answers: ["Le Salvador", "Le Guatemala", "Le Nicaragua"],
    contexte: "Avec sa ville jumelle Comayagüela, elle forme le District Central, le centre politique et administratif du Honduras."
  },
  {
    content: "Quelle est la capitale la plus septentrionale des Amériques ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Nuuk (Groenland)",
    incorrect_answers: ["Reykjavik (Islande)", "Ottawa (Canada)", "Helsinki (Finlande)"],
    contexte: "Nuuk est la capitale du Groenland, un pays constitutif autonome du Royaume du Danemark, situé géographiquement en Amérique du Nord."
  },
  {
    content: "Le Groenland est un territoire autonome qui fait partie de quel royaume européen ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Danemark",
    incorrect_answers: ["Le Royaume-Uni", "La Norvège", "Les Pays-Bas"],
    contexte: "Bien que géographiquement nord-américain, le Groenland est politiquement et historiquement lié à l'Europe."
  },
  {
    content: "Quelle ville était la capitale du Brésil avant la construction de Brasilia ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Rio de Janeiro",
    incorrect_answers: ["Salvador", "São Paulo", "Recife"],
    contexte: "Rio de Janeiro a été la capitale pendant près de deux siècles. Avant elle, la première capitale coloniale était Salvador."
  },
  {
    content: "L'Amazonie, la plus grande forêt tropicale du monde, s'étend sur neuf pays, mais la majeure partie se trouve dans quel pays ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["Le Pérou", "La Colombie", "Le Venezuela"],
    contexte: "Environ 60% de la forêt amazonienne est située à l'intérieur des frontières du Brésil."
  },

  # Afrique - Régions et villes du monde via GEMINI 2.5 Flash (NON VERIFIEES)

  {
    content: "Quelle est la capitale de l'Égypte, la plus grande ville du monde arabe ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Caire",
    incorrect_answers: ["Alexandrie", "Louxor", "Gizeh"],
    contexte: "Le Caire est une métropole tentaculaire située sur les rives du Nil, célèbre pour sa proximité avec les pyramides de Gizeh."
  },
  {
    content: "Quelle est la capitale du Kenya, connue pour son parc national unique en bordure de la ville ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Nairobi",
    incorrect_answers: ["Mombasa", "Kisumu", "Nakuru"],
    contexte: "Nairobi est un important hub régional pour le commerce et la diplomatie. Son parc national abrite des lions et des girafes avec des gratte-ciel en arrière-plan."
  },
  {
    content: "Quelle est la capitale de l'Afrique du Sud ? (Indice : il y en a trois)",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Pretoria (administrative), Le Cap (législative), Bloemfontein (judiciaire)",
    incorrect_answers: ["Johannesburg", "Durban", "Port Elizabeth"],
    contexte: "L'Afrique du Sud a une répartition unique des pouvoirs, avec une capitale pour chaque branche du gouvernement."
  },
  {
    content: "Quelle est la capitale du Maroc ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Rabat",
    incorrect_answers: ["Casablanca", "Marrakech", "Fès"],
    contexte: "Bien que Casablanca soit la plus grande ville, Rabat est le centre politique et administratif du royaume."
  },
  {
    content: "Lagos était l'ancienne capitale de quel pays très peuplé ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Nigeria",
    incorrect_answers: ["Le Ghana", "Le Cameroun", "Le Bénin"],
    contexte: "Lagos reste la plus grande ville et le principal centre économique du Nigeria, bien que la capitale soit maintenant Abuja."
  },
  {
    content: "Quelle est la capitale de l'Éthiopie et le siège de l'Union Africaine ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Addis-Abeba",
    incorrect_answers: ["Gondar", "Axoum", "Lalibela"],
    contexte: "Surnommée la 'capitale politique de l'Afrique', Addis-Abeba est un centre diplomatique majeur sur le continent."
  },
  {
    content: "Dans quel pays se trouve la ville de Marrakech, célèbre pour sa place Jemaa el-Fna ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Maroc",
    incorrect_answers: ["La Tunisie", "L'Algérie", "L'Égypte"],
    contexte: "Marrakech est une destination touristique majeure, connue pour ses souks, ses palais et ses riads."
  },
  {
    content: "Le Maghreb est une région qui comprend principalement le Maroc, l'Algérie et quel autre pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "La Tunisie",
    incorrect_answers: ["La Libye", "L'Égypte", "Le Soudan"],
    contexte: "Le Maghreb, qui signifie 'le Couchant' en arabe, désigne la partie occidentale du monde arabe, en Afrique du Nord."
  },
  {
    content: "Dakar est la capitale et la plus grande ville de quel pays d'Afrique de l'Ouest ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Sénégal",
    incorrect_answers: ["Le Mali", "La Guinée", "La Gambie"],
    contexte: "Dakar est une ville portuaire située sur la presqu'île du Cap-Vert, le point le plus occidental du continent africain."
  },
  {
    content: "Le Sahel est une vaste région semi-aride qui borde le sud de quel grand désert ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Sahara",
    incorrect_answers: ["Le Kalahari", "Le Namib", "Le Karoo"],
    contexte: "Le Sahel s'étend d'est en ouest sur plusieurs pays et constitue une zone de transition entre le désert et la savane."
  },
  {
    content: "Quelle est la capitale du Ghana ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Accra",
    incorrect_answers: ["Kumasi", "Cape Coast", "Lomé"],
    contexte: "Accra est une ville côtière animée, le centre économique et administratif du Ghana."
  },
  {
    content: "Dans quel pays se trouve la ville du Cap (Cape Town), célèbre pour sa montagne de la Table ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "L'Afrique du Sud",
    incorrect_answers: ["La Namibie", "Le Botswana", "Le Zimbabwe"],
    contexte: "Le Cap est la capitale législative de l'Afrique du Sud et une destination touristique de renommée mondiale."
  },
  {
    content: "Quelle est la capitale de l'Algérie ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Alger",
    incorrect_answers: ["Oran", "Constantine", "Tunis"],
    contexte: "Alger, surnommée 'la Blanche', est connue pour sa casbah (vieille ville) classée au patrimoine mondial de l'UNESCO."
  },
  {
    content: "Quelle est la capitale de la République Démocratique du Congo (RDC) ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Kinshasa",
    incorrect_answers: ["Lubumbashi", "Goma", "Brazzaville"],
    contexte: "Kinshasa est l'une des plus grandes villes d'Afrique et fait face à Brazzaville, la capitale du Congo voisin, de l'autre côté du fleuve."
  },
  {
    content: "Quelle est la capitale de la Tunisie ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Tunis",
    incorrect_answers: ["Sousse", "Sfax", "Carthage"],
    contexte: "Tunis est située près du site antique de Carthage et sa médina est l'une des mieux préservées du monde arabe."
  },
  {
    content: "Abuja a remplacé quelle ville comme capitale du Nigeria en 1991 ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Lagos",
    incorrect_answers: ["Kano", "Ibadan", "Port Harcourt"],
    contexte: "Abuja est une ville planifiée, construite au centre du pays pour être plus neutre sur le plan ethnique et religieux."
  },
  {
    content: "Quelle est la capitale du Rwanda ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Kigali",
    incorrect_answers: ["Butare", "Gisenyi", "Bujumbura"],
    contexte: "Kigali est réputée pour sa propreté, sa sécurité et son développement rapide depuis le génocide de 1994."
  },
  {
    content: "Khartoum est la capitale de quel pays, située au confluent du Nil Blanc et du Nil Bleu ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Soudan",
    incorrect_answers: ["Le Soudan du Sud", "L'Égypte", "L'Éthiopie"],
    contexte: "Ce point de confluence, appelé 'al-Mogran', est l'endroit où le Nil proprement dit commence son long voyage vers la Méditerranée."
  },
  {
    content: "Quelle est la capitale de l'Ouganda ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Kampala",
    incorrect_answers: ["Entebbe", "Jinja", "Gulu"],
    contexte: "Kampala, surnommée la 'ville des sept collines', est le principal centre politique et commercial de l'Ouganda."
  },
  {
    content: "Quelle région de la Somalie s'est autoproclamée indépendante mais n'est pas reconnue internationalement ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Somaliland",
    incorrect_answers: ["Le Puntland", "Le Jubaland", "Le Galmudug"],
    contexte: "Le Somaliland, ancienne colonie britannique, a sa propre monnaie, son armée et son gouvernement, avec Hargeisa pour capitale."
  },
  {
    content: "Dans quel pays se trouve la ville de Tombouctou, un ancien centre commercial et intellectuel saharien ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Mali",
    incorrect_answers: ["Le Niger", "L'Algérie", "Le Maroc"],
    contexte: "Tombouctou était un carrefour clé du commerce transsaharien et un centre d'érudition islamique, célèbre pour ses manuscrits."
  },
  {
    content: "Quelle est la capitale de l'Angola ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Luanda",
    incorrect_answers: ["Huambo", "Benguela", "Lobito"],
    contexte: "Située sur la côte atlantique, Luanda est une ville portuaire majeure et le centre économique d'un des plus grands producteurs de pétrole d'Afrique."
  },
  {
    content: "La 'Corne de l'Afrique' est une péninsule qui comprend la Somalie, l'Éthiopie, l'Érythrée et quel autre pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Djibouti",
    incorrect_answers: ["Le Soudan", "Le Kenya", "Le Yémen"],
    contexte: "Cette région a une grande importance stratégique en raison de sa proximité avec les voies maritimes de la mer Rouge."
  },
  {
    content: "Quelle ville n'est PAS une capitale en Afrique du Sud ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Johannesburg",
    incorrect_answers: ["Pretoria", "Le Cap", "Bloemfontein"],
    contexte: "Bien qu'elle ne soit pas une capitale, Johannesburg est la plus grande ville d'Afrique du Sud et son principal centre économique."
  },
  {
    content: "Quelle est la capitale du Zimbabwe ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Harare",
    incorrect_answers: ["Bulawayo", "Mutare", "Gweru"],
    contexte: "Anciennement connue sous le nom de Salisbury, Harare est le centre politique, financier et commercial du Zimbabwe."
  },
  {
    content: "Quelle est la capitale de la Tanzanie ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Dodoma",
    incorrect_answers: ["Dar es Salaam", "Arusha", "Zanzibar"],
    contexte: "Bien que Dodoma soit la capitale officielle, de nombreuses institutions gouvernementales et ambassades sont encore à Dar es Salaam."
  },
  {
    content: "Zanzibar est un archipel semi-autonome qui fait partie de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "La Tanzanie",
    incorrect_answers: ["Le Kenya", "Le Mozambique", "Les Comores"],
    contexte: "L'union de Zanzibar et du Tanganyika en 1964 a donné naissance à la Tanzanie. Sa capitale est Stone Town."
  },
  {
    content: "Ouagadougou est la capitale de quel pays d'Afrique de l'Ouest ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Burkina Faso",
    incorrect_answers: ["Le Mali", "Le Niger", "Le Togo"],
    contexte: "Ouagadougou est célèbre pour le FESPACO, le plus grand festival de cinéma africain."
  },
  {
    content: "Quelle est la capitale du Cameroun ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Yaoundé",
    incorrect_answers: ["Douala", "Garoua", "Bafoussam"],
    contexte: "Alors que Douala est la plus grande ville et le port principal, Yaoundé est le centre politique du pays."
  },
  {
    content: "Gaborone est la capitale de quel pays d'Afrique australe ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Botswana",
    incorrect_answers: ["La Namibie", "Le Lesotho", "Eswatini"],
    contexte: "Gaborone est l'une des capitales à la croissance la plus rapide au monde, son développement étant financé par les revenus du diamant."
  },
  {
    content: "Quelle est la capitale de la Namibie ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Windhoek",
    incorrect_answers: ["Swakopmund", "Walvis Bay", "Lüderitz"],
    contexte: "Située sur le plateau central, Windhoek est connue pour son architecture d'influence coloniale allemande."
  },
  {
    content: "Yamoussoukro, connue pour sa basilique géante, est la capitale politique de quel pays ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "La Côte d'Ivoire",
    incorrect_answers: ["Le Ghana", "Le Togo", "Le Bénin"],
    contexte: "C'est la ville natale du premier président, Félix Houphouët-Boigny. Abidjan reste la capitale économique."
  },
  {
    content: "Quelle est la capitale du Mozambique ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Maputo",
    incorrect_answers: ["Beira", "Nampula", "Pemba"],
    contexte: "Anciennement Lourenço Marques, Maputo est une ville portuaire sur l'océan Indien, connue pour son architecture portugaise."
  },
  {
    content: "Brazzaville est la capitale de quel pays ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "La République du Congo",
    incorrect_answers: ["La République Démocratique du Congo", "Le Gabon", "Le Cameroun"],
    contexte: "C'est la seule capitale au monde située juste en face d'une autre capitale, Kinshasa, de l'autre côté du fleuve Congo."
  },
  {
    content: "Maseru est la capitale de quel royaume enclavé dans l'Afrique du Sud ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Lesotho",
    incorrect_answers: ["Eswatini (Swaziland)", "Le Botswana", "Le Malawi"],
    contexte: "Maseru est située sur la rivière Caledon, qui forme la frontière avec l'Afrique du Sud."
  },
  {
    content: "Quelle est la capitale de la Zambie ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Lusaka",
    incorrect_answers: ["Ndola", "Livingstone", "Kitwe"],
    contexte: "Lusaka est l'une des villes à la croissance la plus rapide d'Afrique australe et le centre du commerce et du gouvernement zambien."
  },
  {
    content: "Quelle est la capitale de la Guinée Équatoriale, située sur une île ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Malabo",
    incorrect_answers: ["Bata", "Oyala", "Luba"],
    contexte: "Malabo se trouve sur l'île de Bioko. Une nouvelle capitale, Ciudad de la Paz (anciennement Oyala), est en construction sur le continent."
  },
  {
    content: "Praia est la capitale de quel archipel au large de la côte de l'Afrique de l'Ouest ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Le Cap-Vert",
    incorrect_answers: ["São Tomé-et-Principe", "Les Comores", "Les Seychelles"],
    contexte: "Praia, située sur l'île de Santiago, est le centre économique et politique du Cap-Vert."
  },
  {
    content: "Quelle ville est à la fois une capitale et la seule enclave d'un pays à l'intérieur d'un autre en Afrique ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Banjul (Gambie)",
    incorrect_answers: ["Maseru (Lesotho)", "Mbabane (Eswatini)", "Dakar (Sénégal)"],
    contexte: "La Gambie est un pays étroit presque entièrement entouré par le Sénégal, à l'exception de sa côte."
  },
  {
    content: "Djibouti (ville) est la capitale de Djibouti. Quelle est sa principale importance géostratégique ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Afrique",
    correct_answer: "Elle abrite de nombreuses bases militaires étrangères",
    incorrect_answers: ["C'est un centre financier majeur", "C'est un site du patrimoine mondial", "C'est le plus grand port d'Afrique"],
    contexte: "En raison de sa position stratégique près du détroit de Bab-el-Mandeb, Djibouti accueille des bases militaires des États-Unis, de la Chine, de la France, etc."
  },

  # EUROPE - Régions et villes du monde via GEMINI 2.5 Flash (DEJA VERIFIEES)

  {
    content: "Quelle est la capitale de la France, célèbre pour la Tour Eiffel et le musée du Louvre ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Paris",
    incorrect_answers: ["Lyon", "Marseille", "Nice"],
    contexte: "Paris est la plus grande ville et le centre politique, culturel et économique de la France."
  },
  {
    content: "Quelle est la capitale de l'Allemagne, connue pour la Porte de Brandebourg et les vestiges de son mur ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Berlin",
    incorrect_answers: ["Munich", "Hambourg", "Francfort"],
    contexte: "Berlin a été réunifiée en 1990 après la chute du mur qui a divisé la ville pendant la Guerre Froide."
  },
  {
    content: "Dans quel pays se trouve la ville de Rome, célèbre pour le Colisée et le Vatican ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "L'Italie",
    incorrect_answers: ["La Grèce", "L'Espagne", "Le Portugal"],
    contexte: "Rome est la capitale de l'Italie. Elle était le centre de l'Empire romain et abrite la cité-État du Vatican."
  },
  {
    content: "Quelle est la capitale de l'Espagne ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Madrid",
    incorrect_answers: ["Barcelone", "Séville", "Valence"],
    contexte: "Située au cœur de la péninsule ibérique, Madrid est célèbre pour son palais royal et le musée du Prado."
  },
  {
    content: "Quelle est la capitale du Royaume-Uni ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Londres",
    incorrect_answers: ["Manchester", "Birmingham", "Édimbourg"],
    contexte: "Londres, traversée par la Tamise, est un centre financier mondial majeur, connu pour Big Ben et le Tower Bridge."
  },
  {
    content: "Quelle est la capitale de la Russie ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Moscou",
    incorrect_answers: ["Saint-Pétersbourg", "Novossibirsk", "Kazan"],
    contexte: "Moscou est la plus grande ville d'Europe et abrite des sites emblématiques comme le Kremlin et la Place Rouge."
  },
  {
    content: "Amsterdam, célèbre pour ses canaux et ses musées, est la capitale de quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Les Pays-Bas",
    incorrect_answers: ["La Belgique", "Le Danemark", "La Suède"],
    contexte: "Bien qu'Amsterdam soit la capitale, le siège du gouvernement néerlandais se trouve à La Haye."
  },
  {
    content: "Quelle est la capitale de l'Irlande ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Dublin",
    incorrect_answers: ["Belfast", "Cork", "Galway"],
    contexte: "Dublin est située sur la côte est de l'Irlande et est connue pour sa culture littéraire et ses pubs."
  },
  {
    content: "Athènes, berceau de la démocratie et de la philosophie occidentale, est la capitale de quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "La Grèce",
    incorrect_answers: ["L'Italie", "La Turquie", "L'Égypte"],
    contexte: "Athènes est dominée par l'Acropole, une citadelle antique abritant le Parthénon."
  },
  {
    content: "Quelle est la capitale du Portugal ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Lisbonne",
    incorrect_answers: ["Porto", "Faro", "Sintra"],
    contexte: "Située sur l'estuaire du Tage, Lisbonne est l'une des plus anciennes villes d'Europe occidentale."
  },
  {
    content: "Dans quel pays se trouve la ville de Venise, célèbre pour ses gondoles et ses canaux ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "L'Italie",
    incorrect_answers: ["La France", "La Croatie", "L'Autriche"],
    contexte: "Venise est construite sur un groupe de 118 petites îles séparées par des canaux et reliées par plus de 400 ponts."
  },
  {
    content: "Quelle est la capitale de la Suisse ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Berne",
    incorrect_answers: ["Genève", "Zurich", "Lausanne"],
    contexte: "Bien que Zurich soit la plus grande ville, Berne est la capitale fédérale, avec une vieille ville médiévale classée à l'UNESCO."
  },
  {
    content: "La Scandinavie est une région du nord de l'Europe qui comprend principalement la Norvège, la Suède et quel autre pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Le Danemark",
    incorrect_answers: ["L'Ukraine", "L'Allemagne", "Les Pays-Bas"],
    contexte: "Ces trois royaumes partagent une histoire et des langues germaniques du nord très similaires."
  },
  {
    content: "Vienne, célèbre pour son opéra et ses palais impériaux, est la capitale de quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "L'Autriche",
    incorrect_answers: ["La Hongrie", "La République Tchèque", "L'Allemagne"],
    contexte: "Vienne était la capitale de l'Empire austro-hongrois et reste un centre culturel et musical majeur."
  },
  {
    content: "Bruxelles est la capitale de la Belgique, mais aussi le siège de quelles organisations importantes ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "L'Union Européenne et l'OTAN",
    incorrect_answers: ["L'ONU et l'UNESCO", "La Banque Mondiale et le FMI", "La Croix-Rouge et l'OMS"],
    contexte: "Bruxelles est souvent considérée comme la capitale de facto de l'Europe en raison de son rôle central dans la politique internationale."
  },
  {
    content: "Quelle est la capitale de la Norvège ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Oslo",
    incorrect_answers: ["Bergen", "Trondheim", "Stavanger"],
    contexte: "Située à la tête d'un fjord, Oslo est connue pour ses espaces verts et ses musées, notamment le musée des navires vikings."
  },
  {
    content: "Quelle est la capitale de la Suède ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Stockholm",
    incorrect_answers: ["Göteborg", "Malmö", "Uppsala"],
    contexte: "Stockholm est construite sur 14 îles reliées par plus de 50 ponts, ce qui lui vaut le surnom de 'Venise du Nord'."
  },
  {
    content: "Quelle est la capitale de la Hongrie, traversée par le Danube ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Budapest",
    incorrect_answers: ["Prague", "Vienne", "Bucarest"],
    contexte: "Budapest est née de la fusion des villes de Buda et Óbuda sur la rive ouest du Danube, et de Pest sur la rive est."
  },
  {
    content: "Quelle est la capitale de la République Tchèque, célèbre pour son pont Charles et son horloge astronomique ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Prague",
    incorrect_answers: ["Brno", "Ostrava", "Plzeň"],
    contexte: "Surnommée la 'ville aux cent clochers', Prague possède un centre historique magnifiquement préservé."
  },
  {
    content: "Varsovie est la capitale de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "La Pologne",
    incorrect_answers: ["La Hongrie", "L'Ukraine", "La Lituanie"],
    contexte: "Détruite à plus de 85% pendant la Seconde Guerre mondiale, Varsovie a été méticuleusement reconstruite."
  },
  {
    content: "Quelle est la capitale de la Finlande ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Helsinki",
    incorrect_answers: ["Tampere", "Turku", "Espoo"],
    contexte: "Située sur la côte du golfe de Finlande, Helsinki est connue pour son architecture design et sa proximité avec la nature."
  },
  {
    content: "Copenhague, célèbre pour sa statue de la Petite Sirène, est la capitale de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Le Danemark",
    incorrect_answers: ["La Suède", "La Norvège", "Les Pays-Bas"],
    contexte: "Copenhague est réputée pour sa culture du vélo, ses canaux et le parc d'attractions des Jardins de Tivoli."
  },
  {
    content: "La Bavière, dont la capitale est Munich, est un Land (État) de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["L'Autriche", "La Suisse", "La France"],
    contexte: "La Bavière est le plus grand Land d'Allemagne, célèbre pour ses châteaux, ses Alpes et l'Oktoberfest."
  },
  {
    content: "Quelle est la 'capitale' de l'Écosse ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Édimbourg",
    incorrect_answers: ["Glasgow", "Aberdeen", "Dundee"],
    contexte: "Dominée par son château perché sur un volcan éteint, Édimbourg est le siège du Parlement écossais."
  },
  {
    content: "Quelle ville n'est PAS située en Italie ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Santorin",
    incorrect_answers: ["Florence", "Milan", "Turin"],
    contexte: "Bien que proche de la frontière italienne et historiquement liée à l'Italie, Nice est une ville française sur la Côte d'Azur."
  },
  {
    content: "La Transylvanie, une région célèbre pour la légende de Dracula, se trouve dans quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "La Roumanie",
    incorrect_answers: ["La Hongrie", "La Bulgarie", "La Serbie"],
    contexte: "La Transylvanie est un plateau entouré par les Carpates, connu pour ses villes médiévales et ses églises fortifiées."
  },
  {
    content: "La Catalogne, dont la capitale est Barcelone, est une communauté autonome de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "L'Espagne",
    incorrect_answers: ["La France", "Le Portugal", "L'Italie"],
    contexte: "La Catalogne a sa propre langue et une forte identité culturelle, avec un mouvement indépendantiste actif."
  },
  {
    content: "Quelle est la capitale de l'Ukraine ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Kiev (Kyiv)",
    incorrect_answers: ["Lviv", "Kharkiv", "Odessa"],
    contexte: "Traversée par le Dniepr, Kiev est l'une des plus anciennes villes d'Europe de l'Est, connue pour ses monastères aux dômes dorés."
  },
  {
    content: "Les pays baltes sont un groupe de trois nations : la Lituanie, la Lettonie et quel autre pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "L'Estonie",
    incorrect_answers: ["La Pologne", "La Finlande", "La Biélorussie"],
    contexte: "Ces trois pays ont retrouvé leur indépendance de l'Union Soviétique en 1991 et sont aujourd'hui membres de l'UE et de l'OTAN."
  },
  {
    content: "La Flandre est une région du nord de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "La Belgique",
    incorrect_answers: ["La Suisse", "Le Luxembourg", "L'Allemagne"],
    contexte: "La Flandre est la région néerlandophone de la Belgique. L'autre grande région est la Wallonie, francophone."
  },
  {
    content: "Quelle est la capitale de la Bulgarie ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Sofia",
    incorrect_answers: ["Plovdiv", "Varna", "Bucarest"],
    contexte: "Située au pied du mont Vitocha, Sofia est une ville avec une histoire riche, marquée par les empires romain, byzantin et ottoman."
  },
  {
    content: "Reykjavik, la capitale la plus septentrionale du monde, se trouve dans quel pays ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "L'Islande",
    incorrect_answers: ["La Finlande", "La Norvège", "Le Groenland"],
    contexte: "Reykjavik est connue pour sa scène artistique et musicale animée, ainsi que pour sa proximité avec des merveilles naturelles comme le Cercle d'Or."
  },
  {
    content: "Quelle est la capitale de la Croatie ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Zagreb",
    incorrect_answers: ["Split", "Dubrovnik", "Ljubljana"],
    contexte: "Zagreb, située dans l'intérieur du pays, est le centre culturel, scientifique et gouvernemental de la Croatie."
  },
  {
    content: "La Valette, une forteresse du XVIe siècle, est la capitale de quel État insulaire de la Méditerranée ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Malte",
    incorrect_answers: ["Chypre", "La Sicile", "La Crète"],
    contexte: "La Valette est l'une des plus petites capitales de l'UE et est entièrement classée au patrimoine mondial de l'UNESCO."
  },
  {
    content: "Quelle est la capitale de la Slovénie ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Ljubljana",
    incorrect_answers: ["Maribor", "Zagreb", "Trieste"],
    contexte: "Ljubljana est réputée pour ses nombreux espaces verts, son centre-ville piétonnier et son château qui surplombe la ville."
  },
  {
    content: "Vaduz est la capitale de quelle très petite principauté germanophone ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Le Liechtenstein",
    incorrect_answers: ["Monaco", "Saint-Marin", "Andorre"],
    contexte: "Située entre la Suisse et l'Autriche, Vaduz est plus un village qu'une ville, dominé par son château princier."
  },
  {
    content: "Quelle ville est la capitale de la Lettonie ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Riga",
    incorrect_answers: ["Vilnius", "Tallinn", "Minsk"],
    contexte: "Riga est la plus grande ville des États baltes et son centre historique est célèbre pour son architecture Art nouveau."
  },
  {
    content: "Andorre-la-Vieille est la capitale de quel micro-État situé dans les Pyrénées ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Andorre",
    incorrect_answers: ["Monaco", "Le Liechtenstein", "Saint-Marin"],
    contexte: "C'est la capitale la plus haute d'Europe, située à plus de 1 000 mètres d'altitude."
  },
  {
    content: "Tirana est la capitale de quel pays des Balkans ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Macédoine du Nord", "Le Kosovo", "Le Monténégro"],
    contexte: "Tirana a connu une transformation radicale depuis la fin de l'ère communiste, avec des bâtiments colorés et une vie culturelle animée."
  },
  {
    content: "Quel micro-État est une enclave à l'intérieur de l'Italie ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "Saint-Marin",
    incorrect_answers: ["Monaco", "Andorre", "Malte"],
    contexte: "Saint-Marin prétend être la plus ancienne république du monde. Sa capitale, également appelée Saint-Marin, est située au sommet du mont Titano."
  },
  {
    content: "Chișinău est la capitale de quel pays d'Europe ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Europe",
    correct_answer: "La Moldavie",
    incorrect_answers: ["La Biélorussie", "La Macédoine du Nord", "L'Albanie"],
    contexte: "Chișinău est connue pour son architecture de l'époque soviétique et ses nombreux parcs."
  },

  # ASIE - Régions et villes du monde via GEMINI 2.5 Flash (DEJA VERIFIEES)

  {
    content: "Quelle est la capitale de la Chine, célèbre pour la Cité Interdite et la Place Tian'anmen ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Beijing",
    incorrect_answers: ["Shanghai", "Hong Kong", "Canton"],
    contexte: "Pékin est le centre politique et culturel de la Chine depuis des siècles."
  },
  {
    content: "Quelle est la capitale du Japon ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Tokyo",
    incorrect_answers: ["Kyoto", "Osaka", "Hiroshima"],
    contexte: "Tokyo est la plus grande métropole du monde, connue pour son mélange de modernité ultra-technologique et de traditions anciennes."
  },
  {
    content: "Quelle est la capitale de l'Inde ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "New Delhi",
    incorrect_answers: ["Mumbai", "Calcutta", "Bangalore"],
    contexte: "New Delhi est un district de la métropole de Delhi, conçu par les Britanniques pour être la capitale de l'Inde."
  },
  {
    content: "Dans quel pays se trouve la ville de Dubaï, célèbre pour ses gratte-ciels comme le Burj Khalifa ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Les Émirats arabes unis",
    incorrect_answers: ["L'Arabie Saoudite", "Le Qatar", "Oman"],
    contexte: "Dubaï est un centre mondial pour le tourisme de luxe, la finance et le commerce, mais n'est pas la capitale des EAU (c'est Abou Dabi)."
  },
  {
    content: "Quelle est la capitale de la Corée du Sud ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Séoul",
    incorrect_answers: ["Busan", "Incheon", "Pyongyang"],
    contexte: "Séoul est une mégapole moderne où la technologie de pointe côtoie des palais et des temples historiques."
  },
  {
    content: "Bangkok, célèbre pour ses temples et sa vie nocturne animée, est la capitale de quel pays ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "La Thaïlande",
    incorrect_answers: ["Le Vietnam", "Le Cambodge", "La Malaisie"],
    contexte: "Bangkok est l'une des villes les plus visitées au monde, connue pour sa cuisine de rue et son Grand Palais."
  },
  {
    content: "Quelle ville est une cité-État et une île au sud de la Malaisie ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Singapour",
    incorrect_answers: ["Hong Kong", "Macao", "Kuala Lumpur"],
    contexte: "Singapour est un centre financier mondial réputé pour sa propreté, son aéroport et ses jardins futuristes (Gardens by the Bay)."
  },
  {
    content: "Quelle est la capitale de l'Indonésie, située sur l'île de Java ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Jakarta",
    incorrect_answers: ["Bali", "Surabaya", "Bandung"],
    contexte: "Jakarta est une mégapole immense et densément peuplée. Le gouvernement prévoit de déplacer la capitale à Nusantara, sur l'île de Bornéo."
  },
  {
    content: "Quelle est la capitale de l'Iran ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Téhéran",
    incorrect_answers: ["Ispahan", "Chiraz", "Tabriz"],
    contexte: "Située au pied des montagnes de l'Elbourz, Téhéran est le centre politique et économique de l'Iran."
  },
  {
    content: "Istanbul est la plus grande ville de quel pays, bien qu'elle n'en soit pas la capitale ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "La Turquie",
    incorrect_answers: ["La Grèce", "L'Iran", "L'Égypte"],
    contexte: "Istanbul est unique car elle est située à cheval sur deux continents, l'Europe et l'Asie. La capitale de la Turquie est Ankara."
  },
  {
    content: "Quelle est la capitale du Vietnam ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Hanoï",
    incorrect_answers: ["Hô Chi Minh-Ville", "Da Nang", "Hué"],
    contexte: "Hanoï, située au nord du pays, est connue pour son vieux quartier animé et son architecture coloniale française."
  },
  {
    content: "Dans quel pays se trouve Mumbai, le centre de l'industrie cinématographique de Bollywood ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "L'Inde",
    incorrect_answers: ["Le Pakistan", "Le Bangladesh", "Le Sri Lanka"],
    contexte: "Mumbai est la capitale financière de l'Inde et la ville la plus peuplée du pays."
  },
  {
    content: "Quelle est la capitale de la Malaisie, célèbre pour ses tours Petronas ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Kuala Lumpur",
    incorrect_answers: ["Singapour", "Penang", "Johor Bahru"],
    contexte: "Kuala Lumpur est le centre culturel et économique de la Malaisie. La capitale administrative est Putrajaya."
  },
  {
    content: "Quelle région administrative spéciale de la Chine était une colonie britannique jusqu'en 1997 ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Hong Kong",
    incorrect_answers: ["Macao", "Shanghai", "Taïwan"],
    contexte: "Hong Kong est un centre financier mondial majeur, connu pour sa ligne d'horizon spectaculaire et son port en eau profonde."
  },
  {
    content: "Quelle est la capitale des Philippines ?",
    difficulty: "facile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Manille",
    incorrect_answers: ["Cebu", "Davao", "Quezon City"],
    contexte: "Manille, située sur l'île de Luçon, est une métropole densément peuplée avec un riche patrimoine colonial espagnol."
  },
  {
    content: "Quelle est la capitale du Népal, point de départ de nombreuses expéditions vers l'Everest ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Katmandou",
    incorrect_answers: ["Pokhara", "Lhassa", "Thimphou"],
    contexte: "La vallée de Katmandou est célèbre pour ses nombreux temples et sites du patrimoine mondial de l'UNESCO."
  },
  {
    content: "La Sibérie est une vaste région qui couvre la partie asiatique de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "La Russie",
    incorrect_answers: ["La Chine", "La Mongolie", "Le Kazakhstan"],
    contexte: "La Sibérie s'étend de l'Oural à l'océan Pacifique et est connue pour ses hivers extrêmes, ses vastes forêts (taïga) et ses ressources naturelles."
  },
  {
    content: "Quelle est la capitale du Pakistan ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Islamabad",
    incorrect_answers: ["Karachi", "Lahore", "Rawalpindi"],
    contexte: "Islamabad est une ville planifiée, construite dans les années 1960 pour remplacer Karachi comme capitale du Pakistan."
  },
  {
    content: "Quelle est la capitale de l'Afghanistan ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Kaboul",
    incorrect_answers: ["Kandahar", "Hérat", "Mazar-e Sharif"],
    contexte: "Située en altitude, Kaboul est l'une des plus anciennes villes d'Asie centrale, mais a été marquée par des décennies de conflit."
  },
  {
    content: "Quelle est la capitale de l'Irak, située sur les rives du Tigre ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Bagdad",
    incorrect_answers: ["Bassora", "Mossoul", "Erbil"],
    contexte: "Bagdad fut l'un des plus grands centres intellectuels du monde islamique médiéval."
  },
  {
    content: "Quelle est la capitale de la Syrie ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Damas",
    incorrect_answers: ["Alep", "Homs", "Lattaquié"],
    contexte: "Damas est considérée comme l'une des plus anciennes villes continuellement habitées au monde."
  },
  {
    content: "Quelle est la capitale du Sri Lanka ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Sri Jayawardenepura Kotte",
    incorrect_answers: ["Colombo", "Kandy", "Galle"],
    contexte: "Bien que Colombo reste le centre politique, Sri Jayawardenepura Kotte est la capitale administrative officielle."
  },
  {
    content: "Quelle est la capitale du Bangladesh ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Dacca",
    incorrect_answers: ["Chittagong", "Khulna", "Sylhet"],
    contexte: "Dacca est l'une des villes les plus densément peuplées du monde, connue comme la 'ville des rickshaws'."
  },
  {
    content: "Quelle est la capitale de la Jordanie ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Amman",
    incorrect_answers: ["Pétra", "Aqaba", "Zarqa"],
    contexte: "Construite sur sept collines, Amman est une ville moderne avec des ruines romaines antiques, dont un grand amphithéâtre."
  },
  {
    content: "Quelle est la capitale du Liban, souvent surnommée le 'Paris du Moyen-Orient' ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Beyrouth",
    incorrect_answers: ["Tripoli", "Sidon", "Byblos"],
    contexte: "Beyrouth est une ville portuaire connue pour sa vie culturelle et nocturne animée, bien que marquée par une histoire de conflits."
  },
  {
    content: "Taipei est la capitale de quel État insulaire revendiqué par la Chine ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Taïwan (République de Chine)",
    incorrect_answers: ["Hong Kong", "Les Philippines", "La Corée du Sud"],
    contexte: "Taipei est célèbre pour sa tour Taipei 101 et ses marchés de nuit animés."
  },
  {
    content: "Quelle est la capitale de la Mongolie ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Oulan-Bator",
    incorrect_answers: ["Erdenet", "Darkhan", "Pékin"],
    contexte: "Oulan-Bator est la capitale la plus froide du monde et abrite près de la moitié de la population du pays."
  },
  {
    content: "Pyongyang est la capitale de quel pays ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "La Corée du Nord",
    incorrect_answers: ["La Corée du Sud", "La Chine", "Le Japon"],
    contexte: "Pyongyang est une ville vitrine du régime, connue pour ses monuments grandioses et ses défilés militaires de masse."
  },
  {
    content: "Quelle est la capitale du Cambodge, située au confluent des fleuves Mékong et Tonlé Sap ?",
    difficulty: "intermédiaire",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Phnom Penh",
    incorrect_answers: ["Siem Reap", "Battambang", "Sihanoukville"],
    contexte: "Phnom Penh est connue pour son Palais Royal, sa Pagode d'Argent et le musée du génocide Tuol Sleng."
  },
  {
    content: "Quelle est la capitale de l'Arabie Saoudite ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Riyad",
    incorrect_answers: ["La Mecque", "Médine", "Djeddah"],
    contexte: "Alors que La Mecque et Médine sont les villes les plus saintes, Riyad, située au centre du pays, est la capitale politique et le principal centre d'affaires."
  },
  {
    content: "Quelle est la capitale du Kazakhstan, connue pour son architecture futuriste ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Astana",
    incorrect_answers: ["Almaty", "Chymkent", "Karaganda"],
    contexte: "Anciennement Nour-Soultan, Astana est devenue capitale en 1997 et a été transformée en une vitrine moderne."
  },
  {
    content: "Thimphou est la capitale de quel royaume himalayen ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Le Bhoutan",
    incorrect_answers: ["Le Népal", "Le Tibet", "Le Sikkim"],
    contexte: "Thimphou est unique car c'est la seule capitale au monde sans feux de circulation."
  },
  {
    content: "Quelle est la capitale du Laos ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Vientiane",
    incorrect_answers: ["Luang Prabang", "Pakse", "Vang Vieng"],
    contexte: "Située sur les rives du Mékong, Vientiane est connue pour son atmosphère détendue et ses temples bouddhistes, comme le Pha That Luang."
  },
  {
    content: "Quelle est la capitale du Qatar ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Doha",
    incorrect_answers: ["Dubaï", "Abou Dabi", "Manama"],
    contexte: "Doha est une ville côtière moderne qui a connu une croissance spectaculaire grâce à ses revenus gaziers et qui a accueilli la Coupe du Monde de la FIFA 2022."
  },
  {
    content: "Manama est la capitale de quel État insulaire du Golfe Persique ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Bahreïn",
    incorrect_answers: ["Le Qatar", "Le Koweït", "Chypre"],
    contexte: "Manama est un important centre financier et est reliée à l'Arabie Saoudite par la chaussée du roi Fahd."
  },
  {
    content: "Quelle est la capitale du Myanmar ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Naypyidaw",
    incorrect_answers: ["Rangoun (Yangon)", "Mandalay", "Bagan"],
    contexte: "Naypyidaw est une capitale planifiée et construite à partir de zéro au milieu des années 2000, remplaçant Rangoun. Elle est connue pour ses larges avenues vides."
  },
  {
    content: "Quelle est la capitale de l'Ouzbékistan, une ville clé sur l'ancienne Route de la Soie ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Tachkent",
    incorrect_answers: ["Samarcande", "Boukhara", "Khiva"],
    contexte: "Tachkent est un mélange d'architecture soviétique moderne et de monuments islamiques plus anciens."
  },
  {
    content: "Quelle est la capitale du Turkménistan, connue pour ses bâtiments en marbre blanc ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Achgabat",
    incorrect_answers: ["Mary", "Türkmenabat", "Balkanabat"],
    contexte: "Achgabat détient le record du monde de la plus forte concentration de bâtiments en marbre blanc."
  },
  {
    content: "Quelle est la capitale du Tadjikistan ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Douchanbé",
    incorrect_answers: ["Khodjent", "Kulob", "Bichkek"],
    contexte: "Le nom 'Douchanbé' signifie 'lundi' en persan, en référence au marché qui s'y tenait ce jour-là."
  },
  {
    content: "Bandar Seri Begawan est la capitale de quel pays situé sur l'île de Bornéo ?",
    difficulty: "difficile",
    category: "Régions et villes du monde",
    region: "Asie",
    correct_answer: "Brunei",
    incorrect_answers: ["La Malaisie", "L'Indonésie", "Singapour"],
    contexte: "La ville est célèbre pour ses mosquées opulentes et son village sur pilotis, Kampong Ayer."
  },

  # Géopolitique via Gemini 2.5 Pro

  # EUROPE - Géopolitique (NON VERIFEES)

  {
    content: "Quelle organisation politique et économique, regroupant 27 pays, utilise l'euro comme monnaie commune pour la plupart de ses membres ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Union Européenne (UE)",
    incorrect_answers: ["L'OTAN", "L'AELE", "Le Conseil de l'Europe"],
    contexte: "Fondée pour favoriser la paix et la coopération, l'Union Européenne est une union économique et politique unique entre 27 États membres."
  },
  {
    content: "Quel mur, symbole de la Guerre Froide, a divisé une capitale européenne de 1961 à 1989 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Le Mur de Berlin",
    incorrect_answers: ["Le Mur d'Hadrien", "Le Mur d'Antonin", "La Ligne Maginot"],
    contexte: "Le Mur de Berlin séparait Berlin-Ouest de Berlin-Est. Sa chute en 1989 a symbolisé la fin de la Guerre Froide en Europe."
  },
  {
    content: "Quel traité, signé en 1992, a officiellement donné son nom à l'Union Européenne et pavé la voie à l'euro ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Le Traité de Maastricht",
    incorrect_answers: ["Le Traité de Rome", "Le Traité de Lisbonne", "Le Traité de Versailles"],
    contexte: "Le Traité de Maastricht a transformé la Communauté Économique Européenne en Union Européenne, établissant les piliers de sa structure actuelle."
  },
  {
    content: "Quelle alliance militaire défensive, incluant de nombreux pays européens et nord-américains, a été créée en 1949 face au bloc soviétique ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'OTAN (Organisation du Traité de l'Atlantique Nord)",
    incorrect_answers: ["Le Pacte de Varsovie", "L'OSCE", "L'Eurocorps"],
    contexte: "L'OTAN a été fondée après la Seconde Guerre mondiale pour assurer une défense collective contre une éventuelle agression."
  },
  {
    content: "Le 'Brexit' fait référence à la sortie de quel pays de l'Union Européenne en 2020 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Le Royaume-Uni",
    incorrect_answers: ["L'Irlande", "La Suisse", "La Norvège"],
    contexte: "Le terme 'Brexit' est la contraction de 'British Exit'. Le Royaume-Uni a quitté l'UE suite à un référendum tenu en 2016."
  },
  {
    content: "Quel conflit mondial a commencé en 1939 avec l'invasion de la Pologne et s'est terminé en 1945 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Seconde Guerre mondiale",
    incorrect_answers: ["La Première Guerre mondiale", "La Guerre Froide", "La Guerre d'Espagne"],
    contexte: "Ce fut le conflit le plus vaste de l'histoire, impliquant la majorité des nations du monde, y compris toutes les grandes puissances."
  },
  {
    content: "Dans quelle ville belge se trouve le siège de la Commission européenne et du Conseil de l'Union européenne ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Bruxelles",
    incorrect_answers: ["Strasbourg", "Luxembourg", "Francfort"],
    contexte: "Bruxelles est souvent considérée comme la capitale de facto de l'Union Européenne en raison de la présence de ses principales institutions exécutives."
  },
  {
    content: "Quelle monnaie a été remplacée par l'euro dans de nombreux pays européens en 2002 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Les monnaies nationales (Franc, Mark, Lire, etc.)",
    incorrect_answers: ["Le Dollar", "La Livre Sterling", "Le Franc suisse"],
    contexte: "Le passage à l'euro a été la plus grande conversion monétaire de l'histoire, unifiant économiquement une grande partie du continent."
  },
  {
    content: "Quel pays a été divisé en deux (RFA et RDA) après la Seconde Guerre mondiale et réunifié en 1990 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Allemagne",
    incorrect_answers: ["La Pologne", "L'Autriche", "La Corée"],
    contexte: "La réunification de l'Allemagne, avec l'intégration de la République Démocratique Allemande (RDA) dans la République Fédérale d'Allemagne (RFA), a marqué un tournant majeur."
  },
  {
    content: "Comment nomme-t-on la période de tensions géopolitiques entre le bloc de l'Est (soviétique) et le bloc de l'Ouest (américain) de 1947 à 1991 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Guerre Froide",
    incorrect_answers: ["La Drôle de Guerre", "La Guerre des Étoiles", "La Détente"],
    contexte: "Caractérisée par une course aux armements et des conflits par procuration, elle a profondément divisé l'Europe sans affrontement militaire direct."
  },
  {
    content: "Quel pays a connu une guerre civile de 1936 à 1939, qui a servi de prélude à la Seconde Guerre mondiale ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Espagne",
    incorrect_answers: ["Le Portugal", "L'Italie", "La Grèce"],
    contexte: "La Guerre d'Espagne a opposé les Républicains, soutenus par l'URSS, et les Nationalistes dirigés par Franco, soutenus par l'Allemagne et l'Italie."
  },
  {
    content: "Le Parlement européen, l'organe législatif de l'UE, tient principalement ses sessions plénières dans quelle ville française ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Strasbourg",
    incorrect_answers: ["Paris", "Bruxelles", "Lyon"],
    contexte: "Le choix de Strasbourg comme siège du Parlement européen est un symbole de la réconciliation franco-allemande."
  },
  {
    content: "Quelle péninsule européenne a été le théâtre de guerres violentes dans les années 1990 suite à l'éclatement de la Yougoslavie ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Les Balkans",
    incorrect_answers: ["La Péninsule Ibérique", "La Péninsule Scandinave", "La Péninsule Italienne"],
    contexte: "Les guerres des Balkans ont entraîné la fragmentation de la Yougoslavie en plusieurs États indépendants, sur fond de conflits ethniques."
  },
  {
    content: "Quel pays, bien que géographiquement en Europe et entouré par l'UE, n'est pas membre de l'Union Européenne ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Suisse",
    incorrect_answers: ["L'Autriche", "La Finlande", "Le Danemark"],
    contexte: "La Suisse maintient une politique de neutralité et de non-adhésion, préférant des accords bilatéraux avec l'UE."
  },
  {
    content: "Le traité qui a mis fin à la Première Guerre mondiale et imposé de lourdes sanctions à l'Allemagne est le Traité de... ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Versailles",
    incorrect_answers: ["Trianon", "Sèvres", "Saint-Germain"],
    contexte: "Signé en 1919 dans la galerie des Glaces du château de Versailles, il est souvent considéré comme une des causes de la Seconde Guerre mondiale."
  },
  {
    content: "Comment appelle-t-on l'espace de libre circulation des personnes entre 27 pays européens, dont certains non-membres de l'UE ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Espace Schengen",
    incorrect_answers: ["La Zone Euro", "L'Espace Économique Européen", "Le Marché Commun"],
    contexte: "Créé par l'Accord de Schengen en 1985, il permet la suppression des contrôles aux frontières intérieures des États signataires."
  },
  {
    content: "Quel conflit politico-religieux a opposé principalement les communautés protestante et catholique en Irlande du Nord de 1968 à 1998 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Les Troubles (The Troubles)",
    incorrect_answers: ["La Guerre des Deux Roses", "La Révolte de Pâques", "La Guerre Civile Irlandaise"],
    contexte: "Ce conflit complexe portait sur le statut constitutionnel de l'Irlande du Nord et a pris fin avec l'Accord du Vendredi Saint."
  },
  {
    content: "Le 'Rideau de Fer' est une expression popularisée par Winston Churchill pour décrire la division de l'Europe durant quelle période ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Guerre Froide",
    incorrect_answers: ["La Seconde Guerre mondiale", "L'entre-deux-guerres", "Les Guerres Napoléoniennes"],
    contexte: "Cette barrière idéologique et physique séparait les États sous influence soviétique des pays de l'Ouest, de la Baltique à l'Adriatique."
  },
  {
    content: "Quel pays a été créé suite à la 'Révolution de velours' qui a mis fin pacifiquement au régime communiste en 1989 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La République Tchèque (et la Slovaquie)",
    incorrect_answers: ["La Pologne", "La Hongrie", "La Roumanie"],
    contexte: "La Révolution de Velours en Tchécoslovaquie a mené à la démocratie, puis à la séparation pacifique du pays en République Tchèque et Slovaquie en 1993."
  },
  {
    content: "Le massacre de Srebrenica, considéré comme un génocide, a eu lieu pendant la guerre de quel pays des Balkans ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Bosnie-Herzégovine",
    incorrect_answers: ["La Croatie", "La Serbie", "Le Kosovo"],
    contexte: "En juillet 1995, plus de 8 000 hommes et garçons bosniaques musulmans ont été tués par les forces serbes de Bosnie."
  },
  {
    content: "Quelle institution financière, basée à Francfort, est responsable de la politique monétaire de la zone euro ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Banque Centrale Européenne (BCE)",
    incorrect_answers: ["La Banque Européenne d'Investissement (BEI)", "Le Fonds Monétaire International (FMI)", "La Banque des Règlements Internationaux (BRI)"],
    contexte: "La BCE a pour principal objectif de maintenir la stabilité des prix et de préserver le pouvoir d'achat de l'euro."
  },
  {
    content: "Quel pays a connu une dictature fasciste dirigée par Benito Mussolini de 1922 à 1943 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Italie",
    incorrect_answers: ["L'Espagne", "Le Portugal", "L'Allemagne"],
    contexte: "Le régime fasciste de Mussolini a servi de modèle à d'autres dictatures en Europe et a été un allié clé de l'Allemagne nazie."
  },
  {
    content: "L'annexion de la Crimée en 2014 par la Russie a déclenché un conflit avec quel autre pays européen ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Ukraine",
    incorrect_answers: ["La Géorgie", "La Pologne", "La Turquie"],
    contexte: "Suite à la révolution ukrainienne de 2014, la Russie a annexé la péninsule de Crimée, un acte non reconnu par la majeure partie de la communauté internationale."
  },
  {
    content: "Quelle organisation intergouvernementale, incluant la Russie, promeut la sécurité, la coopération et les droits de l'homme en Europe ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Organisation pour la Sécurité et la Coopération en Europe (OSCE)",
    incorrect_answers: ["Le Conseil de l'Europe", "L'OTAN", "L'Union Européenne"],
    contexte: "Issue de la Conférence d'Helsinki de 1975, l'OSCE a servi de forum de dialogue Est-Ouest pendant la Guerre Froide et continue ce rôle aujourd'hui."
  },
  {
    content: "La 'Guerre d'Hiver' (1939-1940) a opposé l'Union Soviétique à quel pays nordique, qui a résisté vaillamment malgré sa petite taille ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Finlande",
    incorrect_answers: ["La Suède", "La Norvège", "Le Danemark"],
    contexte: "Bien que contrainte de céder des territoires, la Finlande a infligé de lourdes pertes à l'Armée Rouge et a préservé son indépendance."
  },
  {
    content: "Quel pays du Caucase a été le théâtre d'une guerre avec la Russie en 2008 au sujet de ses régions séparatistes d'Ossétie du Sud et d'Abkhazie ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Géorgie",
    incorrect_answers: ["L'Arménie", "L'Azerbaïdjan", "La Tchétchénie"],
    contexte: "Ce bref conflit a conduit à la reconnaissance par la Russie de l'indépendance de ces deux régions, gelant ainsi le conflit."
  },
  {
    content: "Le conflit pour l'indépendance du Kosovo à la fin des années 1990 l'a opposé à quel pays ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Serbie (alors partie de la Yougoslavie)",
    incorrect_answers: ["L'Albanie", "La Macédoine du Nord", "La Bosnie-Herzégovine"],
    contexte: "Le conflit a conduit à une intervention de l'OTAN en 1999 et à la déclaration d'indépendance du Kosovo en 2008, non reconnue par la Serbie."
  },
  {
    content: "Quelle doctrine de politique étrangère américaine visait à contenir l'expansion du communisme en Europe après la Seconde Guerre mondiale ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La doctrine Truman",
    incorrect_answers: ["La doctrine Monroe", "Le Plan Marshall", "La doctrine de l'endiguement"],
    contexte: "Annoncée en 1947, elle a fourni un soutien économique et militaire à la Grèce et à la Turquie pour éviter qu'elles ne tombent sous l'influence soviétique."
  },
  {
    content: "Comment s'appelle le mouvement séparatiste armé qui a lutté pour l'indépendance du Pays basque en Espagne et en France ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "ETA (Euskadi Ta Askatasuna)",
    incorrect_answers: ["IRA", "FLNC", "Hezbollah"],
    contexte: "Fondé en 1959, ETA a mené une campagne d'attentats pendant des décennies avant de déclarer un cessez-le-feu permanent en 2011 et sa dissolution en 2018."
  },
  {
    content: "L'Accord de Dayton, signé en 1995, a mis fin à la guerre dans quel pays en le divisant en deux entités principales ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Bosnie-Herzégovine",
    incorrect_answers: ["La Croatie", "La Slovénie", "Le Kosovo"],
    contexte: "Cet accord a créé une structure politique complexe avec la Fédération de Bosnie-et-Herzégovine et la Republika Srpska."
  },
  {
    content: "Quel article du traité de l'OTAN stipule qu'une attaque contre un membre est considérée comme une attaque contre tous ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Article 5",
    incorrect_answers: ["L'Article 10", "L'Article 3", "L'Article 7"],
    contexte: "L'Article 5 est la pierre angulaire de la défense collective de l'OTAN. Il n'a été invoqué qu'une seule fois, après les attentats du 11 septembre 2001."
  },
  {
    content: "La Cour de justice de l'Union européenne, qui assure le respect du droit de l'UE, siège dans quelle ville ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Luxembourg",
    incorrect_answers: ["La Haye", "Strasbourg", "Bruxelles"],
    contexte: "À ne pas confondre avec la Cour européenne des droits de l'homme (Strasbourg) ou la Cour internationale de justice (La Haye), la CJUE est l'autorité judiciaire suprême de l'UE."
  },
  {
    content: "Quel territoire russe, une exclave située entre la Pologne et la Lituanie, a une importance stratégique majeure en mer Baltique ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Kaliningrad",
    incorrect_answers: ["La Carélie", "Sakhaline", "La Transnistrie"],
    contexte: "Anciennement Königsberg en Prusse-Orientale, Kaliningrad abrite la flotte russe de la Baltique et des systèmes de missiles avancés."
  },
  {
    content: "Le 'processus de Bologne' est une initiative intergouvernementale visant à harmoniser quoi à travers l'Europe ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Les systèmes d'enseignement supérieur",
    incorrect_answers: ["Les politiques fiscales", "Les normes ferroviaires", "Les procédures judiciaires"],
    contexte: "Lancé en 1999, il a créé l'Espace européen de l'enseignement supérieur pour faciliter la reconnaissance des diplômes et la mobilité des étudiants."
  },
  {
    content: "Quelle région séparatiste de Moldavie, soutenue par la Russie, constitue un 'conflit gelé' depuis 1992 ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Transnistrie",
    incorrect_answers: ["La Gagaouzie", "Le Haut-Karabakh", "L'Ossétie du Sud"],
    contexte: "Cette étroite bande de terre à l'est du fleuve Dniestr a autoproclamé son indépendance mais n'est reconnue par aucun État membre de l'ONU."
  },
  {
    content: "Les Accords d'Helsinki de 1975 ont établi des principes fondamentaux pour les relations Est-Ouest, notamment...",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'inviolabilité des frontières et le respect des droits de l'homme",
    incorrect_answers: ["La dissolution des blocs militaires", "La création d'une monnaie commune", "L'interdiction des armes nucléaires"],
    contexte: "Ces accords ont été un moment clé de la Détente, reconnaissant les frontières post-Seconde Guerre mondiale en échange d'engagements sur les droits humains."
  },
  {
    content: "Quel conflit oppose l'Arménie et l'Azerbaïdjan depuis la fin des années 1980 pour le contrôle d'une enclave montagneuse ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "Le conflit du Haut-Karabakh",
    incorrect_answers: ["Le conflit en Tchétchénie", "Le conflit en Abkhazie", "Le conflit en Transnistrie"],
    contexte: "Ce conflit complexe, mêlant des aspects ethniques, historiques et territoriaux, a connu plusieurs phases de guerre ouverte, la dernière en 2023."
  },
  {
    content: "Le 'scandale du Watergate' a eu un impact majeur sur la politique américaine, mais quel événement similaire en Allemagne a conduit à la démission du chancelier Willy Brandt en 1974 ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'affaire Guillaume",
    incorrect_answers: ["L'affaire du Spiegel", "L'affaire Flick", "L'affaire Barschel"],
    contexte: "Günter Guillaume, l'un des plus proches collaborateurs de Brandt, a été démasqué comme un espion de la Stasi, la police secrète est-allemande."
  },
  {
    content: "Quelle crise a paralysé les institutions de la Communauté Économique Européenne en 1965, initiée par Charles de Gaulle ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La crise de la chaise vide",
    incorrect_answers: ["Le refus de l'entrée du Royaume-Uni", "La crise de l'euro", "La crise des missiles de Cuba"],
    contexte: "La France a boycotté les institutions européennes pendant sept mois pour protester contre une proposition de vote à la majorité qualifiée, défendant le droit de veto national."
  },
  {
    content: "Le 'Groupe de Visegrád' est une alliance culturelle et politique de quatre pays d'Europe centrale. Lesquels ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Pologne, la Hongrie, la République Tchèque et la Slovaquie",
    incorrect_answers: ["L'Autriche, la Slovénie, la Croatie et la Hongrie", "La Pologne, la Lituanie, la Lettonie et l'Estonie", "La Roumanie, la Bulgarie, la Hongrie et la Serbie"],
    contexte: "Créé en 1991, ce groupe (V4) vise à faire avancer leur intégration européenne et à coopérer sur des questions d'intérêt commun."
  },
  {
    content: "Le 'Schisme de 1054' a divisé la chrétienté européenne en deux branches principales. Lesquelles ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Église catholique romaine et l'Église orthodoxe orientale",
    incorrect_answers: ["Le Catholicisme et le Protestantisme", "L'Arianisme et le Catholicisme", "Le Sunnisme et le Chiisme"],
    contexte: "Cette séparation, ou Grand Schisme, a formalisé des siècles de divergences théologiques et politiques entre Rome et Constantinople, influençant profondément la géopolitique européenne."
  },
  {
    content: "Quel terme désigne la politique de neutralité armée adoptée par la Suède et la Finlande pendant la Guerre Froide, avant leur adhésion à l'OTAN ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Finlandisation (pour la Finlande)",
    incorrect_answers: ["La Doctrine Paasikivi-Kekkonen", "La Neutralité scandinave", "L'Isolationnisme nordique"],
    contexte: "La 'finlandisation' décrit la politique d'un pays qui, bien que neutre, subit l'influence d'un voisin puissant, comme la Finlande vis-à-vis de l'URSS."
  },
  {
    content: "La 'Guerre des Harengs' est un surnom pour un conflit naval qui a opposé le Royaume-Uni à quel autre pays au sujet des droits de pêche ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "L'Islande",
    incorrect_answers: ["La Norvège", "Le Danemark", "La France"],
    contexte: "Les 'Cod Wars' (Guerres de la morue) des années 1950-1970 ont vu l'Islande étendre progressivement ses eaux territoriales, provoquant des affrontements avec les chalutiers britanniques."
  },
  {
    content: "Le concept de 'souveraineté westphalienne', base des relations internationales modernes, est issu de traités ayant mis fin à quel conflit européen ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Guerre de Trente Ans",
    incorrect_answers: ["Les Guerres Napoléoniennes", "La Guerre de Cent Ans", "La Guerre de Succession d'Espagne"],
    contexte: "Les Traités de Westphalie de 1648 ont établi le principe de la souveraineté de l'État-nation et de la non-ingérence dans les affaires intérieures."
  },
  {
    content: "Quelle organisation terroriste d'extrême-gauche a semé la terreur en Allemagne de l'Ouest dans les années 1970-1980 ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Europe",
    correct_answer: "La Fraction Armée Rouge (Bande à Baader)",
    incorrect_answers: ["Les Brigades Rouges (Italie)", "Action Directe (France)", "L'IRA (Irlande du Nord)"],
    contexte: "Ce groupe, issu du mouvement étudiant radical, a mené des attentats, des enlèvements et des assassinats contre ce qu'il considérait comme le système capitaliste et impérialiste."
  },

  # ASIE - GEOPOLITIQUE
  {
    content: "Quel conflit a opposé le Nord communiste et le Sud soutenu par les États-Unis, divisant le pays au niveau du 38e parallèle de 1950 à 1953 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Guerre de Corée",
    incorrect_answers: ["La Guerre du Vietnam", "La Guerre Civile Chinoise", "La Guerre Froide"],
    contexte: "Ce conflit a abouti à un armistice mais jamais à un traité de paix, créant la Zone Démilitarisée (DMZ) qui sépare encore la Corée du Nord et la Corée du Sud."
  },
  {
    content: "Quel long conflit a opposé le Nord-Vietnam communiste, soutenu par la Chine et l'URSS, et le Sud-Vietnam, soutenu par les États-Unis ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Guerre du Vietnam",
    incorrect_answers: ["La Guerre de Corée", "La Guerre du Cambodge", "La Révolution Culturelle"],
    contexte: "Ce conflit, qui a duré près de 20 ans, s'est terminé en 1975 avec la chute de Saïgon et la réunification du Vietnam sous le régime communiste."
  },
  {
    content: "Quelle ligne de démarcation sépare l'Inde et le Pakistan et est au cœur d'un conflit territorial majeur dans la région du Cachemire ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Ligne de Contrôle (Line of Control - LoC)",
    incorrect_answers: ["La Ligne McMahon", "La Ligne Durand", "La Ligne Curzon"],
    contexte: "La Ligne de Contrôle est la frontière militaire de facto entre les parties du Cachemire contrôlées par l'Inde et le Pakistan."
  },
  {
    content: "En 1949, quel leader a proclamé la naissance de la République populaire de Chine après la victoire des communistes dans la guerre civile ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Mao Zedong",
    incorrect_answers: ["Chiang Kai-shek", "Deng Xiaoping", "Sun Yat-sen"],
    contexte: "La proclamation a eu lieu sur la place Tian'anmen à Pékin, tandis que les nationalistes de Chiang Kai-shek se retiraient à Taïwan."
  },
  {
    content: "Le dalaï-lama est le chef spirituel de quelle région autonome de Chine, source de tensions politiques et de revendications d'indépendance ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le Tibet",
    incorrect_answers: ["Le Xinjiang", "La Mongolie-Intérieure", "Hong Kong"],
    contexte: "Suite à l'intervention chinoise en 1950, le 14e dalaï-lama s'est exilé en Inde en 1959, où il dirige un gouvernement en exil."
  },
  {
    content: "Quel pays, anciennement connu sous le nom de Perse, a connu une révolution islamique en 1979 qui a renversé la monarchie ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'Iran",
    incorrect_answers: ["L'Irak", "L'Arabie Saoudite", "La Turquie"],
    contexte: "La Révolution iranienne a conduit à l'instauration d'une république islamique dirigée par l'ayatollah Ruhollah Khomeini."
  },
  {
    content: "Quel pays est une monarchie absolue et l'un des plus grands producteurs de pétrole au monde, abritant les villes saintes de La Mecque et Médine ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'Arabie Saoudite",
    incorrect_answers: ["Les Émirats arabes unis", "Le Qatar", "L'Iran"],
    contexte: "Dirigée par la dynastie des Saoud, l'Arabie Saoudite joue un rôle géopolitique majeur au Moyen-Orient et dans le monde musulman."
  },
  {
    content: "Quelle association de 10 pays d'Asie du Sud-Est promeut la coopération économique, politique et sécuritaire ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'ASEAN (Association des Nations de l'Asie du Sud-Est)",
    incorrect_answers: ["L'APEC", "La SAARC", "L'OCS"],
    contexte: "Fondée en 1967, l'ASEAN est un acteur clé dans la géopolitique de la région Asie-Pacifique."
  },
  {
    content: "Comment nomme-t-on la division de l'Inde britannique en 1947, qui a créé les États indépendants de l'Inde et du Pakistan ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Partition",
    incorrect_answers: ["La Décolonisation", "Le Raj", "L'Indépendance"],
    contexte: "La Partition a été basée sur des critères religieux (hindouisme et islam) et a provoqué des déplacements de population massifs et des violences extrêmes."
  },
  {
    content: "Quel pays a été envahi par l'Union Soviétique en 1979, conduisant à une guerre de dix ans et à l'émergence des moudjahidines ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'Afghanistan",
    incorrect_answers: ["L'Iran", "Le Pakistan", "L'Irak"],
    contexte: "L'invasion soviétique visait à soutenir le régime communiste local, mais a entraîné une longue et coûteuse guerre par procuration de la Guerre Froide."
  },
  {
    content: "Quel pays a été envahi par l'Irak en 1990, déclenchant la première Guerre du Golfe ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le Koweït",
    incorrect_answers: ["L'Arabie Saoudite", "L'Iran", "La Jordanie"],
    contexte: "L'invasion, motivée par des différends pétroliers et territoriaux, a conduit à une intervention militaire d'une coalition internationale dirigée par les États-Unis."
  },
  {
    content: "Hiroshima et Nagasaki sont deux villes japonaises connues pour avoir été les cibles de quel événement en 1945 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Les bombardements atomiques",
    incorrect_answers: ["Des tsunamis dévastateurs", "Des tremblements de terre majeurs", "Des batailles navales"],
    contexte: "Ces bombardements par les États-Unis ont précipité la capitulation du Japon et la fin de la Seconde Guerre mondiale."
  },
  {
    content: "Le détroit qui sépare la Chine continentale de Taïwan est une zone de fortes tensions géopolitiques. Quel est son nom ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le détroit de Taïwan",
    incorrect_answers: ["Le détroit de Malacca", "Le détroit de Corée", "Le détroit de Luçon"],
    contexte: "Ce détroit est au cœur du conflit sur le statut de Taïwan, que la Chine considère comme une province renégate."
  },
  {
    content: "Quel pays est le seul État juif au monde et est au centre du conflit israélo-palestinien ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Israël",
    incorrect_answers: ["Le Liban", "La Jordanie", "La Syrie"],
    contexte: "Créé en 1948, Israël est en conflit avec les Palestiniens et plusieurs nations arabes voisines au sujet du territoire et de la souveraineté."
  },
  {
    content: "Quelle organisation, dirigée par Yasser Arafat pendant de nombreuses années, a lutté pour la création d'un État palestinien ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'Organisation de Libération de la Palestine (OLP)",
    incorrect_answers: ["Le Hamas", "Le Hezbollah", "Le Fatah"],
    contexte: "L'OLP est reconnue internationalement comme le représentant officiel du peuple palestinien."
  },
  {
    content: "Quel régime totalitaire, dirigé par Pol Pot, a été responsable d'un génocide au Cambodge entre 1975 et 1979 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Les Khmers rouges",
    incorrect_answers: ["Le Viet Minh", "Le Pathet Lao", "La Junte militaire birmane"],
    contexte: "Le régime des Khmers rouges a tenté d'imposer une utopie agraire radicale, entraînant la mort d'environ 1,7 million de personnes."
  },
  {
    content: "Comment nomme-t-on le statut politique de Hong Kong, qui lui garantit une large autonomie vis-à-vis de la Chine jusqu'en 2047 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Un pays, deux systèmes",
    incorrect_answers: ["Région administrative spéciale", "Province autonome", "Zone économique exclusive"],
    contexte: "Ce principe, négocié lors de la rétrocession par le Royaume-Uni en 1997, permet à Hong Kong de conserver son système capitaliste et ses libertés."
  },
  {
    content: "Quelle campagne lancée par Mao Zedong de 1966 à 1976 visait à purger la société chinoise des éléments capitalistes et traditionnels ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Révolution culturelle",
    incorrect_answers: ["Le Grand Bond en avant", "La Longue Marche", "Les Cent Fleurs"],
    contexte: "Cette période a été marquée par un chaos social et économique extrême, des purges violentes et la destruction du patrimoine culturel."
  },
  {
    content: "Le conflit en mer de Chine méridionale oppose principalement la Chine à plusieurs pays de l'ASEAN au sujet de quoi ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La souveraineté sur des zones maritimes",
    incorrect_answers: ["Des droits de pêche", "Des routes commerciales", "Des ressources pétrolières"],
    contexte: "La Chine revendique la quasi-totalité de cette mer stratégique via la 'ligne en neuf traits', ce que contestent le Vietnam, les Philippines, la Malaisie et Brunei."
  },
  {
    content: "Quel pays, anciennement connu sous le nom de Birmanie, est dirigé par une junte militaire qui a renversé le gouvernement démocratiquement élu d'Aung San Suu Kyi ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le Myanmar",
    incorrect_answers: ["La Thaïlande", "Le Laos", "Le Bangladesh"],
    contexte: "Depuis le coup d'État de 2021, le pays est en proie à une guerre civile opposant l'armée à de nombreuses forces de résistance ethniques et pro-démocratie."
  },
  {
    content: "Quel pays a été créé en 1971 après une guerre de libération sanglante qui l'a séparé du Pakistan occidental ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le Bangladesh",
    incorrect_answers: ["Le Sri Lanka", "Le Népal", "Le Bhoutan"],
    contexte: "Anciennement connu sous le nom de Pakistan oriental, le Bangladesh a fait sécession avec le soutien de l'Inde."
  },
  {
    content: "La 'Révolution des parapluies' en 2014 était un mouvement de protestation pro-démocratie dans quelle ville asiatique ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Hong Kong",
    incorrect_answers: ["Shanghai", "Taipei", "Séoul"],
    contexte: "Les manifestants réclamaient le suffrage universel pour l'élection du chef de l'exécutif de la ville, sans l'ingérence de Pékin."
  },
  {
    content: "Le conflit entre les Tigres tamouls et le gouvernement a déchiré quel pays insulaire pendant près de 30 ans ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le Sri Lanka",
    incorrect_answers: ["Les Maldives", "L'Indonésie", "Les Philippines"],
    contexte: "Les Tigres de libération de l'Eelam tamoul (LTTE) luttaient pour un État tamoul indépendant jusqu'à leur défaite militaire en 2009."
  },
  {
    content: "Quel traité de 1951 a officiellement mis fin à la Seconde Guerre mondiale dans le Pacifique et défini le statut du Japon d'après-guerre ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le Traité de San Francisco",
    incorrect_answers: ["Le Traité de Versailles", "Les Accords de Genève", "La Déclaration de Potsdam"],
    contexte: "Ce traité a mis fin à l'occupation américaine du Japon, qui a en retour renoncé à ses revendications sur de nombreux territoires, dont la Corée et Taïwan."
  },
  {
    content: "La 'Ligne Durand' est une frontière internationale contestée, tracée en 1893, qui sépare quels deux pays ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'Afghanistan et le Pakistan",
    incorrect_answers: ["L'Inde et le Pakistan", "L'Iran et le Pakistan", "La Chine et l'Afghanistan"],
    contexte: "L'Afghanistan n'a jamais officiellement reconnu cette frontière, qui divise la communauté pachtoune et est une source de tensions récurrentes."
  },
  {
    content: "L'Organisation de Coopération de Shanghai (OCS) est une alliance politique, économique et sécuritaire eurasienne. Quels sont ses deux membres fondateurs les plus influents ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Chine et la Russie",
    incorrect_answers: ["L'Inde et le Pakistan", "Le Kazakhstan et l'Ouzbékistan", "La Chine et l'Inde"],
    contexte: "Souvent perçue comme un contrepoids à l'influence de l'OTAN, l'OCS s'est élargie pour inclure l'Inde, le Pakistan et l'Iran."
  },
  {
    content: "Quelle guerre a opposé l'Iran et l'Irak de 1980 à 1988, faisant plus d'un million de victimes ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Guerre Iran-Irak",
    incorrect_answers: ["La Guerre du Golfe", "La Guerre des Six Jours", "La Guerre civile libanaise"],
    contexte: "Déclenchée par l'Irak de Saddam Hussein, cette guerre de tranchées a été l'un des conflits les plus longs et les plus meurtriers du 20e siècle."
  },
  {
    content: "La politique de 'neutralité permanente' de quel pays d'Asie centrale est reconnue par les Nations Unies ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le Turkménistan",
    incorrect_answers: ["L'Ouzbékistan", "Le Kazakhstan", "Le Tadjikistan"],
    contexte: "Cette politique d'isolationnisme, adoptée en 1995, vise à maintenir le pays à l'écart des alliances militaires et des conflits régionaux."
  },
  {
    content: "Le concept de 'Panchsheel', ou les Cinq Principes de Coexistence Pacifique, a été formulé conjointement par quels deux pays dans les années 1950 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'Inde et la Chine",
    incorrect_answers: ["L'Inde et le Pakistan", "La Chine et l'Union Soviétique", "L'Indonésie et l'Inde"],
    contexte: "Ces principes devaient guider les relations sino-indiennes, mais ont été mis à mal par la guerre sino-indienne de 1962."
  },
  {
    content: "Quelle guerre de 1962 a opposé les deux pays les plus peuplés du monde au sujet d'un différend frontalier dans l'Himalaya ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Guerre sino-indienne",
    incorrect_answers: ["La Guerre du Cachemire", "La Guerre de Corée", "La Guerre sino-vietnamienne"],
    contexte: "Ce bref mais violent conflit a été une défaite pour l'Inde et a durablement gelé les relations entre New Delhi et Pékin."
  },
  {
    content: "Quel article de la constitution japonaise d'après-guerre contraint le pays à renoncer à la guerre comme moyen de résoudre les conflits internationaux ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'Article 9",
    incorrect_answers: ["L'Article 1", "L'Article 51", "L'Article 23"],
    contexte: "L'Article 9 est au cœur du pacifisme japonais, bien que son interprétation évolue pour permettre des capacités d'autodéfense de plus en plus robustes."
  },
  {
    content: "Le 'Mouvement des non-alignés', une alternative aux blocs de la Guerre Froide, a été fondé lors de quelle conférence en 1955 ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Conférence de Bandung",
    incorrect_answers: ["La Conférence de Yalta", "La Conférence de Genève", "La Conférence de Belgrade"],
    contexte: "Tenue en Indonésie, cette conférence a rassemblé 29 pays d'Asie et d'Afrique pour promouvoir la coopération et s'opposer au colonialisme."
  },
  {
    content: "Quelle île, au cœur d'un différend de souveraineté entre le Japon, la Chine et Taïwan, est connue sous le nom de Senkaku en japonais et Diaoyu en chinois ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Les îles Senkaku/Diaoyu",
    incorrect_answers: ["Les îles Kouriles/Territoires du Nord", "Les rochers de Liancourt/Dokdo/Takeshima", "Les îles Paracels"],
    contexte: "Ces îles inhabitées en mer de Chine orientale sont stratégiquement situées et pourraient receler des réserves d'hydrocarbures."
  },
  {
    content: "La 'juche' est l'idéologie officielle de quel État asiatique, prônant l'autosuffisance et un nationalisme extrême ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Corée du Nord",
    incorrect_answers: ["La Chine de Mao", "Le Vietnam", "Le Cambodge des Khmers rouges"],
    contexte: "Développée par Kim Il-sung, cette idéologie a servi à justifier l'isolement et le contrôle total du régime sur la population."
  },
  {
    content: "Quelle politique, mise en œuvre de 1979 à 2015, a strictement contrôlé la démographie en Chine ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La politique de l'enfant unique",
    incorrect_answers: ["La politique des deux enfants", "Le Grand Bond en avant", "La politique de la porte ouverte"],
    contexte: "Cette politique a eu des conséquences démographiques profondes, notamment un vieillissement rapide de la population et un déséquilibre hommes-femmes."
  },
  {
    content: "Quel accord de paix de 1978, négocié par les États-Unis, a mis fin à l'état de guerre entre l'Égypte et Israël ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Les Accords de Camp David",
    incorrect_answers: ["Les Accords d'Oslo", "Le Traité de paix israélo-jordanien", "La Résolution 242 de l'ONU"],
    contexte: "Ces accords ont conduit à un traité de paix historique en 1979, le premier entre Israël et un pays arabe, et à la restitution du Sinaï à l'Égypte."
  },
  {
    content: "Le 'Grand Jeu' était une rivalité stratégique au 19e siècle pour le contrôle de l'Asie centrale entre quels deux empires ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'Empire britannique et l'Empire russe",
    incorrect_answers: ["L'Empire ottoman et l'Empire perse", "L'Empire français et l'Empire britannique", "L'Empire chinois et l'Empire russe"],
    contexte: "Cette lutte d'influence, d'espionnage et d'exploration a façonné les frontières et la géopolitique de l'Afghanistan et des régions environnantes."
  },
  {
    content: "Quel terme désigne la politique de réformes économiques initiée par Deng Xiaoping en Chine à partir de 1978 ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le Socialisme de marché",
    incorrect_answers: ["La Révolution culturelle", "Le Grand Bond en avant", "Les Quatre Modernisations"],
    contexte: "Cette politique a ouvert la Chine à l'investissement étranger et à l'économie de marché tout en maintenant le contrôle politique du Parti communiste."
  },
  {
    content: "Le massacre de Gwangju en 1980 a été un tournant dans la lutte pour la démocratie dans quel pays asiatique ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Corée du Sud",
    incorrect_answers: ["Taïwan", "Les Philippines", "L'Indonésie"],
    contexte: "La répression brutale d'un soulèvement pro-démocratie par la junte militaire a galvanisé l'opposition et conduit à la fin du régime autoritaire en 1987."
  },
  {
    content: "L'Opération 'Tempête du désert' était la phase de combat de quel conflit au Moyen-Orient ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La Guerre du Golfe (1990-1991)",
    incorrect_answers: ["La Guerre d'Irak (2003)", "La Guerre Iran-Irak", "La Guerre du Kippour"],
    contexte: "C'était la campagne militaire menée par la coalition internationale pour libérer le Koweït de l'occupation irakienne."
  },
  {
    content: "Quelle doctrine de sécurité japonaise, formulée en 1977, visait à renforcer les liens avec l'Asie du Sud-Est par la coopération économique plutôt que par la puissance militaire ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "La doctrine Fukuda",
    incorrect_answers: ["La doctrine Yoshida", "La doctrine Abe", "La doctrine Ikeda"],
    contexte: "Cette doctrine a marqué un tournant dans la politique étrangère du Japon, cherchant à établir des relations de 'cœur à cœur' avec les pays de l'ASEAN."
  },
  {
    content: "Le 'Triangle d'or' est une région montagneuse à cheval sur quels trois pays, connue pour être l'une des plus grandes zones de production d'opium au monde ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "Le Myanmar, le Laos et la Thaïlande",
    incorrect_answers: ["L'Afghanistan, le Pakistan et l'Iran", "Le Vietnam, le Cambodge et le Laos", "La Chine, le Myanmar et l'Inde"],
    contexte: "La production de drogue dans cette région a financé de nombreuses insurrections armées et groupes criminels, posant un défi de sécurité majeur."
  },
  {
    content: "La 'Guerre de la Morue' est un surnom pour un conflit naval qui a opposé le Royaume-Uni à quel autre pays au sujet des droits de pêche ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Asie",
    correct_answer: "L'Islande",
    incorrect_answers: ["La Norvège", "Le Danemark", "La France"],
    contexte: "Les 'Cod Wars' (Guerres de la morue) des années 1950-1970 ont vu l'Islande étendre progressivement ses eaux territoriales, provoquant des affrontements avec les chalutiers britanniques."
  },

  # Amérique - GEOPOLITIQUE (VERIFIEES)

  {
    content: "Quelle guerre a opposé les 13 colonies britanniques à la Grande-Bretagne, menant à la création des États-Unis d'Amérique ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La Guerre d'indépendance américaine",
    incorrect_answers: ["La Guerre de 1812", "La Guerre de Sécession", "La Guerre de Sept Ans"],
    contexte: "Ce conflit, qui a eu lieu de 1775 à 1783, a abouti au Traité de Paris et à la reconnaissance de l'indépendance des États-Unis."
  },
  {
    content: "Quel conflit a déchiré les États-Unis de 1861 à 1865, opposant l'Union aux États confédérés au sujet de l'esclavage et des droits des États ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La Guerre de Sécession",
    incorrect_answers: ["La Révolution américaine", "La Guerre américano-mexicaine", "La Conquête de l'Ouest"],
    contexte: "Cette guerre a abouti à l'abolition de l'esclavage, à la préservation de l'Union et a affirmé la suprématie du gouvernement fédéral."
  },
  {
    content: "Quelle crise de 1962 a amené les États-Unis et l'Union Soviétique au bord de la guerre nucléaire à cause de missiles installés à Cuba ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La crise des missiles de Cuba",
    incorrect_answers: ["L'invasion de la Baie des Cochons", "La crise du canal de Suez", "Le blocus de Berlin"],
    contexte: "Pendant 13 jours, le monde a retenu son souffle jusqu'à ce qu'un accord soit trouvé pour retirer les missiles soviétiques en échange du retrait de missiles américains en Turquie."
  },
  {
    content: "Quel accord de libre-échange, remplacé en 2020, unissait le Canada, les États-Unis et le Mexique ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "L'ALENA",
    incorrect_answers: ["Le MERCOSUR", "L'Union Européenne", "L'APEC"],
    contexte: "Signé en 1994, l'ALENA a créé l'une des plus grandes zones de libre-échange du monde. Il a été remplacé par l'ACEUM (Accord Canada–États-Unis–Mexique)."
  },
  {
    content: "Quel pays a été dirigé par le leader communiste Fidel Castro pendant plusieurs décennies après la révolution de 1959 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Cuba",
    incorrect_answers: ["Le Venezuela", "Le Nicaragua", "La Bolivie"],
    contexte: "La révolution cubaine a renversé le dictateur Batista, soutenu par les États-Unis, et a instauré un régime communiste, un acteur clé de la Guerre Froide."
  },
  {
    content: "La doctrine Monroe, énoncée en 1823, visait à s'opposer à toute intervention de quelle puissance sur le continent américain ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Européenne",
    incorrect_answers: ["Asiatique", "Africaine", "Russe"],
    contexte: "Cette doctrine a jeté les bases de la politique étrangère américaine, considérant le continent américain comme sa sphère d'influence exclusive."
  },
  {
    content: "Quelle voie navigable artificielle, reliant les océans Atlantique et Pacifique, a été sous contrôle américain jusqu'en 1999 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le Canal de Panama",
    incorrect_answers: ["Le Canal de Suez", "Le Détroit de Magellan", "Le Passage du Nord-Ouest"],
    contexte: "La construction et le contrôle du canal ont été des enjeux géopolitiques majeurs du 20e siècle, avant son transfert à la République du Panama."
  },
  {
    content: "Quel pays d'Amérique du Sud a été dirigé par une dictature militaire brutale de 1976 à 1983, période connue sous le nom de 'Guerre Sale' ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "L'Argentine",
    incorrect_answers: ["Le Brésil", "Le Chili", "L'Uruguay"],
    contexte: "Durant cette période, la junte militaire a fait 'disparaître' des milliers d'opposants politiques, laissant une profonde cicatrice dans la société."
  },
  {
    content: "La 'Révolution tranquille' est une période de changements sociaux et politiques rapides qui a eu lieu dans quelle province canadienne dans les années 1960 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le Québec",
    incorrect_answers: ["L'Ontario", "La Colombie-Britannique", "L'Alberta"],
    contexte: "Cette période a vu la sécularisation de la société, la montée du nationalisme québécois et la création de l'État-providence."
  },
  {
    content: "Quel pays a connu une dictature dirigée par Augusto Pinochet de 1973 à 1990, suite à un coup d'État contre le président Salvador Allende ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le Chili",
    incorrect_answers: ["L'Argentine", "Le Pérou", "La Bolivie"],
    contexte: "Le coup d'État de 1973, soutenu par la CIA, a marqué le début d'un régime autoritaire caractérisé par la répression politique et des réformes économiques néolibérales."
  },
  {
    content: "Quel terme désigne la politique de discrimination raciale qui a existé aux États-Unis, en particulier dans les États du Sud, jusqu'aux années 1960 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La ségrégation (ou les lois Jim Crow)",
    incorrect_answers: ["L'Apartheid", "Le Ghetto", "La Réserve"],
    contexte: "Cette politique a été combattue par le Mouvement des droits civiques, qui a abouti à des lois majeures comme le Civil Rights Act de 1964."
  },
  {
    content: "Le MERCOSUR est un bloc commercial et une union douanière entre plusieurs pays de quelle région ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Amérique du Sud",
    incorrect_answers: ["Amérique du Nord", "Amérique Centrale", "Les Caraïbes"],
    contexte: "Ses membres fondateurs sont l'Argentine, le Brésil, le Paraguay et l'Uruguay. Il vise à promouvoir le libre-échange et la circulation des biens."
  },
  {
    content: "Quel pays a été le théâtre d'un conflit armé de plus de 50 ans entre le gouvernement et des guérillas marxistes comme les FARC ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La Colombie",
    incorrect_answers: ["Le Pérou", "Le Mexique", "Le Venezuela"],
    contexte: "Ce conflit complexe, alimenté par le trafic de drogue, a fait des centaines de milliers de victimes avant un accord de paix historique en 2016."
  },
  {
    content: "L'Organisation des États Américains (OEA) est une organisation continentale dont le siège est dans quelle ville ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Washington, D.C.",
    incorrect_answers: ["Mexico", "Brasilia", "Bogota"],
    contexte: "Fondée en 1948, l'OEA a pour objectifs la paix, la sécurité, la démocratie et le développement dans les Amériques."
  },
  {
    content: "Quel pays d'Amérique centrale a été dirigé par la dynastie des Somoza pendant plus de 40 ans avant la révolution sandiniste de 1979 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le Nicaragua",
    incorrect_answers: ["Le Honduras", "Le Salvador", "Le Guatemala"],
    contexte: "La révolution a porté au pouvoir le Front sandiniste de libération nationale (FSLN), qui a ensuite affronté les Contras soutenus par les États-Unis."
  },
  {
    content: "Quelle tentative d'invasion de Cuba par des exilés cubains, soutenue par la CIA, a échoué lamentablement en 1961 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le débarquement de la baie des Cochons",
    incorrect_answers: ["L'opération Mongoose", "La crise des missiles de Cuba", "L'opération Urgent Fury"],
    contexte: "Cet échec a renforcé le régime de Fidel Castro et a été une humiliation majeure pour l'administration du président Kennedy."
  },
  {
    content: "Le scandale 'Iran-Contra' dans les années 1980 a impliqué la vente secrète d'armes à l'Iran par l'administration Reagan pour financer quel groupe ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Les Contras au Nicaragua",
    incorrect_answers: ["Les moudjahidines en Afghanistan", "La junte en Argentine", "Les rebelles au Salvador"],
    contexte: "Cette affaire a révélé des opérations secrètes et illégales visant à contourner les interdictions du Congrès américain."
  },
  {
    content: "Quelle guerre a opposé l'Argentine et le Royaume-Uni en 1982 pour la souveraineté d'un archipel de l'Atlantique Sud ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La Guerre des Malouines",
    incorrect_answers: ["La Guerre du Chaco", "La Guerre du Pacifique", "La Guerre des Caraïbes"],
    contexte: "Le conflit a commencé par une invasion argentine et s'est terminé par une victoire britannique, mais la revendication de souveraineté argentine persiste."
  },
  {
    content: "Comment nomme-t-on le plan de coopération et de répression des opposants politiques mis en place par les dictatures d'Amérique du Sud dans les années 1970 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "L'Opération Condor",
    incorrect_answers: ["L'Alliance pour le Progrès", "La Doctrine de la Sécurité Nationale", "L'Opération Just Cause"],
    contexte: "Coordonnée par le Chili de Pinochet, cette campagne d'assassinats et de renseignements a visé des dissidents politiques à travers le continent."
  },
  {
    content: "Quel mouvement de guérilla indigène a lancé une insurrection dans l'État du Chiapas, au Mexique, le jour de l'entrée en vigueur de l'ALENA en 1994 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "L'Armée zapatiste de libération nationale (EZLN)",
    incorrect_answers: ["Le Sentier lumineux", "Les FARC", "Les Tupamaros"],
    contexte: "Les zapatistes s'opposent à la mondialisation néolibérale et luttent pour les droits et l'autonomie des peuples indigènes."
  },
  {
    content: "Quelle politique américaine des années 1930, initiée par Franklin D. Roosevelt, visait à réduire l'interventionnisme militaire en Amérique latine ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La politique de bon voisinage",
    incorrect_answers: ["La doctrine Monroe", "La diplomatie du dollar", "La politique du Big Stick"],
    contexte: "Cette politique a mis fin à l'occupation de plusieurs pays par les Marines américains, mais n'a pas empêché l'influence économique et politique."
  },
  {
    content: "Le 'Sentier Lumineux' (Sendero Luminoso) était un groupe terroriste maoïste qui a mené une insurrection sanglante dans quel pays andin ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le Pérou",
    incorrect_answers: ["La Colombie", "La Bolivie", "L'Équateur"],
    contexte: "Actif principalement dans les années 1980 et 1990, le conflit a causé des dizaines de milliers de morts et de graves violations des droits humains."
  },
  {
    content: "Quel traité de 1977, signé par Jimmy Carter et Omar Torrijos, a organisé le transfert progressif du Canal de Panama au Panama ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Les Traités Torrijos-Carter",
    incorrect_answers: ["Le Traité Hay-Bunau-Varilla", "L'Accord de Panama", "Le Traité du Canal Interocéanique"],
    contexte: "Ces traités ont mis fin à des décennies de tensions et ont abouti au contrôle total du canal par le Panama le 31 décembre 1999."
  },
  {
    content: "Quelle guerre a opposé la Bolivie et le Paraguay de 1932 à 1935 pour le contrôle d'une région aride, supposée riche en pétrole ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La Guerre du Chaco",
    incorrect_answers: ["La Guerre du Pacifique", "La Guerre de la Triple-Alliance", "La Guerre des Malouines"],
    contexte: "Ce fut la guerre la plus meurtrière d'Amérique du Sud au 20e siècle. Le Paraguay a finalement obtenu la plus grande partie du territoire contesté."
  },
  {
    content: "Le 'Maccarthysme' était une période de peur et de répression anticommuniste intense dans quel pays au début des années 1950 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Les États-Unis",
    incorrect_answers: ["Le Canada", "Le Mexique", "L'Argentine"],
    contexte: "Menée par le sénateur Joseph McCarthy, cette 'chasse aux sorcières' a ruiné de nombreuses carrières par des accusations souvent infondées."
  },
  {
    content: "Quelle résolution de l'ONU, adoptée après la Guerre des Six Jours, est une pierre angulaire des négociations de paix au Moyen-Orient mais a été proposée par un pays américain ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La Résolution 242",
    incorrect_answers: ["La Résolution 338", "La Résolution 181", "La Résolution 425"],
    contexte: "Proposée par le Royaume-Uni mais fortement soutenue par les États-Unis, elle appelle au 'retrait des forces armées israéliennes des territoires occupés' en échange de la paix."
  },
  {
    content: "L'apartheid est associé à l'Afrique du Sud, mais quel pays américain a vu sa politique étrangère influencée par son opposition à ce régime, notamment sous le gouvernement de Brian Mulroney ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Le Brésil", "Le Mexique", "L'Argentine"],
    contexte: "Le Canada a été l'un des leaders au sein du Commonwealth dans l'imposition de sanctions contre l'Afrique du Sud pour faire pression contre l'apartheid."
  },
  {
    content: "Quelle guerre (1846-1848) a abouti à la cession par le Mexique de vastes territoires qui forment aujourd'hui le sud-ouest des États-Unis ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La Guerre américano-mexicaine",
    incorrect_answers: ["La Révolution texane", "La Guerre hispano-américaine", "La Guerre des Pâtisseries"],
    contexte: "Suite au Traité de Guadalupe Hidalgo, le Mexique a perdu la Californie, le Nevada, l'Utah, et des parties de plusieurs autres États."
  },
  {
    content: "L'ALBA (Alliance Bolivarienne pour les Amériques) est une organisation intergouvernementale créée en opposition à la politique américaine. Quels en sont les deux principaux fondateurs ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le Venezuela (Hugo Chávez) et Cuba (Fidel Castro)",
    incorrect_answers: ["Le Brésil et l'Argentine", "La Bolivie et l'Équateur", "Le Mexique et la Colombie"],
    contexte: "Fondée en 2004, l'ALBA promeut une coopération basée sur la solidarité et la complémentarité économique, en opposition au néolibéralisme."
  },
  {
    content: "Quel coup d'État de 1954, orchestré par la CIA sous le nom de code 'Opération PBSUCCESS', a renversé le gouvernement démocratiquement élu de Jacobo Árbenz ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le coup d'État au Guatemala",
    incorrect_answers: ["Le coup d'État au Chili", "Le coup d'État en Iran", "Le coup d'État au Congo"],
    contexte: "Ce coup d'État, motivé par la réforme agraire qui menaçait les intérêts de la United Fruit Company, a plongé le pays dans des décennies de guerre civile."
  },
  {
    content: "Quelle loi américaine de 1996, connue sous le nom de loi Helms-Burton, a renforcé l'embargo contre Cuba en pénalisant les entreprises étrangères qui y commercent ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La loi sur la liberté et la solidarité démocratique cubaine",
    incorrect_answers: ["L'amendement Platt", "La loi Torricelli", "L'embargo commercial"],
    contexte: "Cette loi a une portée extraterritoriale, ce qui a provoqué des tensions avec de nombreux alliés des États-Unis, dont le Canada et l'Union Européenne."
  },
  {
    content: "La 'Guerre du Pacifique' (1879-1884) a opposé le Chili à une alliance entre quels deux pays, privant l'un d'eux de son accès à la mer ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Le Pérou et la Bolivie",
    incorrect_answers: ["L'Argentine et l'Uruguay", "L'Équateur et la Colombie", "Le Brésil et le Paraguay"],
    contexte: "À l'issue de cette guerre, le Chili a annexé de riches territoires miniers, et la Bolivie a perdu sa seule province côtière, une perte encore contestée aujourd'hui."
  },
  {
    content: "Quelle crise politique canadienne de 1970 a vu le gouvernement fédéral invoquer la Loi sur les mesures de guerre en réponse aux enlèvements du Front de libération du Québec (FLQ) ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La Crise d'Octobre",
    incorrect_answers: ["La Crise du Lac Meech", "La Crise d'Oka", "Le Référendum de 1980"],
    contexte: "C'est la seule fois que cette loi a été appliquée en temps de paix, suspendant les libertés civiles et déployant l'armée au Québec."
  },
  {
    content: "Quel terme désigne la politique de l'administration Nixon visant à transférer la responsabilité des combats aux forces sud-vietnamiennes ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La vietnamisation",
    incorrect_answers: ["La doctrine Nixon", "L'endiguement", "La détente"],
    contexte: "Cette stratégie visait à permettre un retrait progressif des troupes américaines du Vietnam tout en maintenant un Sud-Vietnam non communiste."
  },
  {
    content: "Le 'Corollaire Roosevelt' à la doctrine Monroe affirmait le droit des États-Unis d'agir comme...",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Une 'puissance de police internationale' en Amérique latine",
    incorrect_answers: ["Un partenaire commercial égal", "Un médiateur neutre", "Un observateur non-interventionniste"],
    contexte: "Cette extension a justifié de nombreuses interventions militaires américaines en Amérique centrale et dans les Caraïbes au début du 20e siècle."
  },
  {
    content: "Quelle guerre (1864-1870) a opposé le Paraguay à une alliance du Brésil, de l'Argentine et de l'Uruguay, et a dévasté la population paraguayenne ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "La Guerre de la Triple-Alliance",
    incorrect_answers: ["La Guerre du Chaco", "La Guerre du Pacifique", "La Guerre de Cisplatine"],
    contexte: "Ce conflit est le plus sanglant de l'histoire de l'Amérique du Sud. Le Paraguay a perdu une grande partie de sa population masculine et de son territoire."
  },
  {
    content: "La 'United Fruit Company', une multinationale américaine, a joué un rôle politique et économique si dominant en Amérique centrale qu'elle a inspiré le terme...",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "République bananière",
    incorrect_answers: ["État client", "État satellite", "Colonie économique"],
    contexte: "Ce terme péjoratif décrit un pays politiquement instable dont l'économie dépend de l'exportation d'une seule ressource, contrôlée par des intérêts étrangers."
  },
  {
    content: "L'Amendement Platt de 1901 était une clause insérée dans la constitution de quel pays, autorisant l'intervention des États-Unis dans ses affaires ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "Cuba",
    incorrect_answers: ["Le Panama", "Les Philippines", "Le Nicaragua"],
    contexte: "Cet amendement a transformé Cuba en un protectorat de fait des États-Unis et a conduit à la concession de la base navale de Guantánamo."
  },
  {
    content: "Quelle opération militaire américaine de 1989 a envahi le Panama pour déposer le dictateur Manuel Noriega ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Amérique",
    correct_answer: "L'Opération Just Cause",
    incorrect_answers: ["L'Opération Urgent Fury", "L'Opération Eagle Claw", "L'Opération Mongoose"],
    contexte: "Justifiée par la lutte contre le trafic de drogue et la protection des citoyens américains, cette invasion a été controversée sur le plan du droit international."
  },

  # Océanie - GEOPOLITIQUE

  {
    content: "Quel pacte de sécurité mutuelle lie l'Australie, la Nouvelle-Zélande et les États-Unis depuis 1951 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Le traité ANZUS",
    incorrect_answers: ["L'OTAN", "Le Pacte de Manille (SEATO)", "L'APEC"],
    contexte: "Ce traité de défense collective a été un pilier de la sécurité dans le Pacifique, bien que les obligations envers la Nouvelle-Zélande aient été suspendues en 1986."
  },
  {
    content: "Quel pays a pour chef d'État le monarque britannique, représenté par un gouverneur général ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie (et la Nouvelle-Zélande, PNG, etc.)",
    incorrect_answers: ["Fidji", "Samoa", "Vanuatu"],
    contexte: "En tant que monarchie constitutionnelle et membre du Commonwealth, l'Australie reconnaît le monarque du Royaume-Uni comme son souverain."
  },
  {
    content: "La Nouvelle-Zélande a suspendu sa participation au traité ANZUS en raison de sa politique contre quoi ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Les armes et l'énergie nucléaires",
    incorrect_answers: ["L'apartheid", "La chasse à la baleine", "Les essais atmosphériques"],
    contexte: "Dans les années 1980, la Nouvelle-Zélande a interdit l'entrée de navires à propulsion ou armement nucléaire dans ses eaux, ce qui a créé des tensions avec les États-Unis."
  },
  {
    content: "Dans quelle ville australienne se trouve le siège du Parlement fédéral ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Canberra",
    incorrect_answers: ["Sydney", "Melbourne", "Brisbane"],
    contexte: "Canberra a été choisie comme capitale en 1908 comme un compromis entre les deux villes rivales que sont Sydney et Melbourne."
  },
  {
    content: "Quel pays a administré la Papouasie-Nouvelle-Guinée jusqu'à son indépendance en 1975 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["Le Royaume-Uni", "L'Allemagne", "Les Pays-Bas"],
    contexte: "Après la Première Guerre mondiale, l'Australie a pris le contrôle de l'ancienne colonie allemande et a géré le territoire jusqu'à son indépendance pacifique."
  },
  {
    content: "Quel pays européen possède plusieurs territoires en Océanie, dont la Nouvelle-Calédonie et la Polynésie française ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La France",
    incorrect_answers: ["Le Royaume-Uni", "L'Espagne", "Le Portugal"],
    contexte: "La France maintient une présence significative dans le Pacifique à travers ses collectivités d'outre-mer, qui ont des statuts d'autonomie variés."
  },
  {
    content: "Le Traité de Waitangi, signé en 1840, est le document fondateur de quel pays ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["L'Australie", "Fidji", "Tonga"],
    contexte: "Ce traité a été signé entre la Couronne britannique et les chefs maoris. Son interprétation est encore une source de débats politiques et juridiques."
  },
  {
    content: "Quel pays du Pacifique est une république mais était une monarchie jusqu'à un coup d'État militaire en 1987 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Fidji",
    incorrect_answers: ["Tonga", "Samoa", "Îles Salomon"],
    contexte: "Fidji a connu plusieurs coups d'État, souvent liés aux tensions entre la population indigène iTaukei et les Indo-Fidjiens."
  },
  {
    content: "Le 'Forum des îles du Pacifique' est la principale organisation intergouvernementale de la région. Quel en est l'un des enjeux majeurs ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Le changement climatique",
    incorrect_answers: ["La piraterie", "Les conflits frontaliers", "La course aux armements"],
    contexte: "Pour de nombreux petits États insulaires, la montée du niveau de la mer due au changement climatique représente une menace existentielle."
  },
  {
    content: "Nauru, l'une des plus petites républiques du monde, a été au centre de quelle politique controversée de l'Australie ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La détention de demandeurs d'asile",
    incorrect_answers: ["L'extraction de phosphate", "Les essais nucléaires", "L'installation de bases militaires"],
    contexte: "Dans le cadre de la 'Solution du Pacifique', l'Australie a utilisé Nauru pour traiter et détenir les demandeurs d'asile arrivant par bateau."
  },
  {
    content: "Quel est le seul royaume encore existant en Polynésie ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Tonga",
    incorrect_answers: ["Fidji", "Hawaï", "Tahiti"],
    contexte: "Tonga est une monarchie constitutionnelle qui n'a jamais été formellement colonisée par une puissance européenne."
  },
  {
    content: "L'Australie et le Timor oriental ont eu un long différend concernant quoi ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Le partage des revenus pétroliers et gaziers en mer",
    incorrect_answers: ["Les droits de pêche", "Des revendications territoriales terrestres", "Le statut des réfugiés"],
    contexte: "Le différend sur la frontière maritime en mer de Timor a été résolu en 2018 par un traité fixant une frontière permanente."
  },
  {
    content: "Quel pays du Pacifique n'a pas d'armée et sa défense est assurée par la Nouvelle-Zélande en libre association ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Les Îles Cook (et Niue)",
    incorrect_answers: ["Fidji", "Vanuatu", "Samoa"],
    contexte: "Les Îles Cook sont un État souverain en libre association avec la Nouvelle-Zélande, qui reste responsable de sa défense et de sa politique étrangère sur demande."
  },
  {
    content: "Comment nomme-t-on la population aborigène de la Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Les Maoris",
    incorrect_answers: ["Les Aborigènes", "Les Kanaks", "Les Papous"],
    contexte: "Les Maoris sont le peuple autochtone de Nouvelle-Zélande et leur culture a une influence significative sur tous les aspects de la société."
  },
  {
    content: "Le Bikini Atoll, dans les Îles Marshall, est célèbre pour avoir été le site de quoi après la Seconde Guerre mondiale ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Des essais nucléaires américains",
    incorrect_answers: ["La signature d'un traité de paix", "Une bataille navale décisive", "La découverte d'une nouvelle espèce"],
    contexte: "Les États-Unis y ont mené plus de 20 essais d'armes nucléaires, déplaçant la population locale et provoquant une contamination radioactive durable."
  },
  {
    content: "Quel territoire français a tenu trois référendums sur son indépendance en 2018, 2020 et 2021, tous rejetés ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La Nouvelle-Calédonie",
    incorrect_answers: ["La Polynésie française", "Wallis-et-Futuna", "L'Île de la Réunion"],
    contexte: "Prévus par l'Accord de Nouméa de 1998, ces référendums ont été marqués par une forte polarisation entre les partisans de l'indépendance (principalement Kanaks) et les loyalistes."
  },
  {
    content: "Quel conflit sécessionniste (1988-1998) a opposé l'île de Bougainville au gouvernement de Papouasie-Nouvelle-Guinée, principalement à cause d'une mine ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La guerre civile de Bougainville",
    incorrect_answers: ["La crise des Salomon", "Le conflit du Timor oriental", "La rébellion de la Nouvelle-Guinée occidentale"],
    contexte: "Le conflit, déclenché par des griefs environnementaux et économiques liés à la mine de cuivre de Panguna, a fait des milliers de morts et a mené à une autonomie accrue."
  },
  {
    content: "L'affaire du 'Rainbow Warrior' en 1985 a impliqué le sabotage d'un navire de Greenpeace dans le port d'Auckland par des agents de quel pays ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La France",
    incorrect_answers: ["Les États-Unis", "Le Royaume-Uni", "L'Union Soviétique"],
    contexte: "Les agents français ont coulé le navire pour l'empêcher de protester contre les essais nucléaires français sur l'atoll de Moruroa, provoquant un scandale international."
  },
  {
    content: "Quelle politique australienne, souvent critiquée, visait à assimiler de force les enfants aborigènes en les retirant de leur famille ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Les Générations volées (Stolen Generations)",
    incorrect_answers: ["La politique de l'Australie blanche", "La Solution du Pacifique", "Le Plan Colombo"],
    contexte: "Cette politique, menée du début du 20e siècle jusque dans les années 1970, a eu des conséquences traumatisantes et durables sur les communautés indigènes."
  },
  {
    content: "RAMSI (Regional Assistance Mission to Solomon Islands) était une mission internationale de maintien de la paix dirigée par quel pays ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "Les Nations Unies", "Les États-Unis"],
    contexte: "Lancée en 2003 à la demande des Îles Salomon, RAMSI a réussi à restaurer l'ordre après des années de conflit ethnique et d'effondrement de l'État."
  },
  {
    content: "La 'politique de l'Australie blanche', abolie progressivement après la Seconde Guerre mondiale, visait à restreindre quoi ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "L'immigration des non-Européens",
    incorrect_answers: ["Le droit de vote des Aborigènes", "Les investissements étrangers", "Les mariages mixtes"],
    contexte: "Cette politique a façonné la démographie australienne pendant des décennies avant d'être remplacée par une politique d'immigration multiculturelle."
  },
  {
    content: "Quel pays est au cœur de la rivalité géopolitique entre la Chine et Taïwan dans le Pacifique, les deux cherchant à obtenir sa reconnaissance diplomatique ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Les nations insulaires du Pacifique (ex: Îles Salomon, Kiribati)",
    incorrect_answers: ["L'Australie", "La Nouvelle-Zélande", "La Papouasie-Nouvelle-Guinée"],
    contexte: "La 'diplomatie du chéquier' a vu plusieurs nations insulaires changer leur reconnaissance de Taïwan à la Chine, et vice-versa, en échange d'aide économique."
  },
  {
    content: "Quel est le principal enjeu géopolitique du détroit de Torres, qui sépare l'Australie de la Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La gestion de la frontière et des droits traditionnels",
    incorrect_answers: ["La présence de pirates", "La dispute sur la souveraineté des îles", "La construction d'un pont"],
    contexte: "Un traité unique permet aux habitants traditionnels des deux côtés de circuler librement sans passeport pour maintenir leurs liens culturels et familiaux."
  },
  {
    content: "En 2000, un coup d'État civil à Fidji a été mené par George Speight pour quelles raisons principales ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Pour renforcer la suprématie politique des indigènes iTaukei",
    incorrect_answers: ["Pour protester contre la corruption", "Pour instaurer une république islamique", "Pour nationaliser l'industrie sucrière"],
    contexte: "Le coup d'État a renversé le Premier ministre indo-fidjien Mahendra Chaudhry, exacerbant les tensions ethniques dans le pays."
  },
  {
    content: "L'Indonésie fait face à un mouvement séparatiste de longue date dans quelle région de l'île de Nouvelle-Guinée ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La Papouasie occidentale",
    incorrect_answers: ["Aceh", "Les Moluques", "Le Timor oriental"],
    contexte: "Le Mouvement pour une Papouasie libre (OPM) mène une lutte armée de faible intensité depuis l'intégration de la région à l'Indonésie dans les années 1960."
  },
  {
    content: "Le 'Pacific Islands Forum Fisheries Agency' (FFA) a été créé pour aider les nations insulaires à gérer et conserver quelle ressource précieuse ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Les stocks de thon",
    incorrect_answers: ["Les récifs coralliens", "Les minéraux des fonds marins", "Les réserves d'eau douce"],
    contexte: "Cette coopération permet aux petits États d'augmenter leurs revenus et de lutter contre la pêche illégale dans leurs vastes zones économiques exclusives."
  },
  {
    content: "Quelle crise constitutionnelle australienne de 1975 a vu le gouverneur général démettre de ses fonctions le Premier ministre élu ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La crise constitutionnelle de 1975 ('The Dismissal')",
    incorrect_answers: ["L'affaire Mabo", "Le schisme du parti travailliste", "L'affaire des 'spy papers'"],
    contexte: "Le gouverneur général John Kerr a révoqué le Premier ministre Gough Whitlam, un événement sans précédent qui a suscité un débat intense sur le rôle de la Couronne."
  },
  {
    content: "Quel pays du Pacifique a connu une 'guerre civile' de faible intensité connue sous le nom de 'Tanna Wars' dans les années 1980 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Vanuatu",
    incorrect_answers: ["Fidji", "Îles Salomon", "Papouasie-Nouvelle-Guinée"],
    contexte: "Juste avant l'indépendance, des mouvements sécessionnistes, comme celui de Jimmy Stevens sur l'île d'Espiritu Santo, ont menacé l'unité du nouvel État."
  },
  {
    content: "Quel pays, en libre association avec les États-Unis, abrite le site d'essais de missiles balistiques Ronald Reagan ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Les Îles Marshall",
    incorrect_answers: ["Palaos", "La Micronésie", "Guam"],
    contexte: "L'atoll de Kwajalein est une installation militaire américaine cruciale pour les tests de défense antimissile et les opérations spatiales."
  },
  {
    content: "La 'Canberra Commission on the Elimination of Nuclear Weapons' a été une initiative de quel pays en 1995 ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "Le Japon", "Le Canada"],
    contexte: "Cette commission internationale, convoquée par le gouvernement australien, a produit un rapport influent sur les étapes pratiques du désarmement nucléaire."
  },
  {
    content: "Quelle décision de la Haute Cour d'Australie en 1992 a annulé la doctrine de 'terra nullius' et reconnu pour la première fois les titres fonciers autochtones ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La décision Mabo (Mabo v Queensland)",
    incorrect_answers: ["La décision Wik", "La décision Koowarta", "La décision Franklin Dam"],
    contexte: "Cette décision historique a renversé le principe juridique selon lequel l'Australie était une terre n'appartenant à personne avant la colonisation britannique."
  },
  {
    content: "Le 'Traité de Rabaul' de 1947 est un accord informel qui a influencé la politique étrangère de quel pays pendant la Guerre Froide ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Nouvelle-Zélande", "L'Indonésie", "Les Philippines"],
    contexte: "L'accord secret entre l'Australie, les États-Unis et le Royaume-Uni définissait les responsabilités stratégiques dans la région en cas de conflit."
  },
  {
    content: "La constitution de quel pays du Pacifique contient une 'clause d'incapacité', utilisée pour démettre des présidents lors de crises politiques ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Nauru",
    incorrect_answers: ["Palaos", "Kiribati", "Vanuatu"],
    contexte: "Cette clause, relative à l'incapacité du président de gouverner, a été invoquée à plusieurs reprises dans le contexte de l'instabilité politique chronique de Nauru."
  },
  {
    content: "Quel pays a été le premier au monde à accorder le droit de vote aux femmes en 1893 ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "La Nouvelle-Zélande",
    incorrect_answers: ["L'Australie", "La Finlande", "Le Royaume-Uni"],
    contexte: "Ce jalon progressiste a été le résultat d'années de campagne menée par le mouvement des suffragettes, dirigé par des figures comme Kate Sheppard."
  },
  {
    content: "Le 'groupe de pointe mélanésien' (MSG) est une organisation sous-régionale visant à promouvoir la coopération. Quel en est un membre observateur controversé ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Le Mouvement uni pour la libération de la Papouasie occidentale (ULMWP)",
    incorrect_answers: ["Le Timor oriental", "La Nouvelle-Calédonie (FLNKS)", "L'Indonésie"],
    contexte: "L'inclusion de l'ULMWP est une source de tension avec l'Indonésie, qui est un membre associé et s'oppose aux mouvements séparatistes papous."
  },
  {
    content: "La 'crise des lettres d'or' ('Gold Letter Crisis') en 1987 à Palaos était liée à la pression pour approuver quel accord avec les États-Unis ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Le Pacte de libre association (Compact of Free Association)",
    incorrect_answers: ["Un accord sur l'établissement d'une base navale", "Un traité d'extradition", "Un accord de pêche"],
    contexte: "Le pacte entrait en conflit avec la constitution anti-nucléaire de Palaos, nécessitant un vote à 75% difficile à obtenir, ce qui a mené à une crise politique intense."
  },
  {
    content: "Quel scandale politique a éclaté en Australie en 2004, impliquant des allégations d'espionnage contre le cabinet du Timor oriental pendant les négociations sur les frontières maritimes ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "L'affaire des écoutes du Timor oriental (Australia-East Timor spying scandal)",
    incorrect_answers: ["L'affaire 'Children Overboard'", "L'affaire AWB", "Le scandale de l'huile de Mórcomo"],
    contexte: "Il a été révélé que les services secrets australiens avaient placé des micros pour obtenir un avantage dans les négociations sur les ressources pétrolières et gazières."
  },
  {
    content: "La 'doctrine Howard', du nom d'un Premier ministre australien, affirmait le droit de l'Australie à mener quoi dans la région ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Des frappes préventives contre des menaces terroristes",
    incorrect_answers: ["Des interventions humanitaires sans l'aval de l'ONU", "Un blocus économique contre les États en faillite", "L'annexion de territoires non réclamés"],
    contexte: "Annoncée après les attentats de Bali en 2002, cette doctrine a suscité de vives réactions de la part de ses voisins d'Asie du Sud-Est, qui y ont vu une menace pour leur souveraineté."
  },
  {
    content: "Le 'Fono' est le nom du parlement national de quel pays polynésien ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Océanie",
    correct_answer: "Samoa (et Tokelau)",
    incorrect_answers: ["Tonga", "Tuvalu", "Niue"],
    contexte: "Le Fono samoan a été le théâtre d'une crise constitutionnelle majeure en 2021, lorsque le parti au pouvoir a refusé de céder le pouvoir après une défaite électorale."
  },

  # AFRIQUE - GEOPOLITIQUE

  {
    content: "Quel système de ségrégation raciale a été officiellement mis en place en Afrique du Sud de 1948 à 1991 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "L'apartheid",
    incorrect_answers: ["La ségrégation", "Le colonialisme", "L'esclavage"],
    contexte: "L'apartheid était un système de développement séparé qui a institutionnalisé la discrimination raciale, maintenant la domination de la minorité blanche."
  },
  {
    content: "Quel leader anti-apartheid est devenu le premier président noir d'Afrique du Sud en 1994 après 27 ans de prison ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Nelson Mandela",
    incorrect_answers: ["Desmond Tutu", "F.W. de Klerk", "Thabo Mbeki"],
    contexte: "Figure emblématique de la lutte pour l'égalité, Nelson Mandela a mené la transition de l'Afrique du Sud vers une démocratie multiraciale."
  },
  {
    content: "Quel génocide de 1994 a vu le massacre d'environ 800 000 Tutsis et Hutus modérés par des extrémistes Hutus ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le génocide au Rwanda",
    incorrect_answers: ["Le génocide arménien", "Le génocide au Darfour", "Le génocide cambodgien"],
    contexte: "Ce massacre de masse s'est déroulé sur une période de 100 jours, il reste l'un des génocides les plus rapides et sanglants de l'histoire."
  },
  {
    content: "Quelle est la principale organisation intergouvernementale panafricaine, dont le siège est à Addis-Abeba ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "L'Union Africaine (UA)",
    incorrect_answers: ["L'ONU", "La CEDEAO", "L'Union Européenne"],
    contexte: "Succédant à l'Organisation de l'Unité Africaine (OUA), l'UA vise à promouvoir la paix, la sécurité et le développement économique du continent."
  },
  {
    content: "Quel pays a été le premier d'Afrique subsaharienne à obtenir son indépendance en 1957, sous la direction de Kwame Nkrumah ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Ghana",
    incorrect_answers: ["Le Nigeria", "Le Kenya", "L'Éthiopie"],
    contexte: "L'indépendance du Ghana a inspiré de nombreux autres mouvements de libération à travers le continent africain."
  },
  {
    content: "Le 'Printemps arabe' de 2011 a commencé dans quel pays d'Afrique du Nord, entraînant la chute du président Ben Ali ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La Tunisie",
    incorrect_answers: ["L'Égypte", "La Libye", "Le Maroc"],
    contexte: "Ce mouvement de protestation populaire contre les régimes autoritaires s'est rapidement propagé à d'autres pays du monde arabe."
  },
  {
    content: "Quelle guerre a opposé la France à un mouvement de libération nationale de 1954 à 1962, menant à l'indépendance du pays ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La Guerre d'Algérie",
    incorrect_answers: ["La Guerre d'Indochine", "La Crise de Suez", "La Guerre du Maroc"],
    contexte: "Ce conflit violent, mené par le Front de Libération Nationale (FLN), a mis fin à 132 ans de colonisation française en Algérie."
  },
  {
    content: "Quel désert, le plus grand du monde, est une zone d'instabilité géopolitique et de lutte contre les groupes djihadistes ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Sahara",
    incorrect_answers: ["Le Kalahari", "Le Namib", "Le Gobi"],
    contexte: "La région du Sahel, en bordure sud du Sahara, est particulièrement touchée par les activités de groupes comme Al-Qaïda et l'État Islamique."
  },
  {
    content: "Quel pays a été dirigé par le colonel Mouammar Kadhafi pendant 42 ans avant son renversement et sa mort en 2011 ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La Libye",
    incorrect_answers: ["L'Égypte", "L'Algérie", "Le Soudan"],
    contexte: "La chute de Kadhafi, soutenue par une intervention de l'OTAN, a plongé la Libye dans une longue période de guerre civile et d'instabilité."
  },
  {
    content: "Boko Haram est un groupe terroriste islamiste qui sévit principalement dans quel pays ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigeria",
    incorrect_answers: ["La Somalie", "Le Mali", "Le Kenya"],
    contexte: "Actif dans le nord-est du Nigeria et les pays voisins, Boko Haram est connu pour ses enlèvements de masse, dont celui des lycéennes de Chibok."
  },
  {
    content: "Quel pays est le plus jeune du monde, ayant obtenu son indépendance du Soudan en 2011 après des décennies de guerre civile ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Soudan du Sud",
    incorrect_answers: ["L'Érythrée", "La Namibie", "Le Kosovo"],
    contexte: "Malgré l'indépendance, le Soudan du Sud a rapidement sombré dans sa propre guerre civile, marquée par des violences ethniques."
  },
  {
    content: "Quel fleuve est au cœur de tensions géopolitiques entre l'Égypte, le Soudan et l'Éthiopie en raison de la construction d'un grand barrage ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Nil",
    incorrect_answers: ["Le Congo", "Le Niger", "Le Zambèze"],
    contexte: "Le Grand barrage de la Renaissance éthiopienne suscite des craintes en Égypte et au Soudan quant à leur approvisionnement en eau."
  },
  {
    content: "La 'Conférence de Berlin' de 1884-1885 a formalisé quoi ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le partage de l'Afrique entre les puissances coloniales européennes",
    incorrect_answers: ["L'abolition de l'esclavage", "La création de l'ONU", "La fin de la Première Guerre mondiale"],
    contexte: "Cette conférence a établi les règles de la colonisation, accélérant la 'course à l'Afrique' sans la participation d'aucun dirigeant africain."
  },
  {
    content: "Quel pays a été fondé par des esclaves américains affranchis au 19e siècle ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Liberia",
    incorrect_answers: ["La Sierra Leone", "Le Ghana", "Le Sénégal"],
    contexte: "Sa capitale, Monrovia, est nommée en l'honneur du président américain James Monroe. Le pays a connu deux guerres civiles dévastatrices."
  },
  {
    content: "Quel mouvement idéologique prône l'unité et la solidarité des peuples africains, et a été porté par des leaders comme Kwame Nkrumah ?",
    difficulty: "facile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le panafricanisme",
    incorrect_answers: ["Le socialisme", "Le communisme", "Le nationalisme"],
    contexte: "Le panafricanisme a été une force motrice derrière les mouvements d'indépendance et la création de l'Organisation de l'Unité Africaine."
  },
  {
    content: "La guerre du Biafra (1967-1970) était une tentative de sécession d'une région de quel pays ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Nigeria",
    incorrect_answers: ["Le Cameroun", "Le Ghana", "L'Éthiopie"],
    contexte: "La tentative de création de la République du Biafra, principalement par le peuple Igbo, a conduit à une guerre civile et une famine dévastatrices."
  },
  {
    content: "Comment nomme-t-on les deux conflits qui ont ravagé la République Démocratique du Congo de 1996 à 2003, impliquant de nombreux pays voisins ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La Première et la Deuxième Guerre du Congo",
    incorrect_answers: ["La Guerre du Kivu", "La Crise Congolaise", "La Guerre des Grands Lacs"],
    contexte: "Parfois appelée la 'Guerre Mondiale Africaine', elle a fait des millions de morts, principalement de maladies et de malnutrition."
  },
  {
    content: "Quel pays a été le théâtre de l'intervention américaine 'Black Hawk Down' en 1993, lors d'une mission de maintien de la paix de l'ONU ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La Somalie",
    incorrect_answers: ["Le Soudan", "L'Éthiopie", "Le Kenya"],
    contexte: "La bataille de Mogadiscio a été un échec pour les forces américaines et a conduit à un retrait précipité de la Somalie, alors en pleine guerre civile."
  },
  {
    content: "La CEDEAO (Communauté Économique des États de l'Afrique de l'Ouest) est une organisation régionale qui intervient souvent dans quoi ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La résolution de crises politiques et de coups d'État",
    incorrect_answers: ["La gestion de la monnaie unique", "La lutte contre la piraterie", "La protection de l'environnement"],
    contexte: "La CEDEAO a déployé des forces de maintien de la paix et imposé des sanctions pour restaurer l'ordre constitutionnel dans des pays comme le Mali ou la Gambie."
  },
  {
    content: "Quel territoire désertique est au cœur d'un conflit de souveraineté entre le Maroc et le Front Polisario soutenu par l'Algérie ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Sahara Occidental",
    incorrect_answers: ["Le Sinaï", "Le Darfour", "Le Caprivi"],
    contexte: "Ancienne colonie espagnole, son statut final est en suspens depuis 1975, l'ONU appelant à un référendum d'autodétermination."
  },
  {
    content: "Quelle politique économique, promue par le FMI et la Banque Mondiale dans les années 1980-1990, a eu des conséquences sociales profondes en Afrique ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Les Programmes d'Ajustement Structurel (PAS)",
    incorrect_answers: ["Le Plan Marshall", "La Négritude", "Le Socialisme Africain"],
    contexte: "Ces programmes imposaient des privatisations et des coupes dans les dépenses publiques en échange de prêts, souvent au détriment des services de santé et d'éducation."
  },
  {
    content: "Quel leader a dirigé le Zimbabwe de son indépendance en 1980 jusqu'à sa démission forcée en 2017 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Robert Mugabe",
    incorrect_answers: ["Morgan Tsvangirai", "Joshua Nkomo", "Emmerson Mnangagwa"],
    contexte: "Son long règne a été marqué par la lutte de libération, mais aussi par une réforme agraire controversée, l'hyperinflation et la répression politique."
  },
  {
    content: "La 'Françafrique' est un terme péjoratif désignant quoi ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le réseau d'influence politique, économique et militaire de la France dans ses anciennes colonies",
    incorrect_answers: ["Une alliance culturelle francophone", "Un programme d'aide au développement", "Une zone de libre-échange"],
    contexte: "Ce terme évoque des relations néocoloniales, des ingérences politiques et le soutien à des régimes autoritaires pour préserver les intérêts français."
  },
  {
    content: "Quel pays a connu une guerre civile de 1991 à 2002, tristement célèbre pour l'utilisation de 'diamants de sang' pour financer le conflit ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La Sierra Leone",
    incorrect_answers: ["Le Liberia", "L'Angola", "La République Démocratique du Congo"],
    contexte: "Le conflit a opposé le gouvernement au Revolutionary United Front (RUF), connu pour sa brutalité et l'enrôlement d'enfants soldats."
  },
  {
    content: "Le conflit du Darfour, qui a débuté en 2003, a opposé des groupes rebelles à des milices soutenues par le gouvernement. Dans quel pays se situe le Darfour ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Soudan",
    incorrect_answers: ["Le Tchad", "La Libye", "Le Soudan du Sud"],
    contexte: "Le conflit a été qualifié de génocide par certains, avec des accusations de nettoyage ethnique contre les populations non-arabes par les milices Janjawid."
  },
  {
    content: "Quel pays a été le seul à ne jamais avoir été colonisé, repoussant une invasion italienne à la bataille d'Adoua en 1896 ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "L'Éthiopie",
    incorrect_answers: ["Le Liberia", "L'Égypte", "Le Maroc"],
    contexte: "Cette victoire a fait de l'Éthiopie un symbole de la résistance africaine au colonialisme. (Le Liberia n'a pas été colonisé mais fondé par les USA)."
  },
  {
    content: "La 'Négritude' était un mouvement littéraire et politique fondé par des intellectuels noirs francophones. Qui en était l'une des figures de proue ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Léopold Sédar Senghor",
    incorrect_answers: ["Kwame Nkrumah", "Jomo Kenyatta", "Patrice Lumumba"],
    contexte: "Ce mouvement visait à rejeter l'assimilation culturelle et à revendiquer l'identité et la culture noires. Senghor est devenu le premier président du Sénégal."
  },
  {
    content: "Quelle organisation politique et paramilitaire a été créée par Nelson Mandela et d'autres pour lutter contre l'apartheid ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Congrès National Africain (ANC)",
    incorrect_answers: ["Le Congrès Panafricaniste d'Azanie (PAC)", "Le Parti de la Liberté Inkatha (IFP)", "Le Parti National"],
    contexte: "Initialement non-violent, l'ANC a créé une branche armée, Umkhonto we Sizwe, après le massacre de Sharpeville. Il est le parti au pouvoir depuis 1994."
  },
  {
    content: "La Crise de Suez en 1956 a été déclenchée par la nationalisation du canal par quel leader égyptien ?",
    difficulty: "intermédiaire",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Gamal Abdel Nasser",
    incorrect_answers: ["Anouar el-Sadate", "Hosni Moubarak", "Le roi Farouk"],
    contexte: "Cette décision a provoqué une intervention militaire d'Israël, de la France et du Royaume-Uni, qui a échoué sous la pression des États-Unis et de l'URSS."
  },
  {
    content: "Les Accords d'Arusha, signés en 1993, visaient à mettre fin à la guerre civile et à partager le pouvoir dans quel pays ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Le Rwanda",
    incorrect_answers: ["Le Burundi", "L'Ouganda", "La Tanzanie"],
    contexte: "L'assassinat du président Habyarimana, qui revenait de négociations, a été le déclencheur du génocide des Tutsis, rendant les accords caducs."
  },
  {
    content: "Quelle guerre a opposé l'Éthiopie et la Somalie en 1977-1978 pour le contrôle d'une région frontalière ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La Guerre de l'Ogaden",
    incorrect_answers: ["La Guerre d'indépendance de l'Érythrée", "La Guerre du Shaba", "La Guerre civile éthiopienne"],
    contexte: "Ce conflit a été une guerre par procuration de la Guerre Froide, avec l'URSS et Cuba changeant d'alliance pour soutenir l'Éthiopie contre la Somalie."
  },
  {
    content: "Quel pays d'Afrique australe a connu une longue guerre civile après son indépendance du Portugal, opposant le MPLA (soutenu par l'URSS) à l'UNITA (soutenue par les USA et l'Afrique du Sud) ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "L'Angola",
    incorrect_answers: ["Le Mozambique", "La Guinée-Bissau", "Le Cap-Vert"],
    contexte: "La guerre civile angolaise a duré de 1975 à 2002 et a été l'un des conflits les plus longs et les plus internationalisés de la Guerre Froide en Afrique."
  },
  {
    content: "La 'Commission Vérité et Réconciliation', présidée par l'archevêque Desmond Tutu, a été mise en place dans quel pays pour faire face aux crimes du passé ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "L'Afrique du Sud",
    incorrect_answers: ["Le Rwanda", "Le Liberia", "La Sierra Leone"],
    contexte: "Cette commission offrait l'amnistie aux auteurs de crimes politiquement motivés en échange d'un témoignage complet, favorisant la justice réparatrice plutôt que punitive."
  },
  {
    content: "Le 'Katanga' est une riche province minière qui a tenté de faire sécession de quel pays juste après son indépendance en 1960 ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La République Démocratique du Congo (alors Congo-Léopoldville)",
    incorrect_answers: ["La Zambie", "L'Angola", "Le Congo-Brazzaville"],
    contexte: "La crise du Katanga, soutenue par des intérêts miniers belges, a été au cœur de la 'Crise Congolaise' qui a conduit à l'assassinat de Patrice Lumumba."
  },
  {
    content: "La Cour Pénale Internationale (CPI) a été critiquée par certains dirigeants africains pour...",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Cibler de manière disproportionnée des dirigeants africains",
    incorrect_answers: ["Être trop lente dans ses jugements", "Manquer de pouvoir coercitif", "Avoir son siège en Europe"],
    contexte: "Cette critique a conduit à des menaces de retrait massif de l'Union Africaine, accusant la CPI d'être un instrument néocolonial."
  },
  {
    content: "Quel pays a connu la 'Révolution de Zanzibar' en 1964, qui a renversé le sultanat arabe et conduit à son union avec le Tanganyika ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La Tanzanie (formée par l'union)",
    incorrect_answers: ["Le Kenya", "Oman", "Les Comores"],
    contexte: "La révolution a mis fin à des siècles de domination arabe et a conduit à la création de la République-Unie de Tanzanie."
  },
  {
    content: "L'Ujamaa, ou 'socialisme africain', était la politique économique et sociale de quel leader et pays ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Julius Nyerere en Tanzanie",
    incorrect_answers: ["Léopold Senghor au Sénégal", "Sékou Touré en Guinée", "Jomo Kenyatta au Kenya"],
    contexte: "Cette politique visait à créer un modèle de développement autosuffisant basé sur la collectivisation agricole et les villages communautaires."
  },
  {
    content: "Le procès de Rivonia (1963-1964) a condamné à la prison à vie plusieurs leaders de la lutte anti-apartheid. Qui était l'accusé le plus célèbre ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "Nelson Mandela",
    incorrect_answers: ["Walter Sisulu", "Govan Mbeki", "Ahmed Kathrada"],
    contexte: "Lors de ce procès, Mandela a prononcé son célèbre discours 'I Am Prepared to Die', justifiant la lutte armée contre le régime de l'apartheid."
  },
  {
    content: "Quelle bataille de 1988 en Angola, impliquant les forces cubaines, angolaises et sud-africaines, est considérée comme un tournant ayant accéléré la fin de l'apartheid ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "La bataille de Cuito Cuanavale",
    incorrect_answers: ["La bataille de Cassinga", "La bataille du Pont 14", "L'opération Savannah"],
    contexte: "La défaite tactique de l'armée sud-africaine a brisé le mythe de son invincibilité et a conduit à l'indépendance de la Namibie."
  },
  {
    content: "La 'Guerre des Sables' de 1963 était un conflit frontalier qui a opposé quels pays d'Afrique ?",
    difficulty: "difficile",
    category: "Géopolitique",
    region: "Afrique",
    correct_answer: "L'Algérie et le Maroc",
    incorrect_answers: ["La Tunisie et la Libye", "L'Égypte et la Libye", "L'Algérie et la Tunisie"],
    contexte: "Ce conflit, né de revendications territoriales marocaines sur des zones du Sahara algérien, a jeté les bases d'une longue rivalité régionale."
  },

  # Cultures

  # EUROPE - Cultures via Gemini 2.5 Pro (VERIFEES)

  {
    content: "Quelle est la religion majoritaire dans des pays comme l'Espagne, l'Italie et la Pologne ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Le Catholicisme",
    incorrect_answers: ["Le Protestantisme", "L'Orthodoxie", "L'Islam"],
    contexte: "Le catholicisme romain est la plus grande branche du christianisme en Europe, avec le Pape au Vatican comme chef spirituel."
  },
  {
    content: "Quelle famille de langues regroupe le français, l'espagnol, l'italien et le portugais ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Les langues romanes",
    incorrect_answers: ["Les langues germaniques", "Les langues slaves", "Les langues celtiques"],
    contexte: "Les langues romanes descendent toutes du latin vulgaire parlé dans l'Empire romain."
  },
  {
    content: "Quelle famille de langues regroupe l'allemand, l'anglais et le suédois ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Les langues germaniques",
    incorrect_answers: ["Les langues romanes", "Les langues slaves", "Les langues finno-ougriennes"],
    contexte: "Les langues germaniques sont principalement parlées en Europe du Nord et de l'Ouest."
  },
  {
    content: "L'Oktoberfest est une célèbre fête de la bière qui a lieu chaque année dans quelle ville allemande ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Munich",
    incorrect_answers: ["Berlin", "Hambourg", "Cologne"],
    contexte: "L'Oktoberfest est la plus grande fête populaire du monde, attirant des millions de visiteurs en Bavière."
  },
  {
    content: "Quelle religion est majoritaire en Grèce, en Russie et en Serbie ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Le Christianisme orthodoxe",
    incorrect_answers: ["Le Catholicisme", "Le Protestantisme", "Le Judaïsme"],
    contexte: "L'Église orthodoxe s'est séparée de l'Église catholique lors du Grand Schisme de 1054."
  },
  {
    content: "Le sauna est une tradition de bain de vapeur profondément ancrée dans la culture de quel pays nordique ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "La Finlande",
    incorrect_answers: ["L'Allemagne", "Le Royaume-Uni", "La Biélorussie"],
    contexte: "En Finlande, le sauna est un lieu de socialisation, de détente et de bien-être, considéré comme une nécessité nationale."
  },
  {
    content: "Le flamenco est une danse et une musique traditionnelles de quelle région d'Espagne ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Andalousie",
    incorrect_answers: ["La Catalogne", "Le Pays Basque", "La Galice"],
    contexte: "Le flamenco est un art complexe associé au peuple gitan (gitano) d'Andalousie."
  },
  {
    content: "Quelle est la principale branche du christianisme en Scandinavie et au nord de l'Allemagne ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Le Protestantisme",
    incorrect_answers: ["Le Catholicisme", "Les Coptes", "L'Orthodoxie"],
    contexte: "La Réforme protestante, initiée par Martin Luther, a profondément remodelé le paysage religieux de l'Europe du Nord."
  },
  {
    content: "La cornemuse est l'instrument de musique emblématique de quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Écosse",
    incorrect_answers: ["L'Irlande", "Le Pays de Galles", "La France (Bretagne)"],
    contexte: "La grande cornemuse des Highlands est un symbole puissant de l'identité et de la culture écossaises."
  },
  {
    content: "Le russe, le polonais et le tchèque appartiennent à quelle grande famille de langues ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Les langues slaves",
    incorrect_answers: ["Les langues germaniques", "Les langues romanes", "Les langues baltes"],
    contexte: "Les langues slaves sont parlées par une grande partie de la population d'Europe de l'Est et des Balkans."
  },
  {
    content: "La corrida, ou course de taureaux, est une tradition controversée principalement associée à quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Espagne",
    incorrect_answers: ["Le Portugal", "L'Italie", "La France"],
    contexte: "Considérée comme un art par ses partisans et comme un acte de cruauté par ses détracteurs, la corrida est une tradition ancienne."
  },
  {
    content: "Quel peuple autochtone vit principalement dans le nord de la Norvège, de la Suède, de la Finlande et en Russie ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Les Lapons",
    incorrect_answers: ["Les Basques", "Les Bretons", "Les Inuits"],
    contexte: "Les Samis sont le seul peuple autochtone reconnu en Europe, traditionnellement connu pour l'élevage de rennes."
  },
  {
    content: "La fête de la Saint-Patrick, célébrée avec des défilés et la couleur verte, est la fête nationale de quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Irlande",
    incorrect_answers: ["L'Écosse", "Le Royaume-Uni", "Les États-Unis"],
    contexte: "Célébrée le 17 mars, elle commémore le saint patron de l'Irlande et est devenue une célébration mondiale de la culture irlandaise."
  },
  {
    content: "Le 'fado' est un genre musical mélancolique, chanté avec une guitare portugaise, typique de quelle ville ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Lisbonne",
    incorrect_answers: ["Porto", "Madrid", "Barcelone"],
    contexte: "Le fado exprime la 'saudade', un sentiment de nostalgie et de désir, et est inscrit au patrimoine culturel immatériel de l'UNESCO."
  },
  {
    content: "Quel alphabet est utilisé pour écrire le russe, le serbe et le bulgare ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'alphabet cyrillique",
    incorrect_answers: ["L'alphabet latin", "L'alphabet grec", "L'alphabet arabe"],
    contexte: "L'alphabet cyrillique a été développé au IXe siècle et est utilisé par de nombreuses langues slaves orientales et méridionales."
  },
  {
    content: "La langue basque (Euskara), parlée dans les Pyrénées, est unique en Europe parce que...",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Elle n'a aucun lien de parenté avec d'autres langues",
    incorrect_answers: ["Elle n'a pas de forme écrite", "Plus de 10M de personnes l'utilisent", "Elle descend directement du latin"],
    contexte: "Le basque est un isolat linguistique, un mystère pour les linguistes, sans lien avec les familles indo-européennes."
  },
  {
    content: "Les Roms sont un groupe ethnique nomade originaire de quelle région ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Inde",
    incorrect_answers: ["L'Égypte", "La Roumanie", "La Perse"],
    contexte: "Les Roms ont migré vers l'Europe au Moyen Âge et forment aujourd'hui l'une des plus grandes minorités ethniques du continent."
  },
  {
    content: "Le hongrois, le finnois et l'estonien appartiennent à quelle famille de langues non indo-européenne ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Les langues finno-ougriennes",
    incorrect_answers: ["Les langues turques", "Les langues sémitiques", "Les langues baltes"],
    contexte: "Cette famille linguistique est l'une des rares en Europe à ne pas appartenir au grand groupe indo-européen."
  },
  {
    content: "Le 'Walpurgisnacht', célébré avec des feux de joie, est une fête traditionnelle dans quels pays pour accueillir le printemps ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Allemagne et la Suède",
    incorrect_answers: ["L'Espagne et le Portugal", "La Grèce et l'Italie", "L'Irlande et l'Écosse"],
    contexte: "Célébrée la veille du 1er mai, cette fête païenne visait à éloigner les sorcières et les mauvais esprits."
  },
  {
    content: "La division entre catholiques et protestants a été au cœur d'un long conflit politique en quel lieu ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Irlande du Nord",
    incorrect_answers: ["La Suisse", "Les Pays-Bas", "L'Allemagne"],
    contexte: "Le conflit des 'Troubles' opposait les unionistes aux nationalistes."
  },
  {
    content: "Quelle est la plus grande religion minoritaire en France et en Allemagne ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Islam",
    incorrect_answers: ["Le Judaïsme", "Le Bouddhisme", "L'Hindouisme"],
    contexte: "L'immigration en provenance de pays musulmans, notamment de Turquie et d'Afrique du Nord, a fait de l'Islam la deuxième religion."
  },
  {
    content: "Le 'schisme de 1054' a officiellement divisé quelles deux grandes branches du christianisme ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Église catholique  et l'Église orthodoxe ",
    incorrect_answers: ["Le Catholicisme et le Protestantisme", "L'Arianisme et le Catholicisme", "Le Sunnisme et le Chiisme"],
    contexte: "Cette séparation, ou Grand Schisme, a formalisé des siècles de divergences théologiques et politiques entre Rome et Constantinople."
  },
  {
    content: "Les langues gaéliques font partie de quelle famille linguistique ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Les langues celtiques",
    incorrect_answers: ["Les langues germaniques", "Les langues romanes", "Les langues nordiques"],
    contexte: "Les langues celtiques, autrefois parlées dans une grande partie de l'Europe, ne survivent aujourd'hui qu'aux franges atlantiques."
  },
  {
    content: "Le 'Midsommar' est une fête majeure en Suède célébrant quoi ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Le solstice d'été",
    incorrect_answers: ["Le début du printemps", "La fête nationale", "Les récoltes d'automne"],
    contexte: "C'est l'une des fêtes les plus importantes de l'année en Suède, célébrée avec des danses autour d'un mât fleuri."
  },
  {
    content: "La Sorabe est une langue minoritaire slave parlée dans quelle région d'Allemagne ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "La Lusace (Saxe et Brandebourg)",
    incorrect_answers: ["La Bavière", "La Forêt-Noire", "La Frise"],
    contexte: "Les Sorabes sont une minorité slave occidentale reconnue qui a préservé sa langue et ses coutumes uniques."
  },
  {
    content: "La 'Sinterklaas', une fête où Saint Nicolas distribue des cadeaux, est une tradition majeure dans quel pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Les Pays-Bas",
    incorrect_answers: ["L'Allemagne", "La Pologne", "La Norvège"],
    contexte: "Célébrée début décembre, cette fête est plus importante que Noël pour de nombreuses familles néerlandaises."
  },
  {
    content: "En Suisse, quelle n'est PAS l'une des quatre langues nationales ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'anglais",
    incorrect_answers: ["L'allemand", "Le français", "Le romanche"],
    contexte: "Les quatre langues nationales de la Suisse sont l'allemand, le français, l'italien et le romanche."
  },
  {
    content: "Le 'Krampus' est une figure folklorique bestiale qui accompagne Saint Nicolas pour punir les enfants désobéissants, dans quelle région alpine ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Autriche et la Bavière",
    incorrect_answers: ["La Suisse", "La France", "L'Italie du Nord"],
    contexte: "Cette tradition païenne a été intégrée dans les célébrations chrétiennes et connaît un regain de popularité."
  },
  {
    content: "Quelle est la religion d'État de l'Islande, du Danemark et de la Norvège ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Le luthéranisme",
    incorrect_answers: ["Le catholicisme", "Aucune", "L'orthodoxie"],
    contexte: "Ces pays ont des Églises nationales luthériennes, bien que la liberté de religion soit garantie et que la sécularisation progresse."
  },
  {
    content: "Le frison est une langue germanique minoritaire parlée principalement dans quelle région des Pays-Bas ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "La Frise (Fryslân)",
    incorrect_answers: ["La Hollande", "La Zélande", "Le Brabant"],
    contexte: "Le frison est la langue vivante la plus proche de l'anglais ancien et est reconnu comme langue officielle dans la province de Frise."
  },
  {
    content: "La 'Tarentelle' est une danse folklorique rapide du sud de l'Italie qui, selon la légende, était censée guérir quoi ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "La morsure d'une tarentule",
    incorrect_answers: ["Le chagrin d'amour", "La peste", "La folie"],
    contexte: "On croyait que la danse frénétique permettait d'expulser le venin de l'araignée par la transpiration."
  },
  {
    content: "Les Cathares étaient les adeptes d'un mouvement chrétien considéré comme hérétique et anéanti lors d'une croisade. Dans quelle région de France vivaient-ils ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Le Languedoc",
    incorrect_answers: ["La Bretagne", "La Provence", "La Normandie"],
    contexte: "La croisade des Albigeois (1209-1229) a brutalement mis fin au catharisme, une forme de dualisme gnostique."
  },
  {
    content: "Quel est l'un des seuls pays d'Europe à majorité musulmane ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'Albanie",
    incorrect_answers: ["La Serbie", "La Bulgarie", "La Grèce"],
    contexte: "L'héritage de l'Empire ottoman a laissé une importante population musulmane dans les Balkans, notamment en Albanie, au Kosovo et en Bosnie-Herzégovine."
  },
  {
    content: "Le ladin et le frioulan sont deux langues romanes minoritaires parlées dans quelle région montagneuse d'Italie ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Les Dolomites et le Frioul",
    incorrect_answers: ["La Sicile", "La Sardaigne", "La Toscane"],
    contexte: "Ces langues rhéto-romanes sont des vestiges de dialectes latins alpins et sont reconnues comme langues minoritaires."
  },
  {
    content: "La 'Sizain', ou chant polyphonique géorgien, est unique et a été reconnue par l'UNESCO. Qu'est-ce qui la caractérise ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Une technique de yodel et des harmonies complexes",
    incorrect_answers: ["L'utilisation d'un seul instrument", "Le chant à une seule voix", "Des paroles uniquement religieuses"],
    contexte: "Cette tradition de chant polyphonique est l'une des plus anciennes au monde, antérieure à l'introduction du christianisme en Géorgie."
  },
  {
    content: "L'aroumain est une langue romane orientale parlée par des communautés dispersées dans quelle région ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Les Balkans (Grèce, Albanie, Macédoine du Nord)",
    incorrect_answers: ["L'Espagne", "Le sud de la France", "La Roumanie"],
    contexte: "Les Aroumains, ou Valaques, sont considérés comme des descendants de populations locales romanisées. Leur langue est en voie de disparition."
  },
  {
    content: "Le 'calcio storico' est une forme ancienne et violente de football jouée chaque année dans quelle ville italienne ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "Florence",
    incorrect_answers: ["Rome", "Sienne", "Vérone"],
    contexte: "Ce sport combine des éléments de football, de rugby et de lutte. Les équipes représentent les quatre quartiers historiques de Florence."
  },
  {
    content: "Les Vieux-croyants sont un groupe religieux qui s'est séparé de l'Église orthodoxe de quel pays au 17e siècle ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "La Russie",
    incorrect_answers: ["La Grèce", "La Serbie", "La Roumanie"],
    contexte: "Ils ont rejeté les réformes liturgiques du patriarche Nikon et ont été persécutés pendant des siècles, formant des communautés isolées."
  },
  {
    content: "Le manx, une langue celtique, a connu une renaissance après la mort de son dernier locuteur natif en 1974. Sur quelle île est-elle parlée ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Europe",
    correct_answer: "L'île de Man",
    incorrect_answers: ["L'île de Wight", "Les Hébrides", "Les îles Anglo-Normandes"],
    contexte: "L'île de Man, une dépendance de la Couronne britannique, a mené des efforts couronnés de succès pour faire revivre sa langue indigène."
  },

  # AFRIQUE - Cultures (VERIFIEES)

  {
    content: "Quelle est la religion majoritaire en Afrique du Nord, notamment en Égypte, en Algérie et au Maroc ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Islam",
    incorrect_answers: ["Le Christianisme", "Le Judaïsme", "L'Animisme"],
    contexte: "L'Islam s'est répandu en Afrique du Nord avec les conquêtes arabes à partir du VIIe siècle et est aujourd'hui la foi prédominante dans la région."
  },
  {
    content: "Le swahili est une langue bantoue largement parlée dans quelle région d'Afrique ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Afrique de l'Est",
    incorrect_answers: ["L'Afrique de l'Ouest", "L'Afrique du Nord", "L'Afrique australe"],
    contexte: "Le swahili est la langue officielle de la Tanzanie, du Kenya et de l'Ouganda, et sert de lingua franca dans une grande partie de la région des Grands Lacs."
  },
  {
    content: "Quel groupe ethnique est principalement associé à la région du KwaZulu-Natal en Afrique du Sud ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Les Zoulous",
    incorrect_answers: ["Les Xhosa", "Les Sotho", "Les Afrikaners"],
    contexte: "Les Zoulous sont le plus grand groupe ethnique d'Afrique du Sud, célèbres pour leur histoire militaire et leur roi Chaka."
  },
  {
    content: "Quelle religion est majoritaire dans la majeure partie de l'Afrique subsaharienne ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le Christianisme",
    incorrect_answers: ["L'Islam", "L'Animisme", "L'Hindouisme"],
    contexte: "Le christianisme, introduit par les missionnaires européens, est aujourd'hui la religion la plus répandue au sud du Sahara, souvent mêlé à des croyances traditionnelles."
  },
  {
    content: "L'arabe est la langue officielle de nombreux pays situés dans quelle grande région africaine ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Afrique du Nord",
    incorrect_answers: ["L'Afrique de l'Ouest", "L'Afrique Centrale", "L'Afrique australe"],
    contexte: "L'arabe est la langue de l'administration et de la religion dans des pays comme l'Égypte, l'Algérie, le Maroc et la Tunisie."
  },
  {
    content: "Les Massaïs sont un groupe ethnique semi-nomade célèbre pour ses guerriers et son élevage de bétail. Dans quels deux pays vivent-ils principalement ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le Kenya et la Tanzanie",
    incorrect_answers: ["L'Éthiopie et la Somalie", "L'Afrique du Sud et le Zimbabwe", "Le Nigeria et le Ghana"],
    contexte: "Les Massaïs sont connus pour leurs vêtements rouges distinctifs (shuka) et leurs traditions culturelles préservées."
  },
  {
    content: "Le 'fufu' (ou 'ugali') est un aliment de base, une sorte de pâte ou de purée, consommé dans de vastes régions de quelle partie de l'Afrique ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Afrique de l'Ouest et Centrale",
    incorrect_answers: ["L'Afrique du Nord", "L'Afrique australe", "La Corne de l'Afrique"],
    contexte: "Fabriqué à partir de manioc, d'igname ou de maïs, le fufu est généralement consommé avec des soupes et des ragoûts."
  },
  {
    content: "Quelle langue est la langue officielle de l'Angola et du Mozambique ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le portugais",
    incorrect_answers: ["L'espagnol", "Le français", "L'anglais"],
    contexte: "Ces deux pays sont d'anciennes colonies du Portugal et font partie de la Communauté des pays de langue portugaise."
  },
  {
    content: "La culture du vaudou est une culture traditionnelle originaire de quelle région d'Afrique ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Afrique de l'Ouest (notamment le Bénin et le Togo)",
    incorrect_answers: ["L'Afrique de l'Est", "L'Afrique du Nord", "L'Afrique Centrale"],
    contexte: "Le vaudou s'est ensuite propagé dans les Amériques (notamment en Haïti) avec la traite négrière."
  },
  {
    content: "Les Berbères (Amazighs) sont le peuple autochtone de quelle région ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Afrique du Nord (Maghreb)",
    incorrect_answers: ["Le Sahel", "La Corne de l'Afrique", "L'Afrique de l'Ouest"],
    contexte: "Les Berbères ont leur propre langue (le tamazight) et leur propre culture, antérieures à l'arrivée des Arabes."
  },
  {
    content: "Le 'kente' est un tissu coloré aux motifs complexes, tissé à la main par quel groupe ethnique ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Les Ashantis (au Ghana)",
    incorrect_answers: ["Les Yorubas (au Nigeria)", "Les Zoulous (en Afrique du Sud)", "Les Wolofs (au Sénégal)"],
    contexte: "Le kente était autrefois réservé à la royauté et est aujourd'hui un symbole important de l'identité ghanéenne et africaine."
  },
  {
    content: "Quel instrument de musique, une harpe-luth à 21 cordes, est emblématique de la culture mandingue en Afrique de l'Ouest ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "La kora",
    incorrect_answers: ["Le djembé", "Le balafon", "La mbira"],
    contexte: "La kora est traditionnellement jouée par les griots, qui sont des conteurs, des historiens et des musiciens."
  },
  {
    content: "Quelle grande famille linguistique regroupe des centaines de langues parlées dans la majeure partie de l'Afrique subsaharienne, dont le zoulou et le swahili ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Les langues bantoues",
    incorrect_answers: ["Les langues nilo-sahariennes", "Les langues afro-asiatiques", "Les langues khoïsan"],
    contexte: "L'expansion bantoue est l'une des migrations les plus importantes de l'histoire africaine, diffusant l'agriculture et la métallurgie."
  },
  {
    content: "L'injera, une grande crêpe aigre, est l'aliment de base et le plat national de quels deux pays de la Corne de l'Afrique ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Éthiopie et l'Érythrée",
    incorrect_answers: ["La Somalie et Djibouti", "Le Soudan et le Soudan du Sud", "Le Kenya et la Tanzanie"],
    contexte: "L'injera est fabriquée à partir de la farine de teff, une céréale ancienne, et sert à la fois d'assiette et d'ustensile."
  },
  {
    content: "Quelle langue européenne est largement utilisée comme langue officielle et de communication en Afrique de l'Ouest et Centrale ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le français",
    incorrect_answers: ["L'anglais", "Le portugais", "L'espagnol"],
    contexte: "L'héritage colonial français a laissé le français comme langue officielle dans de nombreux pays comme le Sénégal, la Côte d'Ivoire et la RDC."
  },
  {
    content: "Les Xhosa sont un groupe ethnique d'Afrique du Sud. Leur langue est célèbre pour...",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Ses consonnes à clics",
    incorrect_answers: ["N'avoir que trois voyelles", "Être une langue tonale", "N'avoir pas de pluriel"],
    contexte: "Le xhosa, comme le zoulou, a incorporé des sons à clics des langues khoïsan voisines. Nelson Mandela était un Xhosa."
  },
  {
    content: "L'Église éthiopienne orthodoxe est l'une des plus anciennes Églises chrétiennes du monde. Quelle est sa particularité ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Elle a son propre pape et des traditions juives",
    incorrect_answers: ["Elle ne reconnaît pas Jésus", "Elle n'utilise pas de croix", "Ses services sont en latin"],
    contexte: "Elle fait partie des Églises orthodoxes orientales et conserve des pratiques comme la circoncision et des restrictions alimentaires."
  },
  {
    content: "Le 'wolof' est la langue principale de quel pays d'Afrique de l'Ouest ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le Sénégal",
    incorrect_answers: ["Le Nigeria", "Le Ghana", "La Côte d'Ivoire"],
    contexte: "Bien que le français soit la langue officielle, le wolof sert de lingua franca et est parlé par la majorité de la population."
  },
  {
    content: "Le 'braai' est une coutume sociale importante en Afrique du Sud. De quoi s'agit-il ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Un barbecue",
    incorrect_answers: ["Une danse traditionnelle", "Une cérémonie de mariage", "La lecture pour aveugles"],
    contexte: "Le braai est plus qu'un simple barbecue ; c'est un événement social qui rassemble les gens de toutes les communautés."
  },
  {
    content: "Quel peuple nomade du Sahara et du Sahel est célèbre pour ses hommes portant un voile indigo, les 'hommes bleus' ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Les Touaregs",
    incorrect_answers: ["Les Peuls", "Les Berbères", "Les Maures"],
    contexte: "Les Touaregs sont un peuple berbère avec une société matrilinéaire et leur propre écriture, le tifinagh."
  },
  {
    content: "L'afrikaans est une langue germanique dérivée principalement de quelle langue européenne ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le néerlandais",
    incorrect_answers: ["L'allemand", "L'anglais", "Le français"],
    contexte: "Parlé en Afrique du Sud et en Namibie, l'afrikaans s'est développé parmi les descendants des colons néerlandais (les Boers)."
  },
  {
    content: "Le 'Grand Zimbabwe' était la capitale d'un grand royaume médiéval construit par quel peuple ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le peuple Shona",
    incorrect_answers: ["Le peuple Zoulou", "Le peuple Swazi", "Le peuple Ndebele"],
    contexte: "Les ruines de pierre du Grand Zimbabwe témoignent de la sophistication de cette civilisation qui a prospéré grâce au commerce de l'or."
  },
  {
    content: "Le 'Nollywood' est le surnom de l'industrie cinématographique prolifique de quel pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le Nigeria",
    incorrect_answers: ["L'Afrique du Sud", "La Namibie", "L'Égypte"],
    contexte: "Nollywood est la deuxième plus grande industrie cinématographique au monde en termes de nombre de films produits, après Bollywood."
  },
  {
    content: "Les Dogons sont un peuple du Mali célèbre pour...",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Leurs connaissances astronomiques et leurs masques de cérémonie",
    incorrect_answers: ["Leurs pyramides en terre", "Leurs compétences en navigation", "Leur musique polyphonique"],
    contexte: "La cosmogonie complexe des Dogons, qui inclurait des connaissances sur l'étoile Sirius B, a fasciné les anthropologues."
  },
  {
    content: "La religion rastafari, bien que développée en Jamaïque, vénère quel empereur éthiopien comme une figure messianique ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Haïlé Sélassié Ier",
    incorrect_answers: ["Ménélik II", "Théodros II", "Bob Marley"],
    contexte: "Les rastafaris considéraient Haïlé Sélassié comme une incarnation de Dieu (Jah), en raison de son titre de 'Roi des Rois'."
  },
  {
    content: "Le 'lobola' ou 'dot' est une coutume dans de nombreuses cultures d'Afrique australe. Qu'est-ce que c'est ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le prix de la fiancée, souvent payé en bétail",
    incorrect_answers: ["Un rite de passage à l'âge adulte", "Une cérémonie de funérailles", "Un festival des récoltes"],
    contexte: "Le lobola est considéré comme un moyen d'unir les familles de la mariée et du marié."
  },
  {
    content: "Les Yorubas sont l'un des plus grands groupes ethniques d'Afrique, vivant principalement dans quels deux pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Le Nigeria et le Bénin",
    incorrect_answers: ["Le Ghana et le Togo", "Le Cameroun et le Gabon", "Le Sénégal et la Gambie"],
    contexte: "La religion yoruba et ses divinités (Orishas) ont eu une influence majeure sur des religions des Amériques comme la Santería."
  },
  {
    content: "Quel est le seul pays d'Afrique où l'espagnol est une langue officielle ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "La Guinée Équatoriale",
    incorrect_answers: ["Le Sahara Occidental", "Le Maroc", "L'Angola"],
    contexte: "Ancienne colonie espagnole, la Guinée Équatoriale a également adopté le français et le portugais comme langues officielles."
  },
  {
    content: "Les Coptes sont la principale minorité religieuse de quel pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Égypte",
    incorrect_answers: ["L'Éthiopie", "Le Soudan", "La Libye"],
    contexte: "Les Coptes sont les descendants des anciens Égyptiens et forment l'une des plus anciennes communautés chrétiennes au monde."
  },
  {
    content: "Les San (ou Bochimans) sont un peuple indigène d'Afrique australe connu pour...",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Leur mode de vie de chasseurs-cueilleurs et leurs langues à clics",
    incorrect_answers: ["Leur agriculture en terrasses", "Leurs empires centralisés", "Leur tradition de momification"],
    contexte: "Considérés comme l'un des plus anciens peuples du monde, leur art rupestre et leur connaissance de l'environnement sont exceptionnels."
  },
  {
    content: "L'amharique est la langue de travail officielle et une langue sémitique parlée dans quel pays ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Éthiopie",
    incorrect_answers: ["L'Érythrée", "La Somalie", "Le Soudan"],
    contexte: "L'amharique s'écrit avec son propre alphabet, le Ge'ez, qui est un alphasyllabaire."
  },
  {
    content: "Le 'griot' est une figure sociale importante en Afrique de l'Ouest. Quel est son rôle ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Un poète, musicien et gardien de la tradition orale",
    incorrect_answers: ["Un chef de guerre", "Un prêtre animiste", "Un juge de village"],
    contexte: "Les griots sont des 'bibliothèques vivantes', transmettant l'histoire, la généalogie et les contes de génération en génération."
  },
  {
    content: "Les Pygmées sont des peuples de chasseurs-cueilleurs caractérisés par leur petite taille, qui vivent principalement dans...",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "La forêt tropicale du bassin du Congo",
    incorrect_answers: ["Le désert du Kalahari", "Les hauts plateaux éthiopiens", "La savane d'Afrique de l'Est"],
    contexte: "Des groupes comme les Baka et les Mbuti sont confrontés à de graves menaces, notamment la déforestation et la discrimination."
  },
  {
    content: "Quelle est la particularité du calendrier éthiopien ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Il compte 13 mois et a environ 7 ans de retard sur le calendrier grégorien",
    incorrect_answers: ["Il est purement lunaire", "Il ne compte que 10 mois", "Il n'est pas utilisé en Ethiopie"],
    contexte: "Le calendrier éthiopien est basé sur l'ancien calendrier copte. Le 13ème mois ne compte que 5 ou 6 jours."
  },
  {
    content: "Le malgache, la langue de Madagascar, n'est pas apparentée aux langues africaines mais à quelle famille de langues ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Les langues austronésiennes (comme le malais)",
    incorrect_answers: ["Les langues bantoues", "Les langues indo-européennes", "Les langues sémitiques"],
    contexte: "Cela reflète le peuplement de l'île par des marins venus d'Asie du Sud-Est il y a plus de 1500 ans."
  },
  {
    content: "La 'Cérémonie du thé' est une coutume majeure au Japon, mais quel pays africain a une cérémonie du thé tout aussi complexe et socialement importante ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "La Mauritanie (et une grande partie du Sahel)",
    incorrect_answers: ["Le Rwanda", "L'Afrique du Sud", "Le Kenya"],
    contexte: "La cérémonie du thé mauritanien implique la préparation et la dégustation de trois verres de thé à la menthe, chacun avec une signification différente."
  },
  {
    content: "Les 'falashas' ou 'Beta Israel' sont une communauté juive originaire de quel pays ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Éthiopie",
    incorrect_answers: ["Le Maroc", "La Tunisie", "L'Afrique du Sud"],
    contexte: "La majorité de cette communauté a été transportée par avion en Israël dans les années 1980 et 1990 lors d'opérations secrètes."
  },
  {
    content: "L'art des bronzes d'Ifé et du Bénin, d'une grande sophistication technique, est associé à quels peuples et pays ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Les peuples Yoruba et Edo (Nigeria)",
    incorrect_answers: ["Les peuples Ashanti et Fanti (Ghana)", "Les peuples Bamoun et Bamiléké (Cameroun)", "Les peuples Dogon et Bambara (Mali)"],
    contexte: "Ces sculptures en laiton et en bronze, dont beaucoup ont été pillées par les Britanniques, sont considérées comme des chefs-d'œuvre de l'art mondial."
  },
  {
    content: "Les langues khoïsan, parlées par les San et les Khoikhoi, sont presque uniques au monde en raison de leur utilisation intensive de quoi ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "Les consonnes à clics comme phonèmes de base",
    incorrect_answers: ["Un système de voyelles à 12 tons", "L'absence de verbes", "Une grammaire basée sur les gestes"],
    contexte: "Ces sons, souvent transcrits par '!', 'ǂ' ou '//', sont fondamentaux dans ces langues mais n'ont été adoptés que secondairement par quelques langues bantoues."
  },
  {
    content: "Le 'Zar' est un culte de possession spirituelle pratiqué principalement par les femmes dans quels pays ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Afrique",
    correct_answer: "L'Égypte, le Soudan et l'Éthiopie",
    incorrect_answers: ["Le Nigeria, le Ghana et le Bénin", "L'Afrique du Sud, le Lesotho et Eswatini", "Le Maroc, l'Algérie et la Tunisie"],
    contexte: "À travers des cérémonies de musique et de danse, les adeptes cherchent à apaiser les esprits qui les possèdent pour guérir des maladies."
  },

  # Amérique - CULTURES

  {
    content: "Quelle est la religion majoritaire sur le continent américain, introduite par la colonisation européenne ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Christianisme",
    incorrect_answers: ["L'Islam", "Le Judaïsme", "Les religions autochtones"],
    contexte: "Le christianisme, principalement le catholicisme en Amérique latine et le protestantisme en Amérique du Nord, est la foi prédominante."
  },
  {
    content: "Quelle langue romane est la plus parlée en Amérique du Sud ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["Le portugais", "Le français", "L'italien"],
    contexte: "À l'exception notable du Brésil, la plupart des pays d'Amérique du Sud ont l'espagnol comme langue officielle, héritage de la colonisation."
  },
  {
    content: "Quelle langue germanique est la langue la plus parlée aux États-Unis et au Canada ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "L'anglais",
    incorrect_answers: ["L'allemand", "Le néerlandais", "Le français"],
    contexte: "L'anglais est la langue de facto des États-Unis et l'une des deux langues officielles du Canada."
  },
  {
    content: "Thanksgiving (Action de grâce) est une fête majeure célébrée principalement dans quels deux pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Les États-Unis et le Canada",
    incorrect_answers: ["Le Mexique et le Brésil", "Le Royaume-Uni et l'Australie", "L'Argentine et le Chili"],
    contexte: "Célébrée en octobre au Canada et en novembre aux États-Unis, cette fête commémore traditionnellement les récoltes et la gratitude."
  },
  {
    content: "Le Carnaval de Rio, avec ses défilés de samba grandioses, est une célébration célèbre dans quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Brésil",
    incorrect_answers: ["L'Argentine", "La Colombie", "Le Mexique"],
    contexte: "Le Carnaval est la plus grande fête du Brésil, un mélange de traditions européennes, africaines et indigènes."
  },
  {
    content: "Quelle langue romane est la langue officielle du Brésil ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le portugais",
    incorrect_answers: ["L'espagnol", "Le français", "L'italien"],
    contexte: "Le Brésil est le plus grand pays lusophone du monde, avec une population bien plus importante que celle du Portugal."
  },
  {
    content: "Le 'Día de los Muertos' (Jour des Morts) est une fête colorée célébrant les défunts, principalement associée à quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Mexique",
    incorrect_answers: ["L'Espagne", "Le Pérou", "La Colombie"],
    contexte: "Cette tradition syncrétique mélange les croyances catholiques avec les rituels indigènes préhispaniques."
  },
  {
    content: "Les Inuits sont le peuple autochtone des régions arctiques de quels territoires ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Canada, le Groenland et l'Alaska",
    incorrect_answers: ["La Patagonie", "La Sibérie", "La Scandinavie"],
    contexte: "Les Inuits ont développé des techniques de survie uniques adaptées à l'un des environnements les plus hostiles de la planète."
  },
  {
    content: "La 'Pampa' est une vaste plaine associée à la figure du 'gaucho', le cow-boy de quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "L'Argentine",
    incorrect_answers: ["Le Brésil", "Le Mexique", "Les États-Unis"],
    contexte: "Les gauchos sont un symbole de la culture argentine, célèbres pour leur habileté à cheval et leur indépendance."
  },
  {
    content: "Quelle langue est, aux côtés de l'anglais, l'une des deux langues officielles du Canada ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le français",
    incorrect_answers: ["L'espagnol", "L'allemand", "Le gaélique"],
    contexte: "Le français est la langue majoritaire dans la province de Québec et est parlé par des communautés à travers le pays."
  },
  {
    content: "La 'Santería' et le 'Candomblé' sont des religions syncrétiques qui mélangent le catholicisme avec les croyances traditionnelles de quel groupe ethnique ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Les Yorubas (d'Afrique de l'Ouest)",
    incorrect_answers: ["Les Incas", "Les Aztèques", "Les Mayas"],
    contexte: "Ces religions se sont développées parmi les esclaves africains à Cuba (Santería) et au Brésil (Candomblé)."
  },
  {
    content: "Le 'pow-wow' est un rassemblement social et cérémoniel important pour quels peuples ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Les peuples autochtones d'Amérique du Nord (Amérindiens)",
    incorrect_answers: ["Les Maoris", "Les Samis", "Les Aborigènes d'Australie"],
    contexte: "Les pow-wows sont des occasions de célébrer la culture à travers le chant, la danse et la socialisation."
  },
  {
    content: "La 'Mardi Gras' est une grande célébration de carnaval qui a lieu dans quelle ville américaine, célèbre pour son héritage français ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "La Nouvelle-Orléans (New Orleans)",
    incorrect_answers: ["Miami", "Las Vegas", "Chicago"],
    contexte: "Le Mardi Gras de la Nouvelle-Orléans est célèbre pour ses défilés, ses bals masqués et ses traditions uniques."
  },
  {
    content: "Le 'hockey sur glace' est considéré comme le sport national de quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Canada",
    incorrect_answers: ["Les États-Unis", "La Russie", "La Suède"],
    contexte: "Le hockey est une passion nationale au Canada, du niveau amateur à la ligue professionnelle (LNH)."
  },
  {
    content: "Le Quechua est une langue indigène encore largement parlée dans quelle chaîne de montagnes ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "La Cordillère des Andes",
    incorrect_answers: ["Les Montagnes Rocheuses", "La Sierra Madre", "Les Appalaches"],
    contexte: "Le quechua était la langue de l'Empire inca et est aujourd'hui une langue officielle au Pérou et en Bolivie."
  },
  {
    content: "Les Mennonites et les Amish sont des communautés religieuses anabaptistes qui parlent un dialecte de quelle langue ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "L'allemand (allemand de Pennsylvanie)",
    incorrect_answers: ["Le néerlandais", "L'anglais", "Le suisse allemand"],
    contexte: "Ces communautés, principalement aux États-Unis et au Canada, sont connues pour leur mode de vie simple et leur refus de la technologie moderne."
  },
  {
    content: "La Capoeira est un art martial afro-brésilien qui combine des éléments de danse et d'acrobatie. Par qui a-t-elle été développée ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Par les esclaves africains au Brésil",
    incorrect_answers: ["Par les indigènes d'Amazonie", "Par les immigrants portugais", "Par les moines bouddhistes"],
    contexte: "La Capoeira était une façon pour les esclaves de dissimuler la pratique du combat sous une apparence de danse."
  },
  {
    content: "Quelle est la deuxième langue la plus parlée aux États-Unis ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "L'espagnol",
    incorrect_answers: ["Le chinois", "Le français", "L'allemand"],
    contexte: "En raison d'une importante immigration en provenance d'Amérique latine, l'espagnol est parlé par des dizaines de millions d'Américains."
  },
  {
    content: "Le 'calypso' et le 'soca' sont des genres musicaux qui trouvent leur origine dans quel pays insulaire des Caraïbes ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Trinité-et-Tobago",
    incorrect_answers: ["La Jamaïque", "Cuba", "Haïti"],
    contexte: "Le calypso est connu pour ses paroles satiriques et ses commentaires sociaux, tandis que la soca est plus axée sur la danse."
  },
  {
    content: "Le peuple 'Garifuna', qui a une culture et une langue uniques, est issu du métissage entre quels groupes ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Les Arawaks, les Kalinagos et les Africains",
    incorrect_answers: ["Les Espagnols et les Mayas", "Les Français et les Aztèques", "Les Incas et les Portugais"],
    contexte: "Les Garifunas vivent principalement sur la côte caraïbe de l'Amérique centrale (Honduras, Belize, Guatemala)."
  },
  {
    content: "Le 'vaudou haïtien' est une religion syncrétique qui combine les croyances d'Afrique de l'Ouest avec quel autre système de croyance ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Catholicisme romain",
    incorrect_answers: ["Le Protestantisme", "L'Islam", "Le Judaïsme"],
    contexte: "Les esclaves ont associé leurs esprits (lwas) aux saints catholiques pour pouvoir continuer à pratiquer leur religion en secret."
  },
  {
    content: "Les 'cinco de Mayo' est une fête qui commémore une victoire militaire mexicaine contre quelle puissance européenne ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "La France",
    incorrect_answers: ["L'Espagne", "L'Angleterre", "L'Autriche"],
    contexte: "Elle célèbre la victoire inattendue du Mexique à la bataille de Puebla en 1862. Elle est plus célébrée aux États-Unis qu'au Mexique."
  },
  {
    content: "Quel peuple autochtone a formé un grand empire dans les Andes avant l'arrivée des Espagnols ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Les Incas",
    incorrect_answers: ["Les Aztèques", "Les Mayas", "Les Mapuches"],
    contexte: "L'Empire inca était le plus grand empire de l'Amérique précolombienne, avec Cusco comme capitale."
  },
  {
    content: "Le protestantisme évangélique connaît une croissance très rapide, en particulier dans quelle région des Amériques ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "L'Amérique centrale et le Brésil",
    incorrect_answers: ["Le Canada", "Les Caraïbes", "L'Argentine"],
    contexte: "Dans des pays comme le Guatemala et le Honduras, le protestantisme évangélique concurrence désormais le catholicisme."
  },
  {
    content: "Le créole haïtien est une langue basée principalement sur quelle langue européenne ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le français",
    incorrect_answers: ["L'espagnol", "Le portugais", "L'anglais"],
    contexte: "Le créole haïtien a également été influencé par des langues d'Afrique de l'Ouest et des langues indigènes."
  },
  {
    content: "La 'Pachamama' est une divinité importante, représentant la Terre-Mère, pour quels peuples ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Les peuples andins (Quechuas, Aymaras)",
    incorrect_answers: ["Les peuples amazoniens", "Les peuples d'Amérique du Nord", "Les peuples des Caraïbes"],
    contexte: "Le culte de la Pachamama reste très vivant en Bolivie, au Pérou et en Équateur, souvent en syncrétisme avec le christianisme."
  },
  {
    content: "Le 'reggae' est un style musical mondialement connu qui a émergé dans quel pays des Caraïbes ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "La Jamaïque",
    incorrect_answers: ["Cuba", "Haïti", "Trinité-et-Tobago"],
    contexte: "Popularisé par des artistes comme Bob Marley, le reggae est étroitement lié au mouvement religieux et social rastafari."
  },
  {
    content: "Quel groupe indigène était dominant dans la vallée de Mexico au moment de l'arrivée des conquistadors espagnols ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Les Aztèques",
    incorrect_answers: ["Les Mayas", "Les Incas", "Les Zapotèques"],
    contexte: "L'Empire aztèque, avec sa capitale Tenochtitlan, était une puissance militaire et politique majeure."
  },
  {
    content: "La 'cabane à sucre' est une tradition printanière associée à la récolte de la sève d'érable dans quelle province canadienne ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Québec",
    incorrect_answers: ["L'Ontario", "La Colombie-Britannique", "L'Alberta"],
    contexte: "C'est une tradition sociale où les familles se réunissent pour manger des repas copieux arrosés de sirop d'érable frais."
  },
  {
    content: "Le 'Spanglish' est un sociolecte qui mélange quelles deux langues ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "L'espagnol (Spanish) et l'anglais (English)",
    incorrect_answers: ["L'espagnol et le portugais", "L'espagnol et le français", "L'espagnol et le néerlandais"],
    contexte: "Le Spanglish est couramment parlé dans les communautés hispaniques des États-Unis, reflétant un bilinguisme dynamique."
  },
  {
    content: "Le peuple 'Mapuche' est le principal groupe indigène du sud de quels deux pays ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Chili et l'Argentine",
    incorrect_answers: ["Le Pérou et la Bolivie", "Le Brésil et le Paraguay", "L'Équateur et la Colombie"],
    contexte: "Les Mapuches sont connus pour avoir résisté avec succès à l'expansion de l'Empire inca puis de l'Empire espagnol pendant des siècles."
  },
  {
    content: "Le 'Gullah' ou 'Geechee' est une langue créole parlée par des communautés afro-américaines dans quelle région des États-Unis ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Les 'Lowcountry' de Caroline du Sud et de Géorgie",
    incorrect_answers: ["La Louisiane", "Le delta du Mississippi", "Les Appalaches"],
    contexte: "Cette langue créole a conservé plus d'éléments linguistiques africains que toute autre en raison de l'isolement relatif de ses locuteurs."
  },
  {
    content: "La civilisation 'maya', connue pour son écriture, son art et son astronomie, a prospéré dans une région qui couvre le sud du Mexique et quels autres pays ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Guatemala, le Belize, le Honduras et le Salvador",
    incorrect_answers: ["Le Costa Rica et le Panama", "Le Nicaragua et le Honduras", "Cuba et la Jamaïque"],
    contexte: "Contrairement aux Aztèques et aux Incas, les Mayas n'ont jamais formé un empire unifié mais un réseau de cités-États."
  },
  {
    content: "Quelle est la religion non chrétienne la plus pratiquée aux États-Unis ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Judaïsme",
    incorrect_answers: ["L'Islam", "Le Bouddhisme", "L'Hindouisme"],
    contexte: "Les États-Unis abritent la deuxième plus grande communauté juive au monde après Israël."
  },
  {
    content: "Le 'Guarani' est une langue amérindienne qui a le statut de langue officielle aux côtés de l'espagnol dans quel pays ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Le Paraguay",
    incorrect_answers: ["L'Uruguay", "La Bolivie", "L'Argentine"],
    contexte: "Le Paraguay est l'un des rares pays des Amériques où la majorité de la population non indigène parle une langue autochtone."
  },
  {
    content: "Les 'Métis' au Canada sont un groupe autochtone reconnu, issu de l'union de quels peuples ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Des colons européens (principalement français) et des femmes des Premières Nations",
    incorrect_answers: ["Des Inuits et des Européens", "Des Africains et des Européens", "Des Asiatiques et des Européens"],
    contexte: "Les Métis ont développé leur propre culture, leurs propres traditions et leur propre langue (le michif)."
  },
  {
    content: "Quelle coutume de potlatch, impliquant des festins et des dons de cadeaux somptueux, était une caractéristique centrale des sociétés autochtones de quelle région ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "La côte du Pacifique Nord-Ouest (Colombie-Britannique, Alaska)",
    incorrect_answers: ["Les Grandes Plaines", "L'Amazonie", "Les Andes"],
    contexte: "Le potlatch était un mécanisme de redistribution des richesses et de renforcement du statut social, interdit par les gouvernements canadien et américain."
  },
  {
    content: "Le 'Lunfardo' est un argot qui s'est développé à la fin du 19e siècle dans la classe ouvrière de quelle ville, avec une forte influence italienne ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Buenos Aires",
    incorrect_answers: ["São Paulo", "New York", "Montréal"],
    contexte: "Initialement un argot de prisonniers, le lunfardo a été immortalisé dans les paroles des tangos."
  },
  {
    content: "Quelle est la plus grande communauté religieuse au Canada après le christianisme ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "Les personnes sans affiliation religieuse ('sans religion')",
    incorrect_answers: ["L'Islam", "Le Judaïsme", "L'Hindouisme"],
    contexte: "Comme dans de nombreux pays occidentaux, la sécularisation est une tendance démographique majeure au Canada."
  },
  {
    content: "La 'Mormon Corridor' est une région où la majorité des habitants sont membres de l'Église de Jésus-Christ des Saints des Derniers Jours. Elle s'étend principalement dans quel État américain ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Amérique",
    correct_answer: "L'Utah",
    incorrect_answers: ["Le Texas", "La Californie", "La Floride"],
    contexte: "Cette région a été colonisée par les pionniers mormons au 19e siècle, sous la direction de Brigham Young."
  },

  # ASIE - Cultures

{
    content: "Quelle est la religion majoritaire en Inde, connue pour ses concepts de karma et de réincarnation ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Hindouisme",
    incorrect_answers: ["Le Bouddhisme", "L'Islam", "Le Sikhisme"],
    contexte: "L'Hindouisme est l'une des plus anciennes religions du monde, avec des divinités comme Brahma, Vishnu et Shiva."
  },
  {
    content: "Quelle religion, fondée par Siddhartha Gautama, est prédominante en Thaïlande, au Cambodge et au Myanmar ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le Bouddhisme",
    incorrect_answers: ["L'Hindouisme", "Le Shintoïsme", "Le Jaïnisme"],
    contexte: "Le Bouddhisme enseigne la voie vers l'illumination (Nirvana) à travers la méditation et le détachement."
  },
  {
    content: "Quelle est la religion la plus pratiquée en Indonésie, le plus grand pays musulman du monde ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Islam",
    incorrect_answers: ["Le Bouddhisme", "Le Christianisme", "L'Hindouisme"],
    contexte: "L'Islam, principalement sunnite, a été introduit en Indonésie par des marchands à partir du XIIIe siècle."
  },
  {
    content: "Le 'kimono' est un vêtement traditionnel emblématique de quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le Japon",
    incorrect_answers: ["La Chine", "La Corée", "Le Vietnam"],
    contexte: "Le kimono, une robe en forme de T, est porté lors d'occasions spéciales comme les mariages et les cérémonies du thé."
  },
  {
    content: "Le 'hanbok' est le vêtement traditionnel coloré de quel pays de la péninsule asiatique ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "La Corée",
    incorrect_answers: ["Le Japon", "La Chine", "La Thaïlande"],
    contexte: "Le hanbok est caractérisé par ses couleurs vives, ses lignes simples et l'absence de poches."
  },
  {
    content: "Quel animal est considéré comme sacré dans la religion hindoue ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "La vache",
    incorrect_answers: ["Le singe", "Le tigre", "L'éléphant"],
    contexte: "La vache est vénérée comme un symbole de vie et de générosité, et il est traditionnellement interdit de la tuer ou de manger sa viande."
  },
  {
    content: "Quelle est la langue la plus parlée au monde en termes de locuteurs natifs ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le mandarin",
    incorrect_answers: ["L'anglais", "L'hindi", "L'espagnol"],
    contexte: "Le mandarin est la langue officielle de la Chine et l'une des langues officielles de Singapour."
  },
  {
    content: "La fête de 'Diwali', le festival des lumières, est l'une des fêtes les plus importantes de quelle religion ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Hindouisme",
    incorrect_answers: ["Le Bouddhisme", "L'Islam", "Le Shintoïsme"],
    contexte: "Diwali symbolise la victoire de la lumière sur les ténèbres et du bien sur le mal."
  },
  {
    content: "Les 'baguettes' sont les principaux ustensiles de repas dans de nombreux pays de quelle région ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Asie de l'Est",
    incorrect_answers: ["L'Asie du Sud", "Le Moyen-Orient", "L'Asie Centrale"],
    contexte: "Les baguettes sont utilisées quotidiennement en Chine, au Japon, en Corée et au Vietnam."
  },
  {
    content: "Le 'shintoïsme' est la religion ethnique indigène de quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le Japon",
    incorrect_answers: ["La Chine", "La Thaïlande", "L'Inde"],
    contexte: "Le shintoïsme implique le culte des 'kami' (divinités ou esprits) et coexiste souvent avec le bouddhisme."
  },
  {
    content: "Quelle ville sainte, destination du pèlerinage du 'Hajj', se trouve en Arabie Saoudite ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "La Mecque",
    incorrect_answers: ["Jérusalem", "Médine", "Dubaï"],
    contexte: "Le Hajj à La Mecque est l'un des cinq piliers de l'Islam, un devoir que tout musulman doit accomplir s'il en a les moyens."
  },
  {
    content: "Le 'sari' est un vêtement féminin drapé, traditionnel de quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Inde",
    incorrect_answers: ["La Thaïlande", "Le Japon", "L'Indonésie"],
    contexte: "Le sari est une longue bande de tissu, généralement de 5 à 9 mètres, portée de différentes manières selon la région."
  },
  {
    content: "Le 'Ramadan' est un mois de jeûne, de prière et de réflexion observé par les adeptes de quelle religion ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Islam",
    incorrect_answers: ["Le Judaïsme", "L'Hindouisme", "Le Bouddhisme"],
    contexte: "Pendant le Ramadan, les musulmans s'abstiennent de manger et de boire de l'aube au crépuscule."
  },
  {
    content: "Quel groupe ethnique constitue la majorité de la population chinoise ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Les Hans",
    incorrect_answers: ["Les Mongols", "Les Tibétains", "Les Ouïghours"],
    contexte: "Les Hans représentent plus de 90% de la population de la Chine et sont le plus grand groupe ethnique du monde."
  },
  {
    content: "Le 'yoga', une pratique spirituelle et physique, a ses origines dans quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Inde",
    incorrect_answers: ["La Chine", "Le Japon", "La Thaïlande"],
    contexte: "Le yoga est une discipline ancienne de l'hindouisme qui est devenue populaire dans le monde entier."
  },
  {
    content: "Le sikhisme est une religion monothéiste fondée au 15e siècle dans quelle région de l'Inde ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le Pendjab",
    incorrect_answers: ["Le Cachemire", "Le Rajasthan", "Le Bengale"],
    contexte: "Les sikhs sont reconnaissables à leurs turbans et sont tenus de porter les 'Cinq K', dont le 'kesh' (cheveux non coupés)."
  },
  {
    content: "La 'Cérémonie du thé' (Chanoyu) est un rituel traditionnel et esthétique de quel pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le Japon",
    incorrect_answers: ["La Chine", "L'Inde", "Le Sri Lanka"],
    contexte: "Cette cérémonie codifiée, influencée par le bouddhisme zen, consiste à préparer et à servir du thé vert matcha."
  },
  {
    content: "Quelle langue a donné naissance à de nombreuses langues d'Asie du Sud et du Sud-Est, et est la langue des textes sacrés de l'hindouisme ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le sanskrit",
    incorrect_answers: ["Le pali", "Le tamoul", "Le prakrit"],
    contexte: "Le sanskrit est une langue indo-européenne ancienne qui joue un rôle similaire à celui du latin en Europe."
  },
  {
    content: "Le 'Songkran' est le festival du Nouvel An traditionnel de quel pays, célèbre pour ses batailles d'eau géantes ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "La Thaïlande",
    incorrect_answers: ["Le Vietnam", "L'Indonésie", "Les Philippines"],
    contexte: "Célébré en avril, le fait de se jeter de l'eau symbolise la purification et l'éloignement des péchés de l'année précédente."
  },
  {
    content: "Le 'judaïsme' est la religion principale de quel pays du Moyen-Orient ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Israël",
    incorrect_answers: ["Le Liban", "La Jordanie", "La Syrie"],
    contexte: "Israël est le seul État au monde où la population est majoritairement juive."
  },
  {
    content: "Le 'Dalai Lama' est le chef spirituel de quelle branche du bouddhisme ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le bouddhisme tibétain",
    incorrect_answers: ["Le bouddhisme zen", "Le bouddhisme theravada", "Le bouddhisme mahayana"],
    contexte: "Le Dalaï Lama est considéré comme la réincarnation du bodhisattva de la compassion, Avalokiteshvara."
  },
  {
    content: "Les Bédouins sont un peuple nomade qui vit traditionnellement dans quel type d'environnement ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Les déserts du Moyen-Orient",
    incorrect_answers: ["Les jungles d'Asie du Sud-Est", "Les steppes d'Asie centrale", "Les montagnes de l'Himalaya"],
    contexte: "Le mode de vie bédouin, basé sur l'élevage de chameaux et de chèvres, s'est largement sédentarisé au 20e siècle."
  },
  {
    content: "Le 'système des castes' est une hiérarchie sociale traditionnelle associée à quelle religion et pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Hindouisme, en Inde",
    incorrect_answers: ["Le Bouddhisme, en Thaïlande", "L'Islam, en Indonésie", "Le Shintoïsme, au Japon"],
    contexte: "Bien qu'officiellement abolie, la discrimination fondée sur les castes persiste dans certaines parties de la société indienne."
  },
  {
    content: "Quelle est la langue officielle du Pakistan, bien que l'anglais soit également largement utilisé ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'ourdou",
    incorrect_answers: ["Le pendjabi", "Le pachto", "Le sindhi"],
    contexte: "L'ourdou est très similaire à l'hindi, mais s'écrit avec l'alphabet arabo-persan."
  },
  {
    content: "Les Ouïghours sont un groupe ethnique turcophone, majoritairement musulman, qui vit principalement dans quelle région de Chine ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le Xinjiang",
    incorrect_answers: ["Le Tibet", "La Mongolie-Intérieure", "Le Yunnan"],
    contexte: "La culture ouïghoure est au centre de tensions politiques et de préoccupations internationales en matière de droits de l'homme."
  },
  {
    content: "Le 'kebaya' est une blouse traditionnelle portée par les femmes dans quels pays d'Asie du Sud-Est ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Indonésie et la Malaisie",
    incorrect_answers: ["Le Vietnam et la Thaïlande", "Les Philippines et le Cambodge", "Le Japon et la Corée"],
    contexte: "Le kebaya, souvent porté avec un sarong, est considéré comme un vêtement national dans de nombreuses cultures de la région."
  },
  {
    content: "Quelle est la principale différence entre l'Islam sunnite et l'Islam chiite ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "La succession du prophète Mahomet",
    incorrect_answers: ["Le nombre de prières quotidiennes", "Le livre saint utilisé", "L'interdiction de l'alcool"],
    contexte: "Les chiites croient que le gendre du prophète, Ali, était son successeur légitime, tandis que les sunnites ont suivi les califes élus."
  },
  {
    content: "Le 'Galungan' est une fête balinaise importante qui célèbre la victoire du 'dharma' (le bien) sur l' 'adharma' (le mal). Quelle religion est pratiquée à Bali ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Hindouisme",
    incorrect_answers: ["Le Bouddhisme", "L'Animisme", "L'Islam"],
    contexte: "Bali est une enclave majoritairement hindouiste dans l'Indonésie majoritairement musulmane."
  },
  {
    content: "Le 'sumo' est un sport de lutte traditionnel et un rituel religieux de quel pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le Japon",
    incorrect_answers: ["La Chine", "La Mongolie", "La Corée"],
    contexte: "Le sumo est imprégné de traditions shintoïstes, avec de nombreux rituels de purification avant chaque combat."
  },
  {
    content: "Le zoroastrisme, l'une des plus anciennes religions monothéistes du monde, est originaire de quelle région ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'ancienne Perse (Iran)",
    incorrect_answers: ["L'Inde", "La Mésopotamie", "L'Égypte"],
    contexte: "Bien que peu nombreux aujourd'hui, les zoroastriens (dont les Parsis en Inde) ont eu une influence majeure sur le judaïsme, le christianisme et l'islam."
  },
  {
    content: "Le 'Gamelan' est un ensemble musical traditionnel composé principalement d'instruments de percussion comme des gongs et des métallophones. D'où vient-il ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Les îles de Java et Bali (Indonésie)",
    incorrect_answers: ["La Thaïlande", "Le Cambodge", "Les Philippines"],
    contexte: "La musique de Gamelan est centrale dans de nombreuses cérémonies religieuses et formes de théâtre traditionnelles."
  },
  {
    content: "Le 'jaïnisme' est une religion ancienne de l'Inde qui met un accent extrême sur quel principe ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "La non-violence (Ahimsa) envers tous les êtres vivants",
    incorrect_answers: ["Le polythéisme", "Le sacrifice d'animaux", "La conquête militaire"],
    contexte: "Les jaïns les plus stricts portent un masque pour ne pas avaler d'insectes et balayent le sol devant eux pour ne pas les écraser."
  },
  {
    content: "Quelle est la particularité des langues dravidiennes (comme le tamoul, le télougou) parlées dans le sud de l'Inde ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Elles ne sont pas apparentées à la famille indo-européenne",
    incorrect_answers: ["Elles n'ont pas de voyelles", "Elles sont parlées par plus d'un milliard de personnes", "Elles utilisent un alphabet idéographique"],
    contexte: "Les langues dravidiennes constituent une famille linguistique distincte, antérieure à l'arrivée des langues indo-aryennes en Inde."
  },
  {
    content: "Les Druzes sont une communauté religieuse ésotérique et fermée, vivant principalement au Liban, en Syrie et en Israël. De quelle religion se sont-ils séparés ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "De l'Islam chiite (ismaélisme)",
    incorrect_answers: ["Du Christianisme orthodoxe", "Du Judaïsme", "Du Zoroastrisme"],
    contexte: "Les Druzes ne se considèrent pas comme musulmans et leurs croyances, qui incluent la réincarnation, ne sont pas révélées aux étrangers."
  },
  {
    content: "Le 'théâtre d'ombres' (Wayang Kulit) est une forme d'art traditionnel sophistiqué utilisant des marionnettes en cuir. Dans quel pays est-il le plus emblématique ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Indonésie (Java et Bali)",
    incorrect_answers: ["La Chine", "La Thaïlande", "L'Inde"],
    contexte: "Les spectacles, souvent basés sur les épopées hindoues du Ramayana et du Mahabharata, peuvent durer toute la nuit."
  },
  {
    content: "Les Aïnous sont le peuple autochtone de quelle île du nord du Japon ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Hokkaido",
    incorrect_answers: ["Okinawa", "Shikoku", "Kyushu"],
    contexte: "Physiquement et culturellement distincts des Japonais, les Aïnous ont leur propre langue et leurs propres traditions animistes."
  },
  {
    content: "Le 'Yarsanisme' est une religion syncrétique pratiquée par certains Kurdes en Iran et en Irak, qui croient en quoi ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "La réincarnation et les manifestations successives de la divinité",
    incorrect_answers: ["Un seul prophète après Mahomet", "La stricte observance de la charia", "L'absence totale de divinité"],
    contexte: "Cette religion combine des éléments de zoroastrisme, d'islam chiite et d'anciennes croyances kurdes."
  },
  {
    content: "Quelle langue sémitique, autrefois la lingua franca du Moyen-Orient et parlée par Jésus, est encore utilisée par les communautés assyriennes ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'araméen",
    incorrect_answers: ["L'hébreu", "Le phénicien", "L'akkadien"],
    contexte: "Des dialectes néo-araméens sont encore parlés par de petites communautés chrétiennes et mandéennes en Irak, en Syrie et en Iran."
  },
  {
    content: "Les 'Hazaras' sont un groupe ethnique de langue persane en Afghanistan, leur confession religieuse a conduit à leur persécution, quelle est-elle ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "L'Islam chiite",
    incorrect_answers: ["L'Islam sunnite", "Le Bouddhisme", "Le Zoroastrisme"],
    contexte: "Les Hazaras se distinguent par leurs traits asiatiques, qui suggèrent une descendance mongole, et ont été historiquement marginalisés."
  },
  {
    content: "Le 'Bön' est une religion tibétaine qui a précédé et influencé quelle autre grande religion de la région ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Asie",
    correct_answer: "Le bouddhisme",
    incorrect_answers: ["L'Hindouisme", "Le Taoïsme", "Le Jaïnisme"],
    contexte: "Bien que le Bön ait intégré de nombreux aspects du bouddhisme, il conserve ses propres divinités et rituels chamaniques."
  },

  # Océanie  - CULTURES (VERIFIEES)

  {
    content: "Quel est le nom du peuple autochtone de la Nouvelle-Zélande, célèbre pour sa danse du haka ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les Maoris",
    incorrect_answers: ["Les Aborigènes", "Les Samis", "Les Inuits"],
    contexte: "Les Maoris sont un peuple polynésien dont la culture, la langue et les traditions jouent un rôle majeur dans l'identité néo-zélandaise."
  },
  {
    content: "Quel est le nom du peuple autochtone de l'Australie ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les Aborigènes",
    incorrect_answers: ["Les Maoris", "Les Papous", "Les Kanaks"],
    contexte: "Les Aborigènes d'Australie possèdent l'une des plus anciennes cultures continues au monde, avec une histoire de plus de 60 000 ans."
  },
  {
    content: "Quelle est la langue la plus parlée en Australie et en Nouvelle-Zélande ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "L'anglais",
    incorrect_answers: ["Le français", "Le maori", "Le néerlandais"],
    contexte: "L'anglais a été introduit par la colonisation britannique et est la langue dominante dans la plupart des aspects de la vie."
  },
  {
    content: "Quelle est la religion la plus répandue en Océanie ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Le Christianisme",
    incorrect_answers: ["Le Bouddhisme", "L'Islam", "L'Hindouisme"],
    contexte: "Les missionnaires européens ont converti une grande partie de la population, bien que les croyances traditionnelles restent influentes."
  },
  {
    content: "Le 'luau' est un festin traditionnel accompagné de musique et de danses, originaire de quelle île polynésienne ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Hawaï",
    incorrect_answers: ["Tahiti", "Fidji", "Samoa"],
    contexte: "Le luau est un symbole de l'hospitalité hawaïenne, souvent organisé pour célébrer des occasions spéciales."
  },
  {
    content: "Le didgeridoo est un instrument à vent emblématique de quel groupe autochtone ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les Aborigènes d'Australie",
    incorrect_answers: ["Les Maoris", "Les Papous", "Les Hawaïens"],
    contexte: "Fabriqué traditionnellement en bois d'eucalyptus creusé par les termites, le didgeridoo produit un son bourdonnant caractéristique."
  },
  {
    content: "Le 'surf' est un sport et un mode de vie qui a été popularisé dans le monde entier à partir de quelle région ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Hawaï et l'Australie",
    incorrect_answers: ["La Nouvelle-Zélande et Fidji", "Tahiti et Samoa", "Le Japon et la Californie"],
    contexte: "Le surf était une pratique culturelle importante dans l'ancienne Polynésie avant de devenir un sport mondial."
  },
  {
    content: "L'Océanie est traditionnellement divisée en trois grandes régions culturelles. Laquelle des suivantes n'en est pas une ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "L'Australasie",
    incorrect_answers: ["La Polynésie", "La Mélanésie", "La Micronésie"],
    contexte: "La Polynésie, la Mélanésie et la Micronésie sont les trois principales subdivisions basées sur la géographie et l'ethnographie."
  },
  {
    content: "Le 'barbecue' (ou 'barbie') est une coutume sociale extrêmement populaire dans quel pays ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "L'Australie",
    incorrect_answers: ["La Papouasie-Nouvelle-Guinée", "Fidji", "Les Samoa"],
    contexte: "Le barbecue est un élément central du mode de vie australien, en particulier pendant les mois d'été."
  },
  {
    content: "Le 'haka' est une danse traditionnelle et un chant de guerre de quel peuple ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les Maoris",
    incorrect_answers: ["Les Samoans", "Les Tongiens", "Les Fidjiens"],
    contexte: "Rendu célèbre par l'équipe de rugby de Nouvelle-Zélande, les All Blacks, le haka est exécuté pour impressionner et défier."
  },
  {
    content: "Quel sport est considéré comme une véritable 'religion' en Australie, en particulier dans l'État de Victoria ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Le football australien",
    incorrect_answers: ["Le football", "Le rugby à XV", "Le cricket"],
    contexte: "Le football australien est un sport unique avec ses propres règles, joué sur un terrain ovale."
  },
  {
    content: "Quelle langue polynésienne est une langue officielle de la Nouvelle-Zélande, aux côtés de l'anglais ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Le maori",
    incorrect_answers: ["Le samoan", "Le tongien", "Le tahitien"],
    contexte: "Aussi appelé 'Te Reo Māori', des efforts  sont faits pour revitaliser la langue maorie, qui est enseignée dans les écoles."
  },
  {
    content: "Le rugby est le sport national de facto dans de nombreux pays du Pacifique, y compris la Nouvelle-Zélande, Fidji, Samoa et quel autre royaume ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Tonga",
    incorrect_answers: ["Vanuatu", "Kiribati", "Palaos"],
    contexte: "Le rugby est une source immense de fierté nationale et une voie de réussite pour de nombreux athlètes insulaires."
  },
  {
    content: "Le 'boomerang' est un objet de chasse et de jeu associé à quel peuple ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les Aborigènes d'Australie",
    incorrect_answers: ["Les Maoris", "Les Papous", "Les Hawaïens"],
    contexte: "Il existe de nombreux types de boomerangs ; seuls certains sont conçus pour revenir à leur lanceur."
  },
  {
    content: "L'Anzac Day, le 25 avril, est un jour de commémoration important en Australie et en Nouvelle-Zélande. Que commémore-t-il ?",
    difficulty: "facile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les soldats morts au combat (Australian and New Zealand Army Corps)",
    incorrect_answers: ["L'indépendance nationale", "La signature d'un traité de paix", "La découverte du pays"],
    contexte: "Il commémore initialement le débarquement de Gallipoli en 1915 et honore aujourd'hui tous les militaires."
  },
  {
    content: "La 'kava' (ou 'yaqona') est une boisson traditionnelle à effet relaxant, consommée lors de cérémonies importantes dans quel pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Fidji",
    incorrect_answers: ["L'Australie", "La Nouvelle-Zélande", "Hawaï"],
    contexte: "Fabriquée à partir de la racine d'un poivrier, la kava est au cœur de la vie sociale et cérémonielle en Mélanésie."
  },
  {
    content: "Le 'Temps du Rêve' (Dreamtime) est un concept spirituel central pour quel peuple ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les Aborigènes d'Australie",
    incorrect_answers: ["Les Maoris", "Les Rapa Nui (Île de Pâques)", "Les Samoans"],
    contexte: "Le Rêve décrit à la fois le temps de la création du monde par les Esprits Ancêtres et la réalité spirituelle actuelle."
  },
  {
    content: "Quel pays d'Océanie possède la plus grande diversité linguistique au monde, avec plus de 800 langues distinctes ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "La Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["L'Australie", "L'Indonésie", "La Nouvelle-Zélande"],
    contexte: "Le terrain montagneux et l'isolement des tribus ont permis le développement de cette extraordinaire diversité linguistique."
  },
  {
    content: "Le 'tok pisin' est une langue créole parlée comme lingua franca dans quel pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "La Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["Les Îles Salomon", "Vanuatu", "Fidji"],
    contexte: "Le tok pisin est basé sur l'anglais mais avec une grammaire et un vocabulaire locaux, ce qui lui permet de servir de pont entre les centaines de langues du pays."
  },
  {
    content: "Le 'tapu' (ou 'tabu') est un concept polynésien important qui signifie quoi ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Sacré ou interdit",
    incorrect_answers: ["Bienvenue", "Famille", "Océan"],
    contexte: "Le mot 'tabou' en français vient directement de ce concept, qui régit les interactions sociales et religieuses."
  },
  {
    content: "Quel groupe ethnique est le plus important en Nouvelle-Calédonie ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les Kanaks",
    incorrect_answers: ["Les Caldoches (Européens)", "Les Wallisiens", "Les Tahitiens"],
    contexte: "Les Kanaks sont le peuple autochtone mélanésien de Nouvelle-Calédonie et sont au cœur du mouvement pour l'indépendance."
  },
  {
    content: "Le 'tā moko' est l'art traditionnel du tatouage facial pratiqué par quel peuple ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les Maoris",
    incorrect_answers: ["Les Aborigènes", "Les Papous", "Les Fidjiens"],
    contexte: "Le tā moko est unique car il est sculpté dans la peau plutôt que piqué. Il raconte l'histoire et la généalogie de la personne."
  },
  {
    content: "Quelle est la principale minorité ethnique à Fidji, dont la présence a été une source de tensions politiques ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Les Indo-Fidjiens",
    incorrect_answers: ["Les Chinois", "Les Européens", "Les Polynésiens"],
    contexte: "Les Indo-Fidjiens sont les descendants de travailleurs indiens amenés par les Britanniques pour travailler dans les plantations de canne à sucre."
  },
  {
    content: "Le 'umu' (ou 'hāngi') est une méthode de cuisson traditionnelle en Océanie qui utilise...",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Un four en terre avec des pierres chaudes",
    incorrect_answers: ["Des feuilles de bananier sur un feu ouvert", "De l'eau de mer bouillante", "La fumaison à froid"],
    contexte: "Cette méthode de cuisson lente est utilisée dans toute la Polynésie pour préparer de grands festins communautaires."
  },
  {
    content: "Le 'cargo cult' est un mouvement religieux qui a émergé en Mélanésie après quel événement ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Le contact avec les soldats de la Seconde Guerre mondiale",
    incorrect_answers: ["L'arrivée des missionnaires chrétiens", "Des éruptions volcaniques", "L'indépendance nationale"],
    contexte: "Les insulaires ont observé les soldats recevoir d'immenses richesses ('cargo') et ont développé des rituels pour attirer ces biens."
  },
  {
    content: "Les statues 'moai' de l'Île de Pâques ont été sculptées par quel peuple polynésien ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Le peuple Rapa Nui",
    incorrect_answers: ["Les Maoris", "Les Hawaïens", "Les Tahitiens"],
    contexte: "Ces statues monumentales représentent des ancêtres divinisés. Le mystère de leur transport fascine encore les chercheurs."
  },
  {
    content: "Le Bislama est une langue créole à base d'anglais, l'une des langues officielles de quel pays ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Vanuatu",
    incorrect_answers: ["Fidji", "Le Maroc", "La Papouasie-Nouvelle-Guinée"],
    contexte: "Le Bislama permet la communication entre les locuteurs des plus de 100 langues indigènes du Vanuatu."
  },
  {
    content: "Quelle est la religion la plus pratiquée par les Indo-Fidjiens ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "L'Hindouisme",
    incorrect_answers: ["L'Islam", "Le Christianisme", "Le Sikhisme"],
    contexte: "Les temples hindous sont une caractéristique importante du paysage culturel de Fidji."
  },
  {
    content: "L'Emu et le kangourou figurent sur les armoiries de l'Australie. Pourquoi ont-ils été choisis ?",
    difficulty: "intermédiaire",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Ils ne peuvent pas reculer facilement",
    incorrect_answers: ["Ce sont les animaux les plus communs", "Ils sont sacrés pour les Aborigènes", "Ils n'existent nulle part ailleurs"],
    contexte: "Cette caractéristique est censée symboliser une nation qui va toujours de l'avant."
  },
  {
    content: "Le 'fa'afafine' à Samoa est un exemple de...",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Un troisième genre culturel",
    incorrect_answers: ["Un chef de tribu", "Une cérémonie de mariage", "Un plat traditionnel"],
    contexte: "Les fa'afafine sont des personnes assignées hommes à la naissance qui adoptent un rôle de genre féminin. Ils sont une partie intégrante de la société samoane."
  },
  {
    content: "Quelle est la particularité linguistique des langues aborigènes australiennes en ce qui concerne les chiffres ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Souvent pas de mot pour les nombres au-delà de 2 ou 3",
    incorrect_answers: ["Elles utilisent un système en base 20", "Des mots différents pour compter les humains et les animaux", "Elles n'ont pas de nombres impairs"],
    contexte: "Traditionnellement, le comptage se faisait par des concepts comme 'un', 'deux', 'quelques-uns' et 'beaucoup'."
  },
  {
    content: "La 'Maison des esprits' (ou 'haus tambaran') est un lieu de culte et de réunion pour les hommes dans quelle région ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "La région du fleuve Sepik en Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["L'Outback australien", "L'Île du Nord de la Nouvelle-Zélande", "Les îles de la Société"],
    contexte: "Ces maisons richement décorées sont au centre de la vie spirituelle et des rites d'initiation masculins."
  },
  {
    content: "Le 'marn grook' est un jeu de balle aborigène qui aurait influencé le développement de quel sport moderne ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Le football australien",
    incorrect_answers: ["Le rugby", "Le cricket", "Le football (soccer)"],
    contexte: "Le débat sur l'influence exacte du marn grook est en cours, mais il met en lumière les racines indigènes possibles du sport."
  },
  {
    content: "Le 'Rattenfest' (Festival du Rat) à Kirkstall, en Australie, est une coutume locale qui implique...",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Le lancer de rats morts dans un concours de distance",
    incorrect_answers: ["L'adoration de rats sacrés", "Une course de rats de compagnie", "La dégustation de plats à base de rats"],
    contexte: "Cette tradition inhabituelle, issue de la communauté d'origine allemande, célèbre la fin de la récolte de foin."
  },
  {
    content: "Le 'mana' est un concept polynésien fondamental qui se réfère à...",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Une force ou un pouvoir spirituel",
    incorrect_answers: ["Un code de l'honneur", "Une lignée généalogique", "La terre ancestrale"],
    contexte: "Le mana peut résider dans des personnes, des lieux ou des objets. Il est associé à l'autorité, au prestige et au pouvoir."
  },
  {
    content: "La religion du Prince Philip est un 'cargo cult' pratiqué sur l'île de Tanna. Dans quel pays se trouve cette île ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Vanuatu",
    incorrect_answers: ["Fidji", "Les Îles Salomon", "La Papouasie-Nouvelle-Guinée"],
    contexte: "Les adeptes croyaient que le duc d'Édimbourg était un être divin qui accomplirait une prophétie locale."
  },
  {
    content: "Le 'pidgin' nigérian est une lingua franca, mais quel est le seul pays au monde où une langue pidgin (le tok pisin) a le statut de langue officielle ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "La Papouasie-Nouvelle-Guinée",
    incorrect_answers: ["Le Nigeria", "La Sierra Leone", "Haïti"],
    contexte: "Le tok pisin, le hiri motu et l'anglais sont les trois langues officielles de ce pays linguistiquement divers."
  },
  {
    content: "Les 'Palawa' sont le peuple aborigène de quelle île australienne ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "La Tasmanie",
    incorrect_answers: ["L'île Kangourou", "L'île Walibi", "L'île Fraser"],
    contexte: "Les Palawa ont été décimés par la colonisation, mais leurs descendants luttent aujourd'hui pour la reconnaissance de leur culture et de leur langue."
  },
  {
    content: "Le 'kiri' ou don de nattes finement tressées, est la forme de richesse la plus prestigieuse dans quelle culture polynésienne ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "La culture tongienne",
    incorrect_answers: ["La culture hawaïenne", "La culture maorie", "La culture tahitienne"],
    contexte: "Ces nattes ('kie hingoa') sont des objets de cérémonie essentiels, échangés lors des mariages, des funérailles et des événements royaux."
  },
  {
    content: "La langue des signes néo-zélandaise (NZSL) est une langue officielle du pays. Quelle est sa particularité ?",
    difficulty: "difficile",
    category: "Cultures",
    region: "Océanie",
    correct_answer: "Elle est complètement différente des autres langues des signes anglosaxonnes",
    incorrect_answers: ["Elle n'a pas de signes pour les couleurs", "Elle est uniquement utilisée par les Maoris", "Elle est basée sur la langue des signes australienne"],
    contexte: "La NZSL s'est développée de manière isolée et est un mélange de la langue des signes britannique et de signes locaux."
  },
]

questions_data.each_with_index do |data, index|
  Question.create!(
    content: data[:content],
    difficulty: data[:difficulty],
    category: data[:category],
    region: data[:region],
    correct_answer: data[:correct_answer],
    incorrect_answers: data[:incorrect_answers],
    contexte: data[:contexte]
  )
end

Aujourd’hui je te montre l’importance d’une carte graphique pour fluidifier tes besoins en calcul ! 

# Bienvenue dans les 💚 Expériences Odin #1 💚 !

 

Le but de l’expérience d’aujourd’hui est de montrer l’utilité de coupler une carte graphique de calcul à ton CPU pour gagner en rapidité de calcul. 🚀

## 🧮 La principale différence entre un CPU et un GPU ? 🧮

Le CPU fait ses calculs les uns après les autres alors que le GPU effectue plusieurs calculs en simultané.

## 🧪 Déroulé de l’expérience : 🧪

J’ai créé un script en R permettant de créer deux matrices 10 000x10 000 générées avec des nombres aléatoires.

Ensuite, on multiple l’un par l’autre ( 10 0000 x 10 000 x 10 000 = 1 trillion d’opérations 😱) et on chronomètre la durée d’exécution avec et sans GPU.

Nous allons donc lancer deux applications RStudio avec pour chacun 4 cores de CPU et 8Gb de RAM max.

Enfin, l’une des deux sera équipée d’une Nvidia V100 32Gb. 

## 🔥 Résultats : 🔥

- Temps d’exécution sans GPU : `7.075135 secondes`

- Temps d’exécution avec du compute GPU : `0.001099586 secondes`

Je pense que les résultats prouvent très bien que dans un cas de calculs simultanés le compute GPU est une arme inconsidérable face au GPU seul !! 🤯 Cependant, ce type de carte graphique n’est pas des plus accessibles au grand public.

Ce test a pu être réalisé grâce à la plateforme Odin By @Caelus s’exécutant sur un cluster hébergé en France chez @OVHCloud.

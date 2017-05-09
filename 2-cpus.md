# Processeurs traditionnels: fonctionnement général et évolution

## Puissance et loi de Moore

Gordon Moore annonce en 1975 que le nombre de transistors dans un microprocesseur double tous les deux ans.
Cette observation se vérifie encore aujourd'hui et se traduit par des processeurs de plus en plus performants et efficaces.

![CC-BY-SA 3.0 [Graphique illustrant la loi de Moore](https://commons.wikimedia.org/wiki/File:Transistor_Count_and_Moore%27s_Law_-_2011.svg) par “Wgsimon”](./img/moore.pdf)

L'architecture x86, largement adoptée pour les processeurs d'ordinateurs et serveurs, a montré sa flexibilité, permettant d'exécuter virtuellement n'importe quel algorithme/programme informatique actuel.

Au fil du temps, l'architecture x86 a beaucoup évolué et comporte maintenant un nombre presque incalculable d'`opcode`, comme l'illustre la longueur de l'article Wikipédia à ce sujet\cite{wiki-x86}.


## Limites de l'architecture des processeurs traditionnels

Cette complexité a certes rendu l'architecture très flexible et efficace pour des programmes complexes, mais montre rapidement ses faiblesses en terme de coût énergétique et de production.
Aussi, cette flexibilité perd rapidement de l'intérêt lorsqu'il s'agit d'effectuer une même fonction à répétition et rapidement.

Ces limites ont notamment poussé les chercheurs et industriels à concevoir des architectures moins complètes telles qu'ARM pour réduire le coût de production et la consommation énergétique, mais aussi à décharger certaines opérations récurrentes à des circuits dédiés.

Ces circuits dédiés sont soit utilisés en complément du processeur, soit de manière indépendante.

Certains matériels réseaux type switchs vont ainsi préférer utiliser des circuits dédiés sans microprocesseur discret additionnel, tandis que d'autres vont utiliser un processeur plus standard, avec des puces dédiées par exemple au calcul des sommes de contrôles des différents paquets réseaux.

## Utilisation d'accélérateurs matériels

Nous verrons dans les sections suivantes différents types d'accélérateurs matériels.
Avant de plonger dans des aspects purement techniques de fonctionnement de ces accélérateurs, voici quelques exemples d'utilisation commune d'accélérateurs matériels.

Outre les circuits qui remplacent complètement la fonction d'un processeur complet, en réponse à la question « Ai-je besoin d'un i7 dans mon home-cinéma ? », il est très commun de décharger le processeur de la charge de certaines tâches courantes.

### *TCP Offload Engine* (TOE)

Ces accélérateurs présents les cartes réseaux haut de gamme sont spécialisés dans le traitement des routines de la pile *TCP/IP*.
Avec des normes offrant des débits de plus en plus rapides – l'Ethernet Gigabit (1GbE) étant aujourd'hui la norme, et l'Ethernet 10G (10GbE) devenant de plus en plus accessible – la fréquence des processeurs devient le facteur limitant\cite{acm-toe}.

Les TOE vont ainsi s'occuper de routines tels que l'établissement de nouvelles connexions (`SYN`, `ACK`, `SYNACK`), la vérification des sommes de contrôles, ou encore s'occuper de fonctionnalités type aggregation de lien (`802.3ad`) ou l'utilisation de `VLAN`s (`802.1q`).

Nous avons donc ici un cas où un accélérateur matériel peut être utilisé en conjonction avec le CPU pour le décharger de certaines tâches, ou même parce que le CPU n'est pas capable de traiter de tels débits.


### *Trusted Platform Module* (TPM)

![LGPL [Composants internes d'un *TPM*](https://commons.wikimedia.org/wiki/File:TPM.svg) par Guillaume Piolle](./img/tpm.pdf)

Le but des TPM est d'à la fois décharger le processeurs de calculs utiles en cryptographie (calcul de hash, génération de nombres aléatoires, (dé)chiffrement), mais également de permettre le stockage matériel et sécurisé de clés.

Ces modules vont permettre par exemple de stocker les clés de chiffrement d'un disque dur (avec par exemple `LUKS` sur Linux) protégée par un mot de passe, tout en offrant une protection matérielle contre les attaques par dictionnaire.
Une autre utilisation commune est le stockage de clé de signature, pour permettre la signature électronique de documents sécurisée.

Ces modules ont été standardisés par le *Trusted Computing Group* en 2006, et la plupart des cartes mères grand public possèdent aujourd'hui un emplacement pour un TPM.

Les TPM sont donc des accélérateurs qui servent à la fois à des fins de performance, mais également pour des raisons de sécurité.

\newpage

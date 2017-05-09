# Processeurs traditionnels: fonctionnement général et évolution

## Puissance et loi de Moore

Gordon Moore annonce en 1975 que le nombre de transistors dans un microprocesseur double tous les deux ans.
Cette observation se vérifie encore aujourd'hui et se traduit par des processeurs de plus en plus performants et efficaces.

![CC-BY-SA “Wgsimon” @ WikiMedia](./img/moore.pdf)

L'architecture x86, largement adoptée pour les processeurs d'ordinateurs et serveurs, a montré sa flexibilité, permettant d'exécuter virtuellement n'importe quel algorithme/programme informatique actuel.

Au fil du temps, l'architecture x86 a beaucoup évolué et comporte maintenant un nombre presque incalculable d'`opcode`[^opcode].

[^opcode]: L'article Wikipédia à ce sujet montre bien la complexité de l'architecture: <https://en.wikipedia.org/wiki/X86_instruction_listings>


## Limites de l'architecture des processeurs traditionnels

Cette complexité a certes rendu l'architecture très flexible et efficace pour des programmes complexes, mais montre rapidement ses faiblesses en terme de coût énergétique et de production.
Aussi, cette flexibilité perd rapidement de l'intérêt lorsqu'il s'agit d'effectuer une même fonction à répétition et rapidement.

Ces limites ont notamment poussé les chercheurs et industriels à concevoir des architectures moins complètes telles qu'ARM pour réduire le coût de production et la consommation énergétique, mais aussi à décharger certaines opérations récurrentes à des circuits dédiés.

Ces circuits dédiés sont soit utilisés en complément du processeur, soit de manière indépendante.

Certains matériels réseaux type switchs vont ainsi préférer utiliser des circuits dédiés sans microprocesseur discret additionnel, tandis que d'autres vont utiliser un processeur plus standard, avec des puces dédiées par exemple au calcul des sommes de contrôles des différents paquets réseaux.


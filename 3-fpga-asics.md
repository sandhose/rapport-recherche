# FPGA[^fpga], ASIC[^asic] et tout le bordel

[^fpga]: *Field Programmable Gate Array*
[^asic]: *Application Specific Integrated Circuit*

Les circuits intégrés ont fait leur apparition dans les années 60, leur création ayant été rendue possible par les avancées dans le développement des matériaux semi-conducteurs et de leur utilisation en tant que tubes électroniques.

Au fur et à mesure des avancées technologiques et de l'évolution des besoins en matière de *FIXME il manque un mot*, il a fallu que les composants des différents systèmes deviennent le plus performant possible, afin d'accomplir les tâches auxquelles ils sont dédiés de manière rapide et optimisée. De l'idée de créer des composant dédiés à des types d'applications spécifiques sont apparus, au cours des années 80, les ASICs.

*FIXME* « apparus de l’idée » est une tournure bizarre, on dit plutôt « nés de l’idée ».

## ASICs

*FIXME* ASIC est l’acronyme de quoi ?
Les ASICs (soit circuits intégrés pour applications) sont des circuits conçus spécifiquement pour un type d'application (c'est-à-dire d'utilisation). Ainsi, pour un type de produit, un design de circuit va être élaboré de manière à ce que celui-ci soit le plus performant possible vis-à-vis de son utilisation au sein du produit. Une fois ce design produit, on pourra créer une certaine quantité de circuits intégrés spécialisés pour l'utilisation que l'on veut en faire.

Cette forme de circuit intégré a pour but de réduire grandement les coûts de production et d'augmenter la fiabilité et la performance de celui-ci pour le produit que l'on désire créer. Aussi, ce type de circuit est adapté aux situations où l'on désire produire un grand nombre d'instances de celui-ci.

La fabrication d'un ASIC commence à la conception de son modèle.

Les inconvénients qui apparaissent sont leur fort coût d'élaboration, ainsi que le temps que celle-ci dure, nécessitant de devoir produire une très grande quantité de circuits afin que leur utilisation puisse être rentable. De plus, étant spécifiques à une application, les ASICs ne sont aucunement modifiables : on ne peut pas reprogrammer un ASIC après que le design de celui-ci a été implémenté.


C'est pour répondre à des besoins auxquels les ASICs ne sont pas adaptés que les FPGAs sont apparus.

## FPGAs

*FIXME* FPGA acronyme de quoi ?
Un FPGA (soit matrice de portes logiques programmable) est un type de circuit intégré pour lequel
Au contraire des ASICs, les FPGAs sont conçus de manière à pouvoir être reprogrammés.

La modification possible de l'application pour un FPGA en fait de solides concurrents aux ASICs, en particulier dans les domaines où ceux-là n'excellent pas. En particulier, le coût de design d'un FPGA est moindre par rapport à celui d'un ASIC et l'on peut les utiliser pour plusieurs types d'applications. Cela en fait une bonne option pour, par exemple, l'expérimentation et les prototypes, ou bien la fabrication de produits lorsqu'il ne s'agit pas d'en fabriquer un grand nombre.

## HDL

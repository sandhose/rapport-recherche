# FPGA[^fpga], ASIC[^asic] et tout le bordel

[^fpga]: *Field Programmable Gate Array*
[^asic]: *Application Specific Integrated Circuit*

Les circuits intégrés ont fait leur apparition dans les années 60, leur création ayant été rendue possible par les avancées dans le développement des matériaux semi-conducteurs et de leur utilisation en tant que tubes électroniques.

Au fur et à mesure des avancées technologiques et de l'évolution des besoins en matière de *FIXME il manque un mot*, il a fallu que les composants des différents systèmes deviennent le plus performant possible, afin d'accomplir les tâches auxquelles ils sont dédiés de manière rapide et optimisée. De l'idée de créer des composant dédiés à des types d'applications spécifiques sont apparus, au cours des années 80, les ASICs.

*FIXME* « apparus de l’idée » est une tournure bizarre, on dit plutôt « nés de l’idée ».

## ASICs

Les ASICs[^asic] (soit circuits intégrés pour applications) sont des circuits conçus spécifiquement pour un type d'application (c'est-à-dire d'utilisation). Ainsi, pour un type de produit, un design de circuit va être élaboré de manière à ce que celui-ci soit le plus performant possible vis-à-vis de son utilisation au sein du produit. Une fois ce design produit, on pourra créer une certaine quantité de circuits intégrés spécialisés pour l'utilisation que l'on veut en faire.

Cette forme de circuit intégré a pour but de réduire grandement les coûts de production et d'augmenter la fiabilité et la performance de celui-ci pour le produit que l'on désire créer. Aussi, ce type de circuit est adapté aux situations où l'on désire produire un grand nombre d'instances de celui-ci.

La fabrication d'un ASIC commence à la conception de son modèle. /*TODO*/

Les inconvénients qui apparaissent sont leur fort coût d'élaboration, ainsi que le temps que celle-ci dure, nécessitant de devoir produire une très grande quantité de circuits afin que leur utilisation puisse être rentable. De plus, étant spécifiques à une application, les ASICs ne sont aucunement modifiables : on ne peut pas reprogrammer un ASIC après que le design de celui-ci a été implémenté.


C'est pour répondre à des besoins auxquels les ASICs ne sont pas adaptés que les FPGAs sont apparus.

## FPGAs

Un FPGA[^fpga] (soit matrice de portes logiques programmable) est un type de circuit intégré apparu au milieu des années 80, et dont la particularité est qu'il peut être utilisé pour plusieurs types d'application.

A l'instar des ASICs, la programmation des FPGAs est faite avec un HDL, qui permet de décrire le comportement du circuit. Cependant, les FPGAs sont conçus de manière à pouvoir être reprogrammés. On peut en effet "flasher" ceux-ci afin d'en modifier le comportement, et ainsi ceux-ci ne sont pas limités à une utilisation.

La modification possible de l'application pour un FPGA en font de solides concurrents aux ASICs, en particulier dans les domaines où ceux-là n'excellent pas. En particulier, le coût de design d'un FPGA est moindre par rapport à celui d'un ASIC, et l'on peut les utiliser pour plusieurs types d'applications. Cela en fait une bonne option pour, par exemple, l'expérimentation et les prototypes, ou bien la fabrication de produits lorsqu'il ne s'agit pas de fabriquer un grand nombre de ceux-ci, et qu'il faut y avoir accès rapidement.

Au vu de leur adaptabilité, leur coût de conception réduit et leur vitesse de fabrication et disponibilité, on peut se demander pourquoi les FPGAs ne sont pas utilisés pour tous types d'applications. Aujourd'hui, la performance des FPGAs reste limitée par rapport à celle des ASICs. Ainsi, ces derniers restent le choix optimal pour les projets conséquents.


## HDL

Les circuits intégrés cités précédemment cités sont programmés à l'aide d'un HDL, à savoir un langage de description de matériel. Ceux-ci sont des langages informatiques décrivant le comportement d'un circuit électronique, ou bien les portes logiques utilisées par celui-ci. Un langage de description matérielle permet donc, en outre :

  - de décrire le fonctionnement d'un circuit
  - de décrire la structure d'un circuit
  - de vérfier la fonctionnalité d'un circuit, par simulation

Les principaux langages de description sont SystemC, et Verilog et VHDL. Ce dernier, créé en 1981 par le Département de la Défense des Etats-Unis, peut ainsi décrire le comportement d'une puce, qui sera interprété par des outils de synthèse logique. Un exemple de programme en VHDL ressemblerait à ceci.

```vhdl

-- Chargement des bibliothèques utilisées
library ieee
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;

-- Description d'une entité
entity exemple is
  port(a , b          :   in std_logic_vector(3 downto 0);
      op, clk, reset  :   in std_logic;
      c               :   out std_logic_vector(3 downto 0));
end exemple;

-- Architecture du circuit
architecture test of exemple is
  signal moinsb, opb, aopb : std_logic_vector(3 downto 0);
begin
moinsb <= not b + "0001"

opb <= b when op='0'
         else moins;

aopb <= a + opb;

process (reset, clk)
  begin
  if reset='0'
    then c <= "0000";
    else if (clk'event and clk='1')
      then c <= aopb;
    end if;
  end if;
  end process;

end test;
```

# GPGPU[^gpgpu]

[^gpgpu]: *General-purpose computing on Graphics Processing Unit*

## Les processeurs graphiques, ces accélérateurs matériels un peu particuliers

Avec l'apparition d'expériences multimédia dans l'informatique, qu'il s'agisse simplement de décodage de flux vidéo numérique, ou de rendu en temps réel de jeux vidéos, on a constaté l'apparition de processeurs graphiques dédiés chez plusieurs constructeurs dans les années 80.

Ces processeurs n'ont cessé d'évoluer et de se démocratiser depuis.
Tout *smartphone*, ordinateur moderne possède aujourd'hui un processeur traditionnel et un circuit graphique, que ce soit sous la forme de circuit intégré au processeur, ou sous la forme d'une puce dédiée.

---

Une particularité dans les opérations nécessaire pour la manipulation et le rendu graphique, c'est la nécessité de pouvoir effectuer une même opération à un ensemble important de données.
Par exemple, la transformation (rotation, translation, mise à l'échelle, …) d'un objet 3D se traduit par la multiplication des coordonnées de tous les points de cet objet par une même matrice.

De même, la plupart de ces opérations peuvent être faites en parallèle.
La translation d'un objet peut être calculée en même temps que la rotation d'un autre, sans que les résultats des opérations soient interdépendants.

Bien que des extensions ont été ajoutés à l'architecture x86 au fil du temps pour permettre par exemple les opérations SIMD[^simd], les processeurs traditionnels restent relativement inefficaces quand il s'agit d'effectuer des opérations simples sur de gros ensemble de données.

[^simd]: *Single Instruction Multiple Data* – permet d'effectuer la même opération mathématique sur plusieurs vecteurs de données.

Les processeurs graphiques ont ainsi été conçus dans cette optique.
À la place des quelques cœurs complexes que l'on retrouve dans un CPU se trouvent quelques centaines d'unités d'exécutions dans un GPU.

## Détourner l'utilisation des GPUs

TODO

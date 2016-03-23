# C++ Concurrency in Action
Dépot lié au livre: "C++ Concurrency in Action" d'Anthony Williams

Présents sur le dépôt:
* archive [`CCiA_SourceCode.zip`](CCiA_SourceCode.zip) des listings utilisés dans le livre
* projet de compilation via CMake + Bash Scripts pour les listings exécutables 
	* présence de `main(...)` dans les sources (src/*.cpp) associées
	* utilisation du script [`list_pair_numbers_listings_with_main.sh`](list_pair_numbers_listings_with_main.sh) pour lister les numéros (MAJ, MIN) des listings dont les sources (src/*.cpp) associées contiennent un `main(...)` (considérés comme exécutables)
	* [`CMakeLists.txt`](CMakeLists.txt): Utilisation du script [`list_pair_numbers_listings_with_main.sh`](list_pair_numbers_listings_with_main.sh) et génération des projets (exécutables) des listings correspondants  
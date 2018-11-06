cd senior/fall/ai
git init
git remote add origin http://git.cs.slu.edu/courses/fall18/csci_3769_5930/colemanct.git
cd ../os
git init
git remote add origin http://git.cs.slu.edu/courses/fall18/csci_3500/colemanct.git
cd ../oosd
git init
git remote add origin http://git.cs.slu.edu/courses/fall18/csci_2300/colemanct.git
cd ../../../
git submodule init
git pull --recurse-submodules

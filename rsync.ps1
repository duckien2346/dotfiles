
rsync -auP --ignore-non-existing ~/.config/ config
rsync -auP --ignore-non-existing ~/AppData/Local/ local
rsync -auP --ignore-non-existing ~/AppData/Roaming/ roaming
rsync -auP ~/.ideavimrc .ideavimrc
rsync -auP ~/scripts scripts


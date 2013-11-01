sudo rm -rf $(find /usr/share/texmf-dist -maxdepth 10 -name "*bethluisnion*")

sudo texhash
sudo updmap-sys --syncwithtrees


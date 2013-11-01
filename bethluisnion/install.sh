file=bethluisnion
texmf=/usr/share/texmf-dist

ttf2tfm ${file}.ttf -q -T T1-WGL4.enc -v ec${file}.vpl ec${file}.tfm >> $file.map
vptovf ec${file}.vpl ec${file}.vf rec${file}.tfm
#ttf2afm -e T1-WGL4.enc -o rec${file}.afm ${file}.ttf
#afm2tfm rec${file}.afm -T T1-WGL4.enc rec${file}.tfm`.gsub(/\r|\n/, "") + " <#{ttf}

VFDIR=$texmf/fonts/vf/$file
TFMDIR=$texmf/fonts/tfm/$file
TTFDIR=$texmf/fonts/truetype/$file
MAPDIR=$texmf/fonts/map/pdftex/
sudo mkdir -p $VFDIR $TFMDIR $TTFDIR $MAPDIR

sudo mv ec$file.tfm $TFMDIR
sudo mv ec$file.vf $VFDIR
sudo mv $file.map $MAPDIR
sudo cp $file.ttf $TTFDIR

sudo texhash
sudo updmap-sys

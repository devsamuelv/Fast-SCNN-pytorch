wget --keep-session-cookies --save-cookies=cookies.txt --post-data 'username=villegas.samuel%40titans.easternflorida.edu&password=EBF5m%26n%5EzxbPWC&submit=Login' https://www.cityscapes-dataset.com/login/
wget --load-cookies cookies.txt --content-disposition https://www.cityscapes-dataset.com/file-handling/?packageID=3
wget --load-cookies cookies.txt --content-disposition https://www.cityscapes-dataset.com/file-handling/?packageID=1

mkdir datasets/
mkdir datasets/cityscapes

mkdir datasets/cityscapes/leftImg8bit/
mkdir datasets/cityscapes/gtFine/

unzip -o leftImg8bit_trainvaltest.zip
unzip -o gtFine_trainvaltest.zip

cp -r leftImg8bit/** datasets/cityscapes/leftImg8bit
cp -r gtFine/** datasets/cityscapes/gtFine

rm -rf leftImg8bit_trainvaltest.zip gtFine_trainvaltest.zip
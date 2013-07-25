cd ~
sudo apt-get update
sudo apt-get -y install openjdk-7-jre -y

#New Method #Easy Way
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.0.deb
sudo dpkg -i elasticsearch-0.90.0.deb
sudo service elasticsearch start



#Old Method # causes Issues
wget https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-0.19.0.tar.gz -O elasticsearch.tar.gz
tar -xf elasticsearch.tar.gz
rm elasticsearch.tar.gz
sudo mv elasticsearch-* elasticsearch
sudo mv elasticsearch /usr/local/share

curl -L http://github.com/elasticsearch/elasticsearch-servicewrapper/tarball/master | tar -xz
mv *servicewrapper*/service /usr/local/share/elasticsearch/bin/
rm -Rf *servicewrapper*
sudo /usr/local/share/elasticsearch/bin/service/elasticsearch install
sudo ln -s `readlink -f /usr/local/share/elasticsearch/bin/service/elasticsearch` /usr/local/bin/rcelasticsearch

sudo service elasticsearch start

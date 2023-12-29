sudo apt update
sudo apt upgrade
sudo apt remove postgresql*
echo "deb [trusted=yes] http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" > /etc/apt/sources.list.d/pgdg.list

echo deb [trusted=yes] https://apt.artifacts.ui.com stretch main release > /etc/apt/sources.list.d/ubnt.list

# Install Dependenceis
sudo apt install postgresql-9.5 jq coreutils netcat-traditional nodejs=8.17.0
sudo apt mark hold postgresql-9.5 jq coreutils netcat-traditional nodejs

# Download unifi core managers
sudo apt download ulp-go unifi-core unifi-base unifi-base-ucore
sudo dpkg --ignore-depends=postgresql -i ulp-go*.deb
sudo dpkg --ignore-depends=nodejs,ulp-go -i unifi-core*.deb
sudo dpkg --ignore-depends=nodejs,ulp-go -i unifi-base*.deb
sudo apt install 

debian

apt list -a postgresql-*

cat /etc/apt/sources.list
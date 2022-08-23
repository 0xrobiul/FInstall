#! /usr/bin/env bash
RED="\e[31m"
YO="\e[33m"
GREEN="\e[32m"
END="\e[0m"
echo -e "${YO}[-]${GREEN} Install In ${END}"
echo -e ""
echo -e "${RED}[1]${YO} Local System (Kali/Ubuntu) ${END}"
echo -e "${RED}[2]${YO} Cloud Shell ${END}"
echo -e "${RED}[2]${YO} Termux ${END}"
echo -e ""
echo -e "${YO}[-]${GREEN} Select Option:${END}"
read x
if [ $x == 1 ]
then
        if [[ "${UID}" -ne 0 ]]
        then
                echo -e "${RED}[×] ${YO}Root Permission Required!${END}"
        else
                echo -e "${RED}[+]${GREEN} Installation Started${END}"
                apt install unzip golang git cargo python3-pip -y &> /dev/null
                curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip &> /dev/null
                unzip findomain-linux-i386.zip &> /dev/null
                rm -rf findomain-linux-i386.zip
                chmod +x findomain
                mv findomain /usr/bin/findomain
        fi
elif [ $x == 2 ]
then
        if [[ "${UID}" -ne 0 ]]
        then
                echo -e "${RED}[×] ${YO}Root Permission Required!${END}"
        else
                echo -e "${RED}[+]${GREEN} Installation Started${END}"
                wget https://go.dev/dl/go1.19.linux-amd64.tar.gz &> /dev/null
                rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz
                export PATH=$PATH:/usr/local/go/bin
                rm -rf go1.19.linux-amd64.tar.gz
                apt install unzip git cargo python3-pip -y &> /dev/null
                curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip &> /dev/null
                unzip findomain-linux-i386.zip &> /dev/null
                rm -rf findomain-linux-i386.zip
                chmod +x findomain
                mv findomain /usr/bin/findomain
        fi
elif [ $x == 3 ]
then
        echo -e "${RED}[+]${GREEN} Installation Started${END}"
        pkg i unzip rust make perl golang python3 git &> /dev/null
        cargo install findomain &> /dev/null
        cd $HOME/.cargo/bin &> /dev/null
else
        echo -e "${RED}[×] ${YO}Error! Invalid Input!${END}"
fi
pip3 install git+https://github.com/aboul3la/Sublist3r &> /dev/null
pip3 install git+https://github.com/m8r0wn/subscraper &> /dev/null
pip3 install git+https://github.com/jonluca/Anubis &> /dev/null
pip3 install git+https://github.com/achillean/shodan-python &> /dev/null
pip3 install git+https://github.com/s0md3v/uro &> /dev/null
pip3 install git+https://github.com/guelfoweb/knock &> /dev/null
pip3 install git+https://github.com/darkoperator/dnsrecon &> /dev/null
pip3 install git+https://github.com/s0md3v/Arjun &> /dev/null
pip3 install git+https://github.com/maurosoria/dirsearch &> /dev/null
pip3 install git+https://github.com/GerbenJavado/LinkFinder &> /dev/null
pip3 install git+https://github.com/ProjectAnte/dnsgen &> /dev/null
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest &> /dev/null
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest &> /dev/null
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest &> /dev/null
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest &> /dev/null
go install -v github.com/projectdiscovery/notify/cmd/notify@latest &> /dev/null
go install github.com/tomnomnom/waybackurls@latest &> /dev/null
go install github.com/tomnomnom/unfurl@latest &> /dev/null
go get -u github.com/tomnomnom/httprobe &> /dev/null
go install -v github.com/tomnomnom/anew@latest &> /dev/null
go install -v github.com/tomnomnom/assetfinder@latest &> /dev/null
go install -v github.com/tomnomnom/meg@latest &> /dev/null
go install -v github.com/tomnomnom/qsreplace@latest &> /dev/null
go install -v github.com/haccer/subjack@latest &> /dev/null
go install github.com/bp0lr/gauplus@latest &> /dev/null
go install github.com/d3mondev/puredns/v2@latest &> /dev/null
go install -v github.com/jaeles-project/gospider &> /dev/null
go install -v github.com/sensepost/gowitness &> /dev/null
go install -v github.com/gwen001/github-subdomains &> /dev/null
go install -v github.com/dwisiswant0/unew &> /dev/null
go install dw1.io/go-dork@latest &> /dev/null
curl -sSfL https://git.io/crlfuzz | sh -s -- -b /usr/local/bin &> /dev/null
git clone https://github.com/blechschmidt/massdns.git &> /dev/null;cd massdns;make &> /dev/null;mv bin/massdns /bin;cd ..;rm -rf massdns
wget https://raw.githubusercontent.com/AonCyberLabs/PadBuster/master/padBuster.pl &> /dev/null;chmod +x padBuster.pl;sudo mv padBuster.pl /bin/padbuster
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip &> /dev/null; unzip aquatone_linux_amd64_1.7.0.zip &> /dev/null; rm -rf aquatone_linux_amd64_1.7.0.zip; chmod +x aquatine; mv aquatone /usr/local/bin
go install github.com/ffuf/ffuf@latest &> /dev/null
echo -e "${GREEN}[✓]${RED} Installation Finished${END}"

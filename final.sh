#! /usr/bin/env bash
RED="\e[31m"
YO="\e[33m"
GREEN="\e[32m"
END="\e[0m"
cmnd=$(curl -sI https://0xrobiul.me/ | head -n1 | awk '{printf $2}')
sttus="200"
if [[ ${cmnd} == ${sttus} ]]
then
  echo -e "${YO}[-]${GREEN} Install In ${END}"
  echo -e ""
  echo -e "${RED}[1]${YO} Local System (Kali/Ubuntu) ${END}"
  echo -e "${RED}[2]${YO} Cloud Shell ${END}"
  echo -e "${RED}[3]${YO} Termux ${END}"
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
		export GOPATH=/usr
		echp 'export GOPATH=/usr' >> /etc/profile
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
                export PATH=$PATH:/usr/go/bin
		echo 'export PATH=$PATH:/usr/go/bin' >> /etc/profile
                rm -rf go1.19.linux-amd64.tar.gz
                apt install unzip git cargo python3-pip -y &> /dev/null
		export GOPATH=/usr
		echp 'export GOPATH=/usr' >> /etc/profile
        fi
  elif [ $x == 3 ]
  then
        echo -e "${RED}[+]${GREEN} Installation Started${END}"
        pkg i unzip rust make perl golang python3 git &> /dev/null
	export GOPATH=/data/data/com.termux/files/usr
	export PATH=$PATH:/data/data/com.termux/files/usr/go/bin
	echo 'export PATH=$PATH:/data/data/com.termux/files/usr/go/bin' >> /data/data/com.termux/files/usr/etc/profile
	echo 'export GOPATH=/data/data/com.termux/files/usr' >> /data/data/com.termux/files/usr/etc/profile
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
  go install github.com/projectdiscovery/httpx/cmd/httpx@latest &> /dev/null
  go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest &> /dev/null
  go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest &> /dev/null
  go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest &> /dev/null
  go install github.com/projectdiscovery/notify/cmd/notify@latest &> /dev/null
  go install github.com/tomnomnom/waybackurls@latest &> /dev/null
  go install github.com/tomnomnom/unfurl@latest &> /dev/null
  go install github.com/tomnomnom/httprobe@latest &> /dev/null
  go install github.com/tomnomnom/anew@latest &> /dev/null
  go install github.com/tomnomnom/assetfinder@latest &> /dev/null
  go install github.com/tomnomnom/meg@latest &> /dev/null
  go install github.com/tomnomnom/qsreplace@latest &> /dev/null
  go install github.com/haccer/subjack@latest &> /dev/null
  go install github.com/bp0lr/gauplus@latest &> /dev/null
  go install github.com/d3mondev/puredns/v2@latest &> /dev/null
  go install github.com/jaeles-project/gospider@latest &> /dev/null
  go install github.com/sensepost/gowitness@latest &> /dev/null
  go install github.com/gwen001/github-subdomains@latest &> /dev/null
  go install github.com/dwisiswant0/unew@latest &> /dev/null
  go install github.com/ffuf/ffuf@latest &> /dev/null
  go install dw1.io/go-dork@latest &> /dev/null
  if [ $x == 2 ]
  then
    cargo install findomain &> /dev/null
    cd $HOME/.cargo/bin &> /dev/null
    curl -sSfL https://git.io/crlfuzz | sh -s -- -b /data/data/com.termux/files/usr/bin &> /dev/null
    git clone https://github.com/blechschmidt/massdns.git &> /dev/null;cd massdns;make &> /dev/null;mv bin/massdns /data/data/com.termux/files/usr/bin;cd ..;rm -rf massdns
  else
    curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip &> /dev/null;unzip findomain-linux-i386.zip &> /dev/null;rm -rf findomain-linux-i386.zip;chmod +x findomain;mv findomain /usr/bin/findomain
    curl -sSfL https://git.io/crlfuzz | sh -s -- -b /usr/local/bin &> /dev/null
    wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip &> /dev/null;unzip aquatone_linux_amd64_1.7.0.zip &> /dev/null;rm -rf aquatone_linux_amd64_1.7.0.zip headers LICENSE.txt screenshots html README.md;chmod +x aquatone;mv aquatone /usr/local/bin
    wget https://raw.githubusercontent.com/AonCyberLabs/PadBuster/master/padBuster.pl &> /dev/null;chmod +x padBuster.pl;mv padBuster.pl /usr/local/bin/padbuster
    git clone https://github.com/blechschmidt/massdns.git &> /dev/null;cd massdns;make &> /dev/null;mv bin/massdns /usr/local/bin;cd ..;rm -rf massdns
  fi
  echo -e "${GREEN}[✓]${RED} Installation Finished${END}"
else
  echo -e "${RED}[×] ${YO}Error! No Internet Connection!${END}"
fi

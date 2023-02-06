#!/bin/bash
# Kaliz3tup.sh
# Description: Simple script to pull some common pentesting repos from github
# -------------------------------------------------------------------------------
GITCLONE='/usr/bin/git clone '

# -- You may want to change this directory to where you want to install
# -- the packages. 
# -------------------------------------------------------------------------------
INSTALL_DIR="$HOME/scripts2"

# -- Main Code Start
# -------------------------------------------------------------------------------
if [ -d "$INSTALL_DIR" ]; then
   echo "$INSTALL_DIR exists, installing there."
else
   echo "$INSTALL_DIR does not exist, creating it..."
   /usr/bin/mkdir $INSTALL_DIR
   echo "Created $INSTALL_DIR"
   echo "Installing scripts to $INSTALL_DIR..."
fi
cd $INSTALL_DIR

# -- Free free to add additional repos for yourself, one per line as below.
# -------------------------------------------------------------------------------
repos=(
   "https://github.com/NinjaJc01/ssh-backdoor.git"
   "https://gitlab.com/kalilinux/packages/snmpcheck.git"
   "https://github.com/itm4n/PrintSpoofer.git"
   "https://github.com/dievus/threader3000.git"
   "https://github.com/samratashok/nishang.git"
   "https://github.com/shroudri/username_generator.git"
   "https://github.com/Mebus/cupp.git"
   "https://github.com/shroudri/username_generator.git"
   "https://github.com/Mebus/cupp.git"
   "https://github.com/xFreed0m/RDPassSpray.git"
   "https://github.com/byt3bl33d3r/SprayingToolkit.git"
   "https://github.com/dafthack/MailSniper.git"
   "https://github.com/Porchetta-Industries/CrackMapExec.git"
   "https://github.com/S3cur3Th1sSh1t/WinPwn.git"
   "https://github.com/PowerShellMafia/PowerSploit.git"
   "https://github.com/gentilkiwi/mimikatz.git"
   "https://github.com/fortra/impacket.git"
   "https://github.com/nidem/kerberoast.git"
)

# -- This will clone the repos locally, but you will still need to install them. 
# -- Ones for python you can probably install by just running <code>python -m pip install .</code> 
# -- from inside the repo. 
# -------------------------------------------------------------------------------
for repo in "${repos[@]}"; do
   echo -n "Cloning $repo into $INSTALL_DIR... "
   echo "$GITCLONE"
   $GITCLONE $repo;
   echo "Done."
done




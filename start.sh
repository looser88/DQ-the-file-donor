if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/looser88/DQ-the-file-donor.git /ALEXA-FILTER-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Alexa-filter-bot
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Alexa-filter-bot...."
python3 bot.py

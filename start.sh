if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TOXIC4LIEN
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Toxic
fi
cd /Toxic
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hyperhhah/autofilter.git /autofilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /autofilter
fi
cd /autofilter
pip3 install -U -r requirements.txt
echo "Starting Sana-Maria...."
python3 bot.py

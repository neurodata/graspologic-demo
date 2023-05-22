python3 -m venv venv
source venv/bin/activate
pip install -U pip setuptools wheel
pip install graspologic==3.1.0 jupyter
ipython kernel install --name "venv" --user
jupyter notebook
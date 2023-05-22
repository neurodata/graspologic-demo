# graspologic-demo

Brief demo applying graspologic to connectome data

## Running the demo

### Google Collaboratory
*Coming soon*

### Using TACC
- Go to the [TACC jobs portal](https://tap.tacc.utexas.edu/jobs/).
- Configure a job as follows:
- Hit ``Connect``.
From here, follow the directions below for running locally.

### Running locally
Clone this repository
```
git clone https://github.com/neurodata/graspologic-demo.git
```

Make sure you have Python 3.9 or 3.10 installed. To check, type
```
python3 --version
```
If you are using TACC, this says `Python 3.9.7` which should work.

It is recommended to develop in a virtual environment
```
python3 -m venv venv
```

To activate the virtual environment, do
```
source venv/bin/activate
```

Make sure `pip` and other tools are up-to-date
```
pip install -U pip setuptools wheel
```

The only root dependency is a recent release of ``graspologic``. We recommend installing via:

```
pip install graspologic==3.1.0
```

To follow along with the Jupyter Notebook, do
```
pip install jupyter
ipython kernel install --name "venv" --user
```

Launch a Jupyter Notebook window
```
jupyter notebook
```

In the folder structure that pops up, navigate to the notebook `demo.ipynb` and open it - you should now be able to follow along with the demo. You may need to go to "Kernel -> Change kernel" and pick "venv", but it may also work already if you have the virtual environment active.
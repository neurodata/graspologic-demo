<!-- omit in toc -->
# graspologic-demo

Brief demo applying ``graspologic`` to connectome data

- [Setup](#setup)
  - [Google Colaboratory](#google-colaboratory)
  - [Using TACC](#using-tacc)
  - [Running locally (or from TACC DCV console)](#running-locally-or-from-tacc-dcv-console)
    - [Option 1 (use the setup script)](#option-1-use-the-setup-script)
    - [Option 2 (go step by step)](#option-2-go-step-by-step)
- [Using the notebook](#using-the-notebook)

## Setup

### Google Colaboratory
- Go to [Google Colaboratory](https://colab.research.google.com/).
- Go to "File -> Open notebook"
- In the window that pops up, select "GitHub"
- Paste "https://github.com/neurodata/graspologic-demo/blob/main/demo.ipynb" into the prompt and select "demo.ipynb"
- Try running the notebook cells, one of the first steps will install necessary dependencies

### Using TACC
- Go to the [TACC jobs portal](https://tap.tacc.utexas.edu/jobs/).
- Configure a job as follows:
  - System: Lonestar6
  - Application: DCV remote desktop
  - Project: OTH22024
  - Queue: normal
- Hit ``Connect``.
From here, follow the directions below for running locally.

### Running locally (or from TACC DCV console)
Clone this repository
```
git clone https://github.com/neurodata/graspologic-demo.git
```

#### Option 1 (use the setup script)
A script is included which has all of the above steps.
```
cd graspologic-demo
sh ./setup.sh
```

#### Option 2 (go step by step)
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

## Using the notebook
In the folder structure that pops up, navigate to the notebook `demo.ipynb` and open it - you should now be able to follow along with the demo. You may need to go to "Kernel -> Change kernel" and pick "venv", but it may also work already if you have the virtual environment active.

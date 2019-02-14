pip install gym tqdm jupyter_contrib_nbextensions
pip install gym[atari]
pip install pyvirtualdisplay
apt-get update
apt-get install xvfb python-opengl -y
apt install libzmqpp-dev libeigen3-dev libopencv-dev -y
jupyter contrib nbextension install --user
jupyter nbextension enable collapsible_headings/main
jupyter nbextension enable varInspector/main
jupyter nbextension enable toc2/main

jupyter notebook --no-browser --ip=0.0.0.0 --port=8887 --allow-root --NotebookApp.token= --notebook-dir='/home/<USERNAME>/storage'



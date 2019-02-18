#Pip
pip install --upgrade pip
pip install tqdm jupyter_contrib_nbextensions
pip install --upgrade pytorch #Update pytorch

#OpenAI Gym
#pip install gym
#pip install gym[atari]

#Set up jupyter
jupyter contrib nbextension install --user
jupyter nbextension enable collapsible_headings/main
jupyter nbextension enable varInspector/main
jupyter nbextension enable toc2/main

#Run jupyter
jupyter notebook --no-browser --ip=0.0.0.0 --port=8887 --allow-root --NotebookApp.token= --notebook-dir='/storage'

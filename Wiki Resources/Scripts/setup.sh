#Print container ID
hostname=$(cat /etc/hostname)
echo $hostname

#Pip
pip install --upgrade pip
pip install tqdm jupyter_contrib_nbextensions
#Update pytorch
pip install numpy torchvision_nightly
pip install torch_nightly -f https://download.pytorch.org/whl/nightly/cu90/torch_nightly.html

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

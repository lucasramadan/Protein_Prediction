
# get into the instance

ssh -X -i "/Users/LucasRamadan/.ssh/Lucas_Ramadan_N_Virginia_Key.pem" ubuntu@ec2-54-85-202-195.compute-1.amazonaws.com

# copy files into instance

scp -i /Users/LucasRamadan/.ssh/Lucas_Ramadan_N_Virginia_Key.pem ~/Protein_data.zip ubuntu@ec2-54-85-202-195.compute-1.amazonaws.com:~

# make sure we have the ability to unzip
sudo apt-get install unzip

# unzip the data
unzip workspace/Protein_data.zip

# make sure we have jupyter 
pip install jupyter

# launch jupyter notebook server
sudo jupyter notebook --no-browser --ip=0.0.0.0

# navagate to address
http://54.85.202.195:8888/tree
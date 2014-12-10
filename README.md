#starter

All you need to start a new Rails / Nginx / Passenger / Mysql project with **Vagrant** and **Chef**.

Just download this repo, rename some variables and type ```vagrant up```

###What am I going to install (with chef)?
- ruby 2.1.5 (rbenv)
- rails (latest stable version)
- passenger 5.0.0.beta1
- mysql (user: root | pass: admin)
- nginx 1.6.2

###What variables do I need to rename?
Search for ```starter``` and replace it for ```your_project_name```

###Ok, What should I do?
- Once you replaced all the ```starter``` strings with you project's name, type ```cd vagrant && vagrant up```. 
- You'll have to wait several minutes (30 approx) while all the staff is being configured.
- Enter the VM that Vagrant have just created, with ```vagrant ssh```
- Go to the shared folder ```cd /your_project_name```
- Create your project, ```rails new ../your_project_name```
- Run Bundler, ```bundle install --no-deployment; bundle install --deployment```
- Generate your DB, ```bin/rake db:create```
- Then visit the ip defined in the ```Vagrantfile``` in your browser. 
- Voila! Your Rails app is up and running 






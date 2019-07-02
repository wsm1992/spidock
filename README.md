# spidock
Dockerized Spider Framework!
you can use this framework to help you build up the env of ruby and using watir to do web spider

# prepare
install Docker and [Docker-Compose](https://docs.docker.com/compose/install/)

# quick start
```bash
git clone https://github.com/wsm1992/spidock.git
cd spidock
bash run.sh
```
this is a simple example to build up the enviornment and go to google, then print the title of web page

# connect DB
you can edit [config/database.yml](https://github.com/wsm1992/spidock/blob/master/config/database.yml) to set up your DB config
then you can run 
```bash
bash run.sh [environment]
```
to select diffirent environment

# Spider
the actual logic in [app/spider.rb](https://github.com/wsm1992/spidock/blob/master/app/spider.rb),you can make your spider with [Watir](https://github.com/watir/watir) libary


please enjoy your web crawling

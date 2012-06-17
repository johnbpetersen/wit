pre_install:
	# install rvm & rails from source
	rvm install ruby-1.9.3-p194
	bundle install
	rake db:migrate

runserver:
	rails server

otherpreinstallstuff:
	apt-get install rubygems
	gem install rails
	bundle install

prep:
	rvm use ruby-1.9.3-p194

filelist:
	@find . -type f |grep -v "\.git" |grep -v "db/migrate"

filesize:
	@find . -type f |grep -v "\.git" |grep -v "db/migrate" |grep -v png$ |grep -v jpg$ |grep -v "javascripts/novnc" |grep -v "highcharts.js" |xargs wc -l

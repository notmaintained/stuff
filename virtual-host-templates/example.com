<VirtualHost 127.0.0.1:80>
	ServerAdmin admin@example.com
	ServerName example.com
	ServerAlias *.example.com
	DocumentRoot /var/www/example.com/www

	<Directory /var/www/example.com/www>
		Options Indexes FollowSymLinks MultiViews
		AllowOverride All
		Order allow,deny
		allow from all
	</Directory>

	ErrorLog /var/www/example.com/logs/error.log

	# Possible values include: debug, info, notice, warn, error, crit, alert, emerg.
	LogLevel warn

	CustomLog /var/www/example.com/logs/access.log combined

</VirtualHost>
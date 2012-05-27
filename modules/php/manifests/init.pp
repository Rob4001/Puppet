class php {
	
	package { [ "php", "php-ldap", "php-feedcreator",  "php-xml", "php-mysql" ]:
        ensure => installed,
    }

	file { "/etc/php.ini":
        owner   => "root",
        group   => "root",
        mode    => 0644,
        source  => "puppet:///modules/php/php.ini",
    }

}
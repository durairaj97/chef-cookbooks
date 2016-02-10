case node["platform"]
when "ubuntu"
	default["pkg_name"] = "apache2"
	default["pkg_service"] = "apache2"
	default["pkg_path"] = "/var/www"
	default["repo_update"] = "apt-get update"
when "redhat"
	default["pkg_name"] = "httpd"
	default["pkg_service"] = "httpd"
	default["pkg_path"] = "var/www/html"
	default["repo_update"] = "yum update"
end

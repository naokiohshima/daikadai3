server 'EC2のIPアドレス', user: 'app@13.115.21.157', roles: %w{app db web}
set :ssh_options, keys: '/home/vagrant/.ssh/id_rsa'

case node['platform']
  when "centos","rhel"
  default['tomdemo']['apache_program_name'] = 'httpd'
  when "ubuntu","debian']
      default['tomdemo']['apache program_name'] = 'apache'
 end

   

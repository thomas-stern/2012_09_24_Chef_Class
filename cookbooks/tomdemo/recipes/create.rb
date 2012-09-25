template "/var/www/index.html" do
 source "index.html.erb"
  variables :name => node['tomdemo']['my_name']
  end


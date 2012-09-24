log "Hello World"

log "The package that would be installed is #{node['tomdemo']['apache_package_name']}"

package node['tomdemo']['apache_package_name']



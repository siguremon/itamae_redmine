include_recipe 'rtn_rbenv::user'

package "sqlite3"
package "libsqlite3-dev"
package "imagemagick libmagickwand-dev"

execute "get redmine package" do 
  command "wget http://www.redmine.org/releases/redmine-3.0.0.tar.gz ;" \
    "tar xzf redmine-3.0.0.tar.gz"
  not_if "test -e redmine-3.0.0.tar.gz"
end




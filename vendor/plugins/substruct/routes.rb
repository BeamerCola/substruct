# default
connect '',
  :controller => 'content_nodes',
  :action     => 'show_by_name',
  :name       => 'home'
connect '/',
  :controller => 'content_nodes',
  :action     => 'show_by_name',
  :name       => 'home'

# Default administration mapping
connect 'admin',
  :controller => 'admin/orders',
  :action     => 'index'

connect '/admin/customers/:action.:format', :controller => 'admin/customers'

connect '/blog',
  :controller => 'content_nodes',
  :action     => 'index'

connect '/blog/section/:section_name',
  :controller => 'content_nodes',
  :action     => 'list_by_section'

# Static route blog content through our content_node controller
connect '/blog/:name',
  :controller => 'content_nodes',
  :action     => 'show_by_name'

connect 'blog/:action.:format',
  :controller => 'content_nodes'

connect '/contact',
  :controller => 'questions',
  :action     => 'ask'

connect '/store/show_by_tags/*tags',
  :controller => 'store',
  :action     => 'show_by_tags'

# Install the default route as the lowest priority.
connect ':controller/:action/:id.:format'
connect ':controller/:action.:format'
connect ':controller/:action/:id'


# For things like /about_us, etc
connect ':name',
  :controller => 'content_nodes',
  :action     => 'show_by_name'
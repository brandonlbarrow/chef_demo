package 'nginx'

service 'nginx' do
  action [:start, :enable]
end

template '/usr/share/nginx/html/index.html' do
  source 'index.html.erb'
  variables(
    title: node['demo']['title'],
    cssLink: node['demo']['css_link'],
    jsLink: node['demo']['scripts_link'],
    imgLink: node['demo']['img_link']
  )
  notifies :restart, 'service[nginx]', :immediately
end

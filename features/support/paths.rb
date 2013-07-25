def path_to(page_name)
  case page_name
  
  when /the homepage/
    root_path
  when /the sign up page/
    signup_path
  when /the login page/
  	login_path
  when /the dasboard page/
  	dashboard_path
  when /the twitter list page/
  	twitter_list_path
  	
  # Add more page name => path mappings here
  
  else
    raise "Can't find mapping from \"#{page_name}\" to a path."
  end
end
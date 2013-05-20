def full_title(page_title)
  base_title = "teamsb"
  page_title.empty? ? base_title : "#{base_title} | #{page_title}"
end

def sign_in(user)
  visit signin_path
  fill_in "Email",      with: user.mail
  fill_in "Password",   with: user.password
  click_button "Sign in"
  cookies[:remember_token] = user.remember_token
end
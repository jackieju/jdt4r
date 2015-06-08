class LoginController < ApplicationController
    def login
       u = User.find_by_sql("select * from users where name='#{params[:username]}' and pwd='#{params[:password]}'")
       p u.inspect
       if u && u.size > 0
           session[:uid] = u[0].id
           # render :text=>"OK"
           redirect_to "/home"
           
       else
           render :text=>"login fail"
       end 
    end
    

end

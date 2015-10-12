class UserAController < ApplicationController
  def index
  end

  def create
  	if params[:login][:userid] == "1222020" && params[:login][:password] == "kobayashi"
  	  user = UserA.new(login_params)
      user.save
      redirect_to :action => "hantei"
  	else
  	  redirect_to :action => "login_failure"
  	end
  end

  def hantei
  end

  def login_comp
    @userAtime = UserA.last.created_at
    @userBtime = UserB.last.created_at
    @timesa = @userAtime - @userBtime
    if @timesa <= 3 && @timesa >= -3
      @onetime = ((0..9).to_a + ("a".."z").to_a + ("A".."Z").to_a).sample(8).join
      UserA.order("created_at desc").limit(1).update_all(:onetime => @onetime)
    else
      redirect_to :action => "login_failure"
    end
  end

  def login_failure
  end
end

private
    def login_params
      params.require(:login).permit(:userid, :password)
    end
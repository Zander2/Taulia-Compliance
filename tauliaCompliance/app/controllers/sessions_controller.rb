class SessionsController < ApplicationController


  def create
    if params[:access_token]
      session[:google_access_token] = params[:access_token]
      redirect_to :controller => 'overview', :action => 'index'
    end
    if params[:code]
      # google_token = "https://www.googleapis.com/oauth2/v4/token"
      # code = "code=#{params[:code]}"
      # client_id = "client_id=19981085236-5i64dcfeve7totu0tsd0ouae01rhulhv.apps.googleusercontent.com"
      # client_secret = "client_secret=iTqRHgqwFrllNGdZb0es2LCT"
      # redirect_uri = "redirect_uri=http://localhost:3000"
      # grant_type = "grant_type=authorization_code"
      # url_token = ""
      # url_token += google_token + "?"
      # url_token += grant_type + "&"
      # url_token += code + "&"
      # url_token += client_id + "&"
      # url_token += client_secret + "&"
      # url_token += redirect_uri
      #
      # redirect_to url_token
      code = params[:code]
      request = Typhoeus::Request.new("https://www.googleapis.com/oauth2/v4/token",
                                      method: :post,
          params: { grant_type: "authorization_code",
                    code: code,
                    redirect_uri: "http://localhost:3000#{auth_google_path}",
                    client_id: "19981085236-5i64dcfeve7totu0tsd0ouae01rhulhv.apps.googleusercontent.com",
                    client_secret: "iTqRHgqwFrllNGdZb0es2LCT"
                  }
      )
      p request
      request.run
      @auth_token = request.response.body
      p "@auth_token"
      p request.response
      p @auth_token
      @auth_token_json = JSON.parse(@auth_token)
      p @auth_token_json
      session[:spotify_access_token] = @auth_token_json["access_token"]
      p session[:spotify_access_token]
      redirect_to :controller => 'overview', :action => 'index'
    else
      google_auth = "https://accounts.google.com/o/oauth2/auth"
      access_type = "access_type=offline"
      scope = "scope=https://www.googleapis.com/auth/gmail.modify"
      reditect = "redirect_uri=http://localhost:3000#{auth_google_path}"
      client_id = "client_id=19981085236-5i64dcfeve7totu0tsd0ouae01rhulhv.apps.googleusercontent.com"
      response_type = "response_type=code"
      url = ""
      url += google_auth + "?"
      url += access_type + "&"
      url += client_id + "&"
      url += response_type + "&"
      url += reditect + "&"
      url += scope
      redirect_to url
    end
  end



  def destroy
    reset_session
    redirect_to '/'
  end

end

class SessionsController < ApplicationController
    def new
      
    end

    def create
        # cherche s'il existe un utilisateur en base avec l’e-mail
        user = User.find_by(email: params[:user_email])
        puts params
        puts user
        #redirect_to welcome_index_path
         #on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
        if user && user.authenticate(params[:user_password])
          session[:user_id] = user.id
           flash[:info] = "Vous etes maintenant connecté" # redirige où tu veux, avec un flash ou pas
           redirect_to welcome_index_path
        else
            session[:user_id] = nil
            flash[:info] = " Echec de la conexxion "
            redirect_to "/sessions/new"
        end
    end
    def destroy
        session.delete(:user_id)
    end
end


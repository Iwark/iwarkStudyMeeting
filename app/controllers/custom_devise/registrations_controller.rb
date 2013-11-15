class CustomDevise::RegistrationsController < Devise::RegistrationsController
	def sign_up_params
    devise_parameter_sanitizer.for(:sign_up){ |u|
    	u.permit(:name, :email, :password, :password_confirmation)
    }
    super
  end
end

# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  # q: where can i find the source of this problem ActionController::RoutingError (uninitialized constant Users::RegistrationsController)?
  # a: https://stackoverflow.com/questions/57693303/rails-6-0-0-api-devise-uninitialized-constant-usersregistrationscontroller
  # q: how can i fix this problem?
  # q: is the source of this problem in this file?
  # a: no, the source of this problem is in the routes file
  # q: what is the source of this problem Zeitwerk::NameError (expected file /Users/romanlavery/coding2/practice-apis/api-backend3/app/controllers/users/registrations_controller.rb to define constant Users::RegistrationsController, but didn't)?
  # a: the source of this problem is in the routes file


  private

  def respond_with(resource, _opts = {})
    if request.method == "POST" && resource.persisted?
      render json: {
        status: {code: 200, message: "Signed up sucessfully.", data: resource}
      }, status: :ok
      elsif request.method == "DELETE"
      render json: {
        status: {code: 200, message: "Account deleted sucessfully."}
      }, status: :ok
    else
      render json: {
        status: {code: 422, message: "User couldn't be created successfully. #{resource.errors.full_messages.to_sentence}"}
      }, status: :unprocessable_entity
    end
  end


  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end

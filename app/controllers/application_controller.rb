
class ApplicationController < ActionController::Base
  before_action :store_current_location, unless: :devise_or_home_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_out_path_for(resource)
    others_path # ログアウト後に遷移するpathを設定
  end

  private
    # ログイン前にクリックした詳細ページのパスを保存する
    def store_current_location
      store_location_for(:user, request.url)
    end

    
    def devise_or_home_controller?
      devise_controller? || others_path
    end
end
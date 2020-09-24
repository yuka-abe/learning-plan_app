class Users::OmniauthCallbackController < Devise::OmniauthCallbackController
  def twitter
    callback_from :twitter
  end

  def google_oauth2
    callback_from :google_oauth2
  end

  def failure
    redirect_to root_path
  end



  private

  def callback_from(provider)
    provider = provider.to_s
    @user = User.find_for_oauth(request.env['omniauth.auth'])

    if @user.persisted?#情報が登録済みなので、新規登録ではなくログイン処理を行う
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      sign_in_and_redirect @user, event: :authentication
    else  #ユーザー情報が未登録なので新規登録画面へ遷移する
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end
module UsersHelper

  def show_avatar(user)
    if user.avatar.attached?
      image_tag(user.avatar, :style => 'border-right: 1px solid #000  ; width:60px; height:50px;  border-radius: 30px 30px;' )
    else
      render partial: 'shared/avatar'
    end
  end

end
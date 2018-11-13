class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :jobs
  def show
    @user = User.find(params[:id])
    redirect_to root_path unless @user == current_user #if you don't care who the user is I recommend to use user_signed_id? method
end
end

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role == "admin"
      can :manage, :all
    elsif user.role == "author"
      can :create, Review
      can :update, Review, :user_id => user.id
      can [:show, :update], User, :id => user.id
    elsif user.role == "owner"
      can :update, Venue
      can [:show, :update], User, :id => user.id
    else
      can [:show, :update], User, :id => user.id
    end
  end
end

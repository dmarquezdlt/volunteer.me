class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    case user
    when Volunteer
      can :read, :all
      can [:create, :update, :destroy], Superpower, :volunteer_id => user.id
      can [:update, :destroy], Volunteer, :id => user.id

    when Organization
      can :manage, :all
    end
  end

end

# class Ability
#   include CanCan::Ability
#   def initialize(user)
#     user ||= User.new # guest user (not logged in)
#     #Volunteer
#    if user == Volunteer
#         can :manage, :all

#    #Organization
#     elsif user == Organization
#       can :manage, :all

#     #Guest
#     else
#         can :read, :all

#     end
#   end
# end









  #   def initialize(user)
  #   user ||= User.new
  #   case user

  #   when Volunteer
  #     can :read, :all
  #     can [:update, :destroy], Superpower, :volunteer_id => user.id
  #     can [:update, :destroy], Volunteer, :id => user.id

  #   when Organization
  #     can :manage, :alltw
  #   end
  # end

    # if user.id ==1
    #   can :manage, :all?
    # else
    #   can :real, Article
    #   cannot :show, Article
    # end


    # class Ability
    #   include CanCan::Ability
    #   def initialize
    #       current_volunteer = volunteer
    #       can [:read, :create], Superpower
    #       can [:update, :destroy], Volunteer, :volunteer_id => volunteer.id
    #    end
    # end


 # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
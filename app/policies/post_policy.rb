class PostPolicy < ApplicationPolicy

  def index?
    user.present? && (user.role?(:user) || user.role?(:admin) || user.role?(:moderator))
  end

  def destroy?
    user.present? && (record.user == user || user.role?(:admin) || user.role?(:moderator))
  end

end


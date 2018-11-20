class ToyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def show?
    return true
  end

  def create?
    # Any authentificated user can create a new toy
    return true
  end

  def update?
    # Only the user that has created the toy can edit it
    record.user == user
  end
end

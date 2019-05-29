class ArtworkPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index
      scope.all.order(:id).first(9)
    end
  end
end

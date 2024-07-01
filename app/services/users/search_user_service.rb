module Users
  class SearchUserService
    attr_reader :type

    def initialize(type)
      @type = type
    end

    def call
      response_user
    end

    private

    def response_user
      if type == 'user'
        users = User.where(role: 0)
      elsif type == 'admin'
        users = User.where(role: 1)
      else
        users = User.all
      end

      users.order(id: 'ASC')
    end
  end
end

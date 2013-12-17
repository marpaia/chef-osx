class Chef
  class Recipe

    def default_user
      user = data_bag_item("default_user", "default")
      data_bag_item("users", user["username"])
    end

    def users
      users_arr = []
      all_users = data_bag("users")
      all_users.each do |user_info|
        users_arr.push(data_bag_item("users", user_info))
      end
      users_arr
    end

  end
end

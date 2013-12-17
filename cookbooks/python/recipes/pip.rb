users.each do |user|
  if user['python']
    if user['python']['modules']
      user['python']['modules'].each do |mod|
        python_pip mod do
          action :install
        end
      end
    end
  end
end

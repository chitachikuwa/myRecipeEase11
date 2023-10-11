class Category < ActiveHash::Base
  self.data = [
    {id: 0, name:"主食"}, {id: 1, name:"副菜"}, {id: 2, name:"一品料理"}, {id: 3, name:"汁物"}
  ]
  include ActiveHash::Associations
  has_many :recipes
end  
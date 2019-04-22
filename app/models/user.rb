class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :shouts, dependent: :destroy
         has_many :events, dependent: :destroy

         validates :name, :username, :genre, :city,  :tel, :presence => { :message => "cant be blank"}
         validates :username, :email, :tel, uniqueness: true, uniqueness: { :message => "must be unique"}
         validates :tel, :length => { :is => 11, :message => "must be 11 digits"}

    def genre=(s)
      super s.titleize
    end

    def city=(s)
      super s.titleize
    end

end

# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string           not null
#  short_url  :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ShortenedUrl < ApplicationRecord
    validates :long_url, presence: true, uniqueness: true

    

    def self.random_code
        random = SecureRandom.urlsafe_base64(22)

        unless ShortenedUrl.exists?(:short_url => random)
            return random
        end
        self.random_code
    end

    def create!(user, long_url)
        # user_id = user.id
        # short_url = self.random_code
        # long_url = long_url          
        #object = return value
        # object.save!
    end

   
end

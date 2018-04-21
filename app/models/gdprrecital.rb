class Gdprrecital < ApplicationRecord

	extend FriendlyId
  friendly_id :recital_num, use: :slugged

end

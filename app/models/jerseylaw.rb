class Jerseylaw < ApplicationRecord

	extend FriendlyId
  friendly_id :article_num, use: :slugged

end

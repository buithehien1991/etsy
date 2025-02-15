module Etsy
  class Section
    include Etsy::Model

    attributes :title, :rank, :user_id, :active_listing_count
    attribute :id, :from => :shop_section_id

    def self.find_by_shop(shop)
      get_all("/shops/#{shop.id}/sections")
    end

    def self.find(shop, id)
      get("/shops/#{shop.id}/sections/#{id}")
    end

    def self.create(shop, options)
      post("/shops/#{shop.id}/sections", options)
    end
  end
end

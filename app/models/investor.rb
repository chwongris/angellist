class Investor < ActiveRecord::Base
  attr_accessible :name, :bio, :investor, :linkedin_url, :location_name, :blog_url, :angel_id


  def self.get_investors

  	(0..900).each do |i|

		results = AngellistApi.get_users((i*50+1..(i+1)*50).to_a)

		results.each do |user|
			investor = Investor.new
			investor.name = user["name"]
			investor.angel_id = user["id"]
			investor.bio = user["bio"]
			investor.linkedin_url = user["linkedin_url"]
			investor.location_name = user["locations"].first["name"]
			investor.blog_url = user["blog_url"]
			investor.investor = user["investor"]
			investor.save
		end

	end

  end



  


end

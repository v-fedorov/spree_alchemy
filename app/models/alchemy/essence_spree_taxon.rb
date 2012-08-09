module Alchemy
	class EssenceSpreeTaxon < ActiveRecord::Base
		
		attr_accessible :spree_taxon_id
		belongs_to :taxon, :class_name => "Spree::Taxon", :foreign_key => :spree_taxon_id, :readonly => true
		acts_as_essence(
			:ingredient_column => :spree_taxon_id,
			:preview_text_method => :name
		)

		def ingredient
			taxon
		end
	end
end
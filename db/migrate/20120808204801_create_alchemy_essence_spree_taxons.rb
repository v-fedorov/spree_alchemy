class CreateAlchemyEssenceSpreeTaxons < ActiveRecord::Migration
	def change
		create_table 'alchemy_essence_spree_taxons' do |t|
			t.integer :spree_taxon_id
		end
		add_index :alchemy_essence_spree_taxons, :spree_taxon_id
	end
end
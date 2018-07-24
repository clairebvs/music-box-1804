# require 'rails_helper'
#
# describe 'An unregistered user' do
#   describe 'visit the song index page' do
#     it 'can click on Add to Cart on the first song and see a flash message Added Song to Cart' do
#       song = Song.create(title: 'Battle Symphony')
#
#       visit songs_path
#
#       click_button 'Add to Cart'
#
#       expect(page).to have_content("Added Song #{song.title} to Cart")
#     end
#   end
# end

=begin
As a unregistered user,
When I visit the song index
I can click on “Add to Cart” on the first song
And I see a flash message “Added Song to Cart”
And I click "View Cart"
And I see a list of all songs I have added to my cart.
=end

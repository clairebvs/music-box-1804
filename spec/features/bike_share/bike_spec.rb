# require 'rails_helper'
#
# describe 'A registered user' do
#   scenario 'visits stations index' do
#     it 'sees all stations with name, dock count, city, installation date' do
#       station_1 = Station.create(name: 'City hall', dock_count: 20, city: 'San Jose', installation_date: 2018-02-21, created_at: 2018-02-21, updated_at: 2018-03-21)
#       station_2 = Station.create(name: 'South Blvd', dock_count: 15, city: 'San Jose', installation_date: 2018-01-11, created_at: 2018-01-11, updated_at: 2018-02-11)
#
#     visit stations_path
#
#     expect(page).to have_content(station_1.name)
#     expect(page).to have_content(station_1.dock_count)
#     expect(page).to have_content(station_1.city)
#     expect(page).to have_content(station_1.installation_date)
#
#     expect(page).to have_content(station_2.name)
#     expect(page).to have_content(station_2.dock_count)
#     expect(page).to have_content(station_2.city)
#     expect(page).to have_content(station_2.installation_date)
#     end
#   end
#
#   scenario 'visits station show' do
#     it 'sees the url with that station name instead of id and sees all attributes for that station' do
#       station_1 = Station.create(name: 'city hall', dock_count: 20, city: 'San Jose', installation_date: 2018-02-21, created_at: 2018-02-21, updated_at: 2018-03-21)
#
#       visits "/city-hall"
#
#       expect(page).to have_content(station_1.name)
#       expect(page).to have_content(station_1.dock_count)
#       expect(page).to have_content(station_1.city)
#       expect(page).to have_content(station_1.installation_date)
#
# =begin
#     In model add this,
#       extend FriendlyId
#       friendly_id :name, use: :slugged
#     use friendly_id gem and add migration for slug
# =end
#     end
#   end
# end
# =begin
# I see the Most ridden bike with total number of rides for that bike,
# =end
#
# describe 'a registered user' do
#   context 'visits the trip dashboard' do
#     it 'sees the most ridden bike with total number of rides for that bike' do
#       user = create(:user)
#       station = create(:station)
#       trip1 = create(:trip, bike_id: 1)
#       trip2 = create(:trip, bike_id: 1)
#       trip3 = create(:trip, bike_id: 2)
#
#       visit trips_dashboard_path
#
#       expect(page).to have_content("Most ridden bike : #{trip1.bike_id}")
#       expect(page).to have_content("Number of rides : 2")
#     end
#
#     it 'sees the least ridden bike with total number of rides for that bike' do
#       user = create(:user)
#       station = create(:station)
#       trip1 = create(:trip, bike_id: 1)
#       trip2 = create(:trip, bike_id: 1)
#       trip3 = create(:trip, bike_id: 2)
#
#       visit trips_dashboard_path
#
#       expect(page).to have_content("Least ridden bike : #{trip3.bike_id}")
#       expect(page).to have_content("Number of rides : 1")
#     end
#     it 'sees the user subscription type breakout with both count and percentage,' do
#       user = create(:user)
#       station = create(:station)
#       trip1 = create(:trip, subscription_type: 'subscriber')
#       trip2 = create(:trip, subscription_type: 'customer')
#       trip3 = create(:trip, subscription_type: 'customer')
#
#       visit trips_dashboard_path
#
#       expect(page).to have_content("Subscriber : 1 - 33% ")
#       expect(page).to have_content("Customer : 2 - 66% ")
#     end
#     it 'sees the single date with the highest number of trips with a count of those trips' do
#       user = create(:user)
#       station = create(:station)
#
#     I see the Single date with the highest number of trips with a count of those trips,
# I see the Single date with the lowest number of trips with a count of those trips.
#   end
# end

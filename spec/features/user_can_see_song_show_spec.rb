require 'rails_helper'

describe 'user sess one song' do
  it 'with title and description' do
    artist = Artist.create(name: 'Journey')
    song_1 = artist.songs.create(title: 'Dont stop believing', length: 34, play_count: 34)
    song_2 = artist.songs.create(title: 'Anyway', length: 43, play_count: 3)

    visit song_path(song_1.slug)

    expect(current_path).to eq("/songs/#{song_1.slug}")

    expect(page).to have_content(song_1.title)
    expect(page).to have_content(song_1.length)
    expect(page).to_not have_content(song_2.title)
    expect(page).to_not have_content(song_2.length)
  end
end

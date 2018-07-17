require 'rails_helper'

describe 'user can create a new song' do
  it 'by filling out a form' do
    artist = Artist.create(name: 'Wild CHerry', created_at: 2018-02-12, updated_at: 2018-02-16)
    song_title = "Play that Funky Music"
    song_length = 267
    song_play_count = 34000

    visit new_artist_song_path(artist)

    # fill_in 'song[title]', with: song_title
    fill_in :song_title, with: song_title
    # fill_in 'song[length]', with: song_length
    fill_in :song_length, with: song_length
    # fill_in 'song[play_count]', with: song_play_count
    fill_in :song_play_count, with: song_play_count

    # select artist.name, from: 'song[artist_id]'
    # select artist.name, from: :song_artist_id

    click_on 'Create Song'

    expect(page).to have_content(song_title)
  end
end

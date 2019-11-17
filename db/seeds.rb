25.times do 
    Artist.create(
      artist_name: Faker::Music.band, 
      avatar: Faker::Avatar.image,
    )
  end

  100.times do
    Album.create!(
      album_name: Faker::Music.album,
      cover: rand(),
      artist_id: rand(1..27)
    )
  end

  500.times do
    Song.create!(
    song_name: Faker::Movies::HitchhikersGuideToTheGalaxy.planet,
    total_listens: rand(1000..100000000000),
    lyrics: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    album_id: rand(1..100),
    )
  end
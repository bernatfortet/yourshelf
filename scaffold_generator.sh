rails g scaffold Users name:string surname:string image_url:string website:string username:string password:string facebookID:integer twitterID:integer googleID:integer has_weekly_mailing:boolean has_features_newsletter:boolean language_id:integer 

rails g scaffold Languages name:string

rails g scaffold Follows follower_id:integer followed_id:integer

rails g scaffold UserBands user_id:integer band_id:integer

rails g scaffold UserAlbums user_id:integer album_id:integer

rails g scaffold AlbumLikes user_id:integer album_id:integer

rails g scaffold SongLikes user_id:integer song_id:integer

rails g scaffold Songs name:string length:integer listened_count:integer

rails g scaffold Albums title:string description:text listened_count:integer purchased_count:integer

rails g scaffold AlbumSongs album_id:integer song_id:integer

rails g scaffold Purchases user_id:integer bundle_id:integer

rails g scaffold AlbumCategories album_id:integer category_id:integer

rails g scaffold AlbumGenre album_id:integer genre_id:integer

rails g scaffold Categories name:string

rails g scaffold Genres name:string

rails g scaffold GenreBands genre_id:integer band_id:integer

rails g scaffold CategoriesBands category_id:integer band_id:integer

rails g scaffold Bands name:string biography:text image_url:string

rails g scaffold AlbumBands album_id:integer band_id:integer

rails g scaffold BundleBands bundle_id:integer band_id:integer

rails g scaffold BundleTypes name:string price:decimal bought_times:integer

rails g scaffold BundleAlbums bundle_id:integer album_band_id:integer

rails g scaffold BundleProducts bundle_type_id:integer physical_product:integer

rails g scaffold PhysicalProducts name:string url:string image_url:string






# Soundcloud2 API Client

Simple Ruby wrapper for the Soundcloud API.  

## Overview

This library contains two types of consumption. First there is the Soundcloud::Client (Simple Client), which offers the four basic methods to search the Soundcloud API via GROUPS, PLAYLISTS, TRACKS, and USERS. Then there are the subclass modules that extend more of the advanced API calls on the main 4 resources that Soundcloud offers. Here is a quick example of the Soundcloud::Client module notation:

    client.users(:q => 'skrillex').first.city
    => "melbourne"
    client.tracks(:q => 'A new world').first.permalink
    => "a-new-world"

## Quick Simple Client Usage

### Instantiate the simple Client
The client should be instantiated with a single api_key that you can obtain from this url: http://soundcloud.com/you/apps/new
Note the client is a quick way to consume and search the soundcloud API. More advanced methods can
be found in the other subclassed modules.

    client = Soundcloud::Client.new('YOUR_SOUNDCLOUD_API_KEY')

### GROUPS
    client.groups(:name => 'Field Recordings')
    client.groups(:description => 'field recordings from across the world')
    client.groups(:q => 'dubstep')

### PLAYLISTS
    client.playlists(:title => 'Summer of 69', :sharing => 'public', :downloadable => 'false')
    client.playlists(:q => 'crunk house')

### TRACKS
    client.tracks(:q => 'A New World', :bpm => 120)
    client.tracks(:id => 1647583)
    client.tracks(:genre => 'dubstep', :downloadable => true)
    client.tracks(:genre => 'dubstep', :order => 'hotness')
    
### USERS
    client.users(:id => 47194613)
    client.users(:city => 'greece', :description => 'badass')
    client.users(:username => 'djzaxx')
    
## More Advanced Modules

### Soundcloud::Users Module
    user = Soundcloud::Users.new('YOUR_SOUNDCLOUD_API_KEY')
    user.user('4201929')
    user.user_tracks('4201929')
    user.user_playlists('4201929')
    user.user_followings('4201929')
    user.user_followings('4201929', '1931470')
    user.user_followers('4201929')
    user.user_followers('4201929', '1931470')
    user.user_comments('4201929')
    user.user_favorites('4201929')
    user.user_favorites('4201929', '1931470')
    user.user_groups('4201929')


## Dependencies
#### Install dependencies using bundler  
    $ bundle
  
#### Run rSpec  
    $ rspec -fp spec/client

## Issues
  The queries on any /user/:id/:resource/:id are not functioning properly when you add a second :id argument to the method calls.

## Changelog

### 0.0.1 - Aug 6th, 2011

* Initial version


## Under the hood
* [`Faraday`](https://github.com/technoweenie/faraday) REST client
* [`Hashie::Mash`](http://github.com/intridea/hashie)  Magic

## How to contribute
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

Copyright (c) 2011 [Alex Manelis](http://twitter.com/amanelis). 

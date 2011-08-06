# Soundcloud2 API Client

Simple Ruby wrapper for the Soundcloud API.  

## Overview

The humble beginnings of a Wantsa API client.   [`Hashie::Mash`](https://github.com/intridea/hashie) objects, providing a handy hash that supports dot notation:

    deal.business.name
    => "Hooters"
    deal.type
    => "Purchase"

## Usage

### Instantiate
The client should be instantiated with a username, password, and location to the SSL certificates directory.

    require 'rad_widget'
    client = Wantsa::Client.new(:username => "9f2c5cb0-abcd-012e-fe5f-12313b12f8a6",
                                :password => "9f12bb30-abcd-012e-fe55-12313b12f8a6",
                                :ca_path => "/System/Library/OpenSSL")

To locate your SSL certificate folder, type openssl version -a. You should see a response similar to  

    OpenSSL 0.9.8o 01 Jun 2010
    built on: Thu Feb 10 01:47:31 UTC 2011
    platform: debian-amd64
    options:  bn(64,64) md2(int) rc4(ptr,char) des(idx,cisc,16,int) blowfish(ptr2) 
    compiler: cc -fPIC -DOPENSSL_PIC -DZLIB -DOPENSSL_THREADS -D_REENTRANT -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -O3 -Wa,--noexecstack -g -Wall -DMD32_REG_T=int -DOPENSSL_BN_ASM_MONT -DSHA1_ASM -DSHA256_ASM -DSHA512_ASM -DMD5_ASM -DAES_ASM
    OPENSSLDIR: "/usr/lib/ssl"


### Get top 50 deals
    client.deals

## Tests

### Running

Install dependencies using bundler  
    $ bundle 

Run rSpec  
    $ rspec -fp spec

## Issues
  Jira.  

<a name="changelog"></a>
## Changelog

### 0.0.1 - May 5, 2011

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

Copyright (c) 2011 [Josh Deeden](http://twitter.com/jdeeden). 

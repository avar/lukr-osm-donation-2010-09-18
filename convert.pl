#!/usr/bin/perl
use 5.012;

s[lat='(.*?)' lon='(.*?)'][
    my ($lat, $lon) = split /,/, qx[js ~/g/gist/gist-585850/isnet93-to-wgs84.js $1 $2];
    chomp $lon;
    "lat='$lat' lon='$lon'"
]eg;

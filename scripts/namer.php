<?php

/*
 * Music needs to be in /Users/username/Music/
 * in format Artist/Album/00 Title.mp3
 *
 * id3lib required
 */

$mp3s = glob('*mp3');

foreach ($mp3s as $mp3) {

    $first_space = strpos($mp3, ' ');

    $track = substr($mp3, 0, $first_space);

    $title = str_replace('.mp3', '', $mp3);
    $title = substr($title, $first_space + 1);
    $title = preg_replace('/[0-9] /', '', $title);

    $cwd = getcwd();
    $cwd_pieces = explode('/', $cwd);

    $album = array_pop($cwd_pieces);
    $artist = array_pop($cwd_pieces);

    print "File: $mp3\n";
    print "Track: $track\n";
    print "Title: $title\n";
    print "Album: $album\n";
    print "Artist: $artist\n";

    print "Current id3tags:\n";
    $output = shell_exec('id3info "' . $mp3 . '"');
    print "$output\n";

    $command = "id3tag -t $track \"$mp3\"";
    $output = shell_exec($command);

    $command = "id3tag -s '$title' \"$mp3\" 2>&1";
    $output = shell_exec($command);

    $command = "id3tag -A '$album' \"$mp3\" 2>&1";
    $output = shell_exec($command);

    $command = "id3tag -a '$artist' \"$mp3\" 2>&1";
    $output = shell_exec($command);

    print "New id3tags:\n";
    $output = shell_exec('id3info "' . $mp3 . '"');
    print "$output\n";
}

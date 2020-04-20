<?php

$output = shell_exec('find ~/Music | grep mp3');
$songs = explode("\n", $output);

$years = [];

foreach ($songs as $song) {
    if (empty($song)) {
        continue;
    }

    $id3info = shell_exec('id3info "' . $song . '"');

    if (strpos($id3info, '=== TYER') !== false) {
        $temp = explode('=== TYER (Year):', $id3info);
        $temp = explode("\n", $temp[1]);
        $year = trim($temp[0]);
    }
    $years[$year][] = $song;
}

foreach ($years as $year => $songs) {
    if (empty($year)) {
        continue;
    }

    $content = "#EXTM3U\n#name=$year\n";
    $content .= implode("\n", $songs);
    $content = str_replace('Users/treddell/Music', 'storage/EEAE-1319/music', $content);

    $file = "/Users/treddell/Music/playlists/" . $year . "_44190.txt";
    shell_exec("touch $file");
    $file_handle = fopen($file, 'w+');
    fwrite($file_handle, $content);
    fclose($file_handle);
}

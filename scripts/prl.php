#! /usr/local/bin/php

<?php
# usage: php prl.php dev-billing
# output: https://github.com/AudiologyHoldings/SP/compare/dev-billing...current-branch?expand=1

$output = [];
$parentBranch = $argv[1];

exec('git config --get remote.origin.url', $output);

$url = explode(':', $output[0]);
$url = str_replace('.git', '', $url[1]);

$branch = exec('git status', $gsOutput);
$branch = str_replace('On branch ', '', $gsOutput[0]);

echo 'https://github.com/' . $url . '/compare/' . $parentBranch . '...' . $branch . '?expand=1' . "\n";

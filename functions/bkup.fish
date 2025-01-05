#!/usr/bin/env fish

function bkup --argument filename --description "fn Copies FILE to FILE.bak"
    cp -iv $filename $filename.bak
end

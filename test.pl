# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 7 };
use Text::Shellwords;
ok(1); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test module is use()ed here so read
# its man page ( perldoc Test ) for help writing this test script.

ok(join(',',shellwords('one two three')),'one,two,three');
ok(join(',',shellwords('one\ two three')),'one two,three');
ok(join(',',shellwords('"one two" three')),'one two,three');
ok(join(',',shellwords(qq(one two\tthree))),'one,two,three');
$_ = 'one two three';
ok(join(',',shellwords),'one,two,three');
ok(join(',',shellwords('one two three',' four five six')),'one,two,three,four,five,six');
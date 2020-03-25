package TestMLBridge;
use base TestML::Bridge;

use UpWords;

sub up_words {
    my ($self, $string) = @_;

    return UpWords->translate($string);
}

1;

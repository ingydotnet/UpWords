package UpWords;

sub translate {
    my ($self, $string) = @_;

    return join ' ', map {
      ucfirst lc $_
    } split /\s+/, $string;
}

1;

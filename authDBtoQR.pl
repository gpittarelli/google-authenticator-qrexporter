#!/usr/bin/env perl

while (<>) {
    chomp;
    my @fields = split /\|/;
    my ($id, $name, $secret) = @fields;

    # otpauth://totp/Example:alice@google.com?secret=JBSWY3DPEHPK3PXP&issuer=Example
    `qrencode -o qr-$id.png otpauth://totp/$name?secret=$secret`;
}

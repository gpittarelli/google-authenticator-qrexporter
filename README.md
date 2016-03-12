# Google Authenticator QR Exporter

Used for quickly moving google authenticator accounts from one phone
to another.

Requires that the phone being exported from is rooted. Exports as
normal QR codes, so the phone being imported to does not need to be
rooted.

Requires `perl`, `adb`, `sqlite3`, and `qrencode` to be installed.

## Usage

    adb pull /data/data/com.google.android.apps.authenticator2/databases/databases
    qlite3 ./databases "select * from accounts" | ./authDBtoQR.pl

After running the above commands, qr codes will be output into the
current directory of the form `qr-{1,2,3,...}.png`. Simply view them
in your favorite image viewer and view them with the google
authenticator app.

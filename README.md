php-libevent
============

Improved libevent PHP extension

See http://docs.php.net/manual/en/book.libevent.php

__Added functions:__

```PHP
/**
 * Reinit base event after fork
 * @param resource $base base event
 **/
event_base_reinit($base);

```

__Install:__

    phpize
    ./configure --with-libevent
    make
    make install
php-libevent
============

Improved libevent PHP extension

See http://docs.php.net/manual/en/book.libevent.php

Added functions:

```PHP
/**
 * Reinit base event after fork
 * @param resource $base base event
 **/
event_base_reinit($base);

```

Install:

  phpize
  ./configure --with-libevent
  make
  make install
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

/**
 * Read data from event buffer
 * @param resource $bevent base event
 * @param int $size size of bytes, if 0 - read all data
 * @return string
 **/
event_buffer_read($bevent, $size = 0);

/**
 * Read line from buffer by EOL
 * @param resource $bevent buffer event
 * @param int $type one of constants BEV_EOL_ANY, BEV_EOL_CRLF, BEV_EOL_CRLF_STRICT, BEV_EOL_LF
 * @return string
 **/
event_buffer_readln($bevent, $eol = BEV_EOL_ANY);

/**
 * Read line from buffer by any string token
 * @param resource $bevent buffer event
 * @param string $token
 * @param int $type one of constants BEV_WITHOUT_TOKEN, BEV_WITH_TOKEN, BEV_TRIM_TOKEN
 * @param string $max_length
 * @return string
 **/
event_buffer_gets($bevent, $token, $flag = BEV_TRIM_TOKEN, $max_length = 0);

/**
 * Return size of bytes in the buffer
 * @param resource $bevent buffer event
 * @param int $type EV_READ or EV_WRITE
 * @return int
 **/
event_buffer_get_length($bevent, $type = EV_READ);

/**
 * Send file
 * @param resource $bevent buffer event
 * @param resource $fd file descriptor
 * @param int $length send specified count bytes if zero - send all file
 * @param int $offset skip bytes
 * @return bool
 **/
event_buffer_sendfile($bevent, $fd, $length = 0, $offset = 0);
```

__Install:__

    phpize
    ./configure --with-libevent
    make
    make install

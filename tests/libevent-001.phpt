--TEST--
Test event_base_new() function with basic functionality
--CREDITS--
Ivan Shalganov <a.cobest@gmail.com>
--SKIPIF--
<?php if (!extension_loaded("libevent")) exit("skip. libevent extension not loaded"); ?>
--FILE--
<?php
  $base = event_base_new();
  var_dump($base);
?>
===DONE===
--EXPECTF--
resource(%d) of type (event base)
===DONE===

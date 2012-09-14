--TEST--
Test event_base_reinit() function with basic functionality
--CREDITS--
Ivan Shalganov <a.cobest@gmail.com>
--SKIPIF--
<?php if (!extension_loaded("libevent")) exit("skip. libevent extension not loaded"); ?>
--FILE--
<?php
  $base = event_base_new();
  var_dump(event_base_reinit($base));
  var_dump($base);
?>
===DONE===
--EXPECTF--
bool(true)
resource(%d) of type (event base)
===DONE===

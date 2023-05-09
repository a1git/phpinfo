<?php
$start_time = microtime(TRUE);
echo "<div align=center><h4>" . gethostname() .  "</h4></div>";
echo "<hr>";
phpinfo(INFO_VARIABLES);

$end_time = microtime(TRUE);
$time_taken =($end_time - $start_time)*1000;
$time_taken = round($time_taken,5);
echo '<div align="center"><hr>Page generated in '.$time_taken.' seconds.</div>';
?>


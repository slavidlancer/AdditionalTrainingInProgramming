<html>
 <head>
  <title>Начална страница</title>
 </head>
 <body>
 <?php
	error_reporting (E_ALL);	//show all errors

	echo "hello\n";
	echo '<p>hello</p><br />';

	$a = TRUE;	//boolean
	$b = "foo";	//string
	$c = 'foo';	//string
	$d = 12;	//integer
	$fr = array ('i1' => 'val1', 'i2' => 'val2');
	$array = array (1, 2, 3, 4, 5);
	$count = count ($array);

	echo $count . "\n";
	print_r ($array);

	foreach ($array as $val)
	{
		$val *= 2;

		echo $val . "\n";
	}

	print_r ($array);

	echo gettype ($a) . "\n";
	echo gettype ($b) . "\n";
	echo gettype ($c) . "\n";
	echo gettype ($d) . "\n";

	echo "array (i1) " . $fr['i1'] . ".\n";
	echo "array (i2) {$fr['i2']}.\n";

	unset ($fr['i1']);	//remove element
	unset ($fr);	//delete array

	$c = $b[strlen ($b) - 1];

	if (is_int ($d))	//is_type()
	{
		$d++;

		echo $d . "\n";
	}

	var_dump ((bool) array (12));	//true
	var_dump ((bool) array());	//false
 ?>
 <form action="form.php" method="post">
  Name: <input type="text" name="username" /><br />
  E-Mail: <input type="text" name="email" /><br />
  <input type="submit" name="submit" value="Click to submit" /><br />
 </form>
 </body>
</html>

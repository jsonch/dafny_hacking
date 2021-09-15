// Simple dafny program with pre conditions. 
method Max(a: int, b:int) returns (c: int)
	// ensure all the cases. 
	ensures a < b  ==> c == b
	ensures a > b ==> c == a
	// ensures a == b ==> c == b
{
	// actual definition begins here
	if (a < b) {
		return b;
	} else {
		return a;
	}
}

method Testing()
{
	var v := Max(3, 5);
	// Assertions use the pre/post-conditions to simplify
	// We don't care at all what happens inside each method
	// when we call it, as long as it satisfies its annotations.
	assert v == 5;

}

method Main() {
	print "Program started. Testing max. \n";
	var x := Max(3, 5);
	assert x == 5;
	var y := Max(4, 4);
	assert y == 4;
	var z := Max(5, 3);
	assert z == 5;
}

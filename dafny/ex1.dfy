method test(x: int, y: int) returns (z: int)
{
    assume(x==y);
    z:=x-y;
    assert(z==0);
}



method CheckEquality(x: int, y: int)
    requires x == y
{
    var z := x - y;
    assert z == 0;
}



method CheckAssignment() {
    var x := 100;
    assert x == 100;
}



method Increment(x: int) returns (newX: int)
    requires 0 <= x < 100
    ensures 0 <= newX <= 100
{
    newX := x + 1;
}



method DemonstrateFailureB() {
    var x := 0;
    x := x - 1;
    assert 0 <= x; // This assertion will fail
}

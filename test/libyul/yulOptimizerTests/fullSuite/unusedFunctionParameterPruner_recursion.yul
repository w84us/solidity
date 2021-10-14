{
    let j, k, l := f(1, 2, 3)
    sstore(0, j)
    sstore(1, k)
    sstore(1, l)
    function f(a, b, c) -> x, y, z
    {
        x, y, z := f(1, 2, 3)
        x := add(x, 1)
    }
}
// ----
// step: fullSuite
//
// {
//     { f() }
//     function f()
//     { f() }
// }

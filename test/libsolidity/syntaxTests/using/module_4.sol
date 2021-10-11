==== Source: A ====
function id(uint x) pure returns (uint) {
    return x;
}

==== Source: B ====
import "A";

contract C {
    // This only attaches the free functions in the current source unit.
    // Therefore, `id` is not accessible.
    using * for uint;
    function f(uint x) public pure returns (uint) {
        return x.id();
    }
}
// ----
// TypeError 9582: (B:227-231): Member "id" not found or not visible after argument-dependent lookup in uint256.

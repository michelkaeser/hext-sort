package hext.sort.tests.algorithms;

/**
 * TestSuite for the hext.sort.algorithms.SortAlgorithm class.
 */
class TestSortAlgorithm extends haxe.unit.TestCase
{
    /**
     * Constructor to initialize a new TestSortAlgorithm.
     */
    public function new():Void
    {
        super();
    }

    /**
     * Ensures the swap() method swaps the two indexes/values.
     */
    public function testSwap():Void
    {
        var arr = [1, 2];
        hext.sort.algorithms.SortAlgorithm.swap(arr, 0, 1);
        assertEquals(2, arr[0]);
        assertEquals(1, arr[1]);
    }
}

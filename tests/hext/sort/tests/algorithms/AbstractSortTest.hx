package hext.sort.tests.algorithms;

import hext.sort.algorithms.TSortAlgorithm;

/**
 * Abstract base class for hext.sort.algorithm implementations.
 */
class AbstractSortTest extends haxe.unit.TestCase
{
    /**
     * Stores the sort algorithm used to search in the Array.
     *
     * @var hext.sort.algorithms.TSortAlgorithm
     */
    private var algorithm:TSortAlgorithm;

    /**
     * Stores the Array that is sorted.
     *
     * @var Array<Int>
     */
    private var arr:Array<Int>;

    /**
     * Stores a correctly sorted version of the input Array.
     *
     * @var Array<Int>
     */
    private var expected:Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9];


    /**
     * Constructor to initialize a new AbstractSortTest.
     *
     * @param hext.sort.algorithms.TSortAlgorithm
     */
    private function new(?algorithm:TSortAlgorithm):Void
    {
        super();
        this.algorithm = algorithm;
    }

    /**
     * @{inherit}
     */
    override public function setup():Void
    {
        this.arr = [7, 2, 9, 3, 4, 1, 8, 5, 6];
    }

    /**
     *@{inherit}
     */
    override public function tearDown():Void
    {
        this.arr = null;
    }


    /**
     * Ensures the sort() method brings the items in the Array in order.
     *
     * Attn: This test assumes the Reflect.compare method is correctly implemented.
     * Make sure it works before checking for errors in the algorithm.
     */
    public function testSort():Void
    {
        this.algorithm.sort(this.arr, Reflect.compare);
        for (i in 0...this.arr.length) {
            assertEquals(this.expected[i], this.arr[i]);
        }
    }
}

package hext.sort.tests;

import hext.sort.SortAlgorithm;
import hext.sort.Sorter;

/**
 * TestSuite for the hext.sort.Sorter class.
 */
class TestSorter extends haxe.unit.TestCase
{
    /**
     * Stores the Sorter used during the tests.
     *
     * @var hext.sort.Sorter
     */
    private var sorter:Sorter<Int>;


    /**
     * @{inherit}
     */
    override public function setup():Void
    {
        this.sorter = new Sorter<Int>(SortAlgorithm.INTRO_SORT, Reflect.compare);
    }

    /**
     * @{inherit}
     */
    override public function tearDown():Void
    {
        this.sorter = null;
    }

    /**
     * Ensures the sort() method doesn't throw any exceptions when passing an empty Array.
     *
     * This should not be done since it is not false to pass an empty Array - the Sorter simply
     * cannot do anything.
     */
    public function testSortWorksWithEmptyArray():Void
    {
        try {
            this.sorter.sort([]);
            assertTrue(true);
        } catch (ex:Dynamic) {
            assertFalse(true);
        }
    }

    /**
     * Ensures the sort() method doesn't throw any exceptions when passing null.
     *
     * This should not be done since it is not false to pass null - the Sorter simply
     * cannot do anything.
     */
    public function testSortWorksWithNull():Void
    {
        try {
            this.sorter.sort(null);
            assertTrue(true);
        } catch (ex:Dynamic) {
            assertFalse(true);
        }
    }
}

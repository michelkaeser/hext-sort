package hext.sort.tests;

#if cpp
    import mcover.coverage.MCoverage;
    import mcover.coverage.CoverageLogger;
#end
import haxe.unit.TestRunner;

/**
 * TestSuite runner for classes in hext.sort package.
 */
class Runner
{
    public static function main():Void
    {
        var r = new TestRunner();

        r.add( new hext.sort.tests.TestSorter() );
        r.add( new hext.sort.tests.algorithms.TestSortAlgorithm() );

        r.add( new hext.sort.tests.algorithms.TestBubbleSort() );
        r.add( new hext.sort.tests.algorithms.TestCocktailSort() );
        r.add( new hext.sort.tests.algorithms.TestCombSort() );
        r.add( new hext.sort.tests.algorithms.TestGnomeSort() );
        r.add( new hext.sort.tests.algorithms.TestHeapSort() );
        r.add( new hext.sort.tests.algorithms.TestInsertionSort() );
        r.add( new hext.sort.tests.algorithms.TestIntroSort() );
        r.add( new hext.sort.tests.algorithms.TestMergeSort() );
        r.add( new hext.sort.tests.algorithms.TestOddEvenSort() );
        r.add( new hext.sort.tests.algorithms.TestQuickSort() );
        r.add( new hext.sort.tests.algorithms.TestSelectionSort() );
        r.add( new hext.sort.tests.algorithms.TestShellSort() );
        r.add( new hext.sort.tests.algorithms.TestStoogeSort() );
        r.add( new hext.sort.tests.algorithms.TestSwapSort() );

        var success:Bool = r.run();
        #if cpp
            MCoverage.getLogger().report();
        #end

        #if sys
            Sys.exit(success ? 0 : 1);
        #end
    }
}

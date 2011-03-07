#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <google/cmockery.h>

// A test case that does nothing and succeeds.
void test_truth(void **state) {
    assert_true(1);
}

int main(int argc, char* argv[]) {
    const UnitTest tests[] = {
        unit_test(test_truth),
    };
    return run_tests(tests);
}

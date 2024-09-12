import sys
import pytest

from simpleexample import basic

def test_salutation():
    assert basic.salutation("World") == "Hello World!"
    pass

if __name__ == "__main__":
    sys.exit(pytest.main())

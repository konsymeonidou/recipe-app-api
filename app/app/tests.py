"""
Sample tests
"""

from django.test import SimpleTestCase
from app import calc


class CalcTests(SimpleTestCase):
    """Test the calc module"""

    def test_add_numbers(self):
        """Test adding numbers together"""
        self.assertEqual(calc.add(5, 6), 11)

    def test_subtract_numbers(self):
        """Test subtracting numbers"""
        self.assertEqual(calc.subtract(10, 15), 5)

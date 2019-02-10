from django.test import TestCase
from app.calc import add
from app.calc import subtract


class CaclTests(TestCase):
    def test_add_numbers(self):
        """Test adding two numbers"""
        self.assertEqual(add(3, 8), 11)

    def test_subtract_number(self):
        """Test subtracting two numbers"""
        self.assertEqual(subtract(5, 11), 6)

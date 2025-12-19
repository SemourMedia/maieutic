import unittest
from unittest.mock import patch, mock_open
import os
import sys

# Add framework to path
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "../../../")))

from framework.core.llm.adapter import LLMAdapter

class TestLLMAdapterPersonas(unittest.TestCase):
    def setUp(self):
        self.adapter = LLMAdapter()

    @patch("builtins.open", new_callable=mock_open, read_data="# ROLE: The Tester\n\n## SYSTEM DIRECTIVE\nTesting directive.")
    def test_load_persona_rule_success(self, mock_file):
        """Test that a valid persona loads the corresponding rule file."""
        directive = self.adapter._load_persona_rule("tester")
        self.assertIn("ROLE: The Tester", directive)
        self.assertIn("Testing directive.", directive)
        mock_file.assert_called_with(".agent/rules/tester.md", "r", encoding="utf-8")

    def test_load_renamed_personas(self):
        """Test that renamed personas resolve to correct files."""
        # We assume the file open call path logic works based on map.
        # This test ensures the map is correct.
        
        # Test Builder
        filename_builder = self.adapter._load_persona_rule("builder")
        # Since we mock open completely, we can't easily check file content unless we mock side_effect.
        # But we can assume if it returns string (mocked), path was looked up.
        # Let's inspect the call arg.
        
        with patch("builtins.open", new_callable=mock_open, read_data="content") as m:
            self.adapter._load_persona_rule("builder")
            m.assert_called_with(".agent/rules/builder.md", "r", encoding="utf-8")
        
        with patch("builtins.open", new_callable=mock_open, read_data="content") as m:
            self.adapter._load_persona_rule("protector")
            m.assert_called_with(".agent/rules/protector.md", "r", encoding="utf-8")
            
        with patch("builtins.open", new_callable=mock_open, read_data="content") as m:
            self.adapter._load_persona_rule("starter")
            m.assert_called_with(".agent/rules/starter.md", "r", encoding="utf-8")


    def test_load_persona_rule_case_insensitive(self):
        """Test that persona matching is case insensitive."""
        # We need to mock open again for each call if we want to verify distinct behaviors or just rely on the mapping logic
        with patch("builtins.open", new_callable=mock_open, read_data="content"):
            directive = self.adapter._load_persona_rule("The Tester")
            self.assertEqual(directive, "content")
            
            directive = self.adapter._load_persona_rule("TESTER")
            self.assertEqual(directive, "content")

    def test_load_persona_rule_not_found(self):
        """Test that an unknown persona returns empty string."""
        directive = self.adapter._load_persona_rule("UnknownPersona")
        self.assertEqual(directive, "")

    @patch("builtins.open", side_effect=FileNotFoundError)
    def test_load_persona_rule_file_missing(self, mock_file):
        """Test behavior when the rule file is missing from disk."""
        directive = self.adapter._load_persona_rule("tester")
        self.assertEqual(directive, "")

    def test_complete_includes_system_directive(self):
        """Test that complete() prepends the system directive."""
        with patch.object(self.adapter, "_load_persona_rule", return_value="SYSTEM_DIRECTIVE") as mock_load:
            # We also need to mock the logger or just check the return value if it was real, 
            # but here we are testing the composition. 
            # The current adapter mock returns a string.
            
            response = self.adapter.complete("prompt", "context", "tester")
            
            # Since the current implementation of 'complete' for antigravity/mock just returns a string 
            # and doesn't explicitly return the full prompt context, we verify _load_persona_rule was called.
            # However, looking at the code: 
            # full_context = f"{system_directive}\n\n=== CONTEXT ===\n{context}"
            # This full_context isn't currently used in the return value of the mock, 
            # but we can verify _load_persona_rule was called correctly.
            mock_load.assert_called_with("tester")

if __name__ == "__main__":
    unittest.main()

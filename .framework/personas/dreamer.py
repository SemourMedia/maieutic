# framework/personas/dreamer.py
import sys
import os
import json

# Correct path to import core
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '../../')))

from framework.core.llm.adapter import LLMAdapter

class Dreamer:
    def __init__(self):
        self.llm = LLMAdapter(provider="antigravity")
        self.manifest = {}

    def interview(self):
        print("[THE DREAMER]: Welcome to the Genesis Engine.")
        print("I am here to understand your vision. What shall we build today?")
        
        # In a real interactive loop, we would read input.
        # user_input = input(">> ")
        
        # For the autonomous "Hello World" test, we simulate the interaction.
        print(">> [User] I want to build a Hello World app.")
        
        context = "User wants to build a Hello World app."
        prompt = "Extract project details: project_name, intent, stack, risk_level."
        
        response = self.llm.complete(prompt, context, persona="Dreamer")
        
        try:
            self.manifest = json.loads(response)
            print(f"[THE DREAMER]: I have drafted a manifest: {self.manifest}")
            
            # Write the draft manifest
            self.save_draft()
            
        except json.JSONDecodeError:
            print("[THE DREAMER]: Failed to parse LLM response.")

    def save_draft(self):
        # We save this to a temporary location or the projects root
        project_name = self.manifest.get("project_name", "untitled")
        
        with open("draft_manifest.json", "w") as f:
            json.dump(self.manifest, f, indent=2)
        print(f"[THE DREAMER]: Draft saved to draft_manifest.json")

if __name__ == "__main__":
    dreamer = Dreamer()
    dreamer.interview()

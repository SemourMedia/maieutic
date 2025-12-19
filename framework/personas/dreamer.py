"""
The Dreamer Persona
Responsible for requirements gathering and initial project scoping via interview.
"""
import json
import os
import sys

# Ensure framework is in path
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "../../..")))

from framework.core.llm.adapter import LLMAdapter

class Dreamer:
    """
    The Interviewer Agent.
    """
    def __init__(self):
        self.llm = LLMAdapter()
        
    def start_interview(self):
        """
        Initiate the CLI interview loop.
        """
        print("🎭 THE DREAMER: Hello. What shall we build today?")
        intent = input(">> ")
        
        print("🎭 THE DREAMER: Interesting. Generating manifest...")
        
        # Mock Logic for now (Step 2 of Plan 003)
        draft_manifest = {
            "project_name": "generated_project",
            "intent": intent,
            "stack": ["python"],
            "risk_level": "unknown"
        }
        
        # Save to projects/generated_project/manifest.json (Mocking path)
        print(f"Draft Manifest: {json.dumps(draft_manifest, indent=2)}")
        return draft_manifest

if __name__ == "__main__":
    dreamer = Dreamer()
    dreamer.start_interview()

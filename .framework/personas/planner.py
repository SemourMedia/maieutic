# framework/personas/planner.py
import json

class Planner:
    def analyze(self, manifest_path):
        print("[THE PLANNER]: Analyzing request for safety.")
        with open(manifest_path, "r") as f:
            manifest = json.load(f)
            
        risk = manifest.get("risk_level", "high")
        
        if risk == "low":
            print("[THE PLANNER]: Risk Level: LOW. Approved for automation.")
            return True
        else:
            print("[THE PLANNER]: Risk Level: HIGH. Pausing for human verification.")
            return False

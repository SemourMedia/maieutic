# framework/run/genesis.py
import sys
import os

# Add framework to path
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '../..')))

from framework.personas.dreamer import Dreamer
from framework.personas.planner import Planner
from framework.personas.architect import Architect
from framework.personas.executor import Executor

def main():
    print("::: GENESIS ENGINE INITIALIZED :::")
    
    # Phase 1: Dream
    dreamer = Dreamer()
    dreamer.interview()
    
    manifest_path = "draft_manifest.json"
    if not os.path.exists(manifest_path):
        print("[!] NO MANIFEST GENERATED. ABORTING.")
        return

    # Phase 2: Plan
    planner = Planner()
    if not planner.analyze(manifest_path):
        return

    # Phase 3: Architect
    architect = Architect()
    project_dir = architect.blueprint(manifest_path)

    # Phase 4: Execute
    executor = Executor()
    executor.build(project_dir)
    
    print("::: GENESIS CYCLE COMPLETE :::")

if __name__ == "__main__":
    main()

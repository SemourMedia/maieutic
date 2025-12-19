# framework/personas/executor.py
import os

class Executor:
    def build(self, project_dir):
        print("[THE EXECUTOR]: Starting construction.")
        
        src_dir = os.path.join(project_dir, "src")
        main_file = os.path.join(src_dir, "main.py")
        
        code = """
def main():
    print('Hello World from the Genesis Engine!')

if __name__ == '__main__':
    main()
"""
        with open(main_file, "w") as f:
            f.write(code)
            
        print(f"[THE EXECUTOR]: Built {main_file}")
        print("[THE EXECUTOR]: Build Complete.")
